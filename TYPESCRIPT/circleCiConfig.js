import CircleCI from '@circleci/circleci-config-sdk';

const tsConfig = new CircleCI.Config();

const tsWorkflow = new CircleCI.Workflow('TSWorkflow');
tsConfig.addWorkflow(tsWorkflow);

const nodeExecutor = new CircleCI.executors.DockerExecutor('cimg/node:lts');

const nodeTestJob = new CircleCI.Job('node-test', nodeExecutor);
tsConfig.addJob(nodeTestJob);

nodeTestJob
    .addStep(new CircleCI.commands.Checkout())
    .addStep(
        new CircleCI.commands.Run({
            command: 'cd TYPESCRIPT',
            name: 'Checkout to TYPESCRIPT directory'
        })
    )
    .addStep(
        new CircleCI.commands.Run({
            command: 'npm install',
            name: 'NPM Install',
        }),
    )
    .addStep(
        new CircleCI.commands.Run({
            command: 'npm run test',
            name: 'Run tests',
        }),
    );

tsWorkflow.addJob(nodeTestJob);

const MyYamlConfig = tsConfig.stringify();

// Save the config to a file in Node.js or the browser. Note, use in the browser requires user interaction.
tsConfig.writeFile('config.yml');