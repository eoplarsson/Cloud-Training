% Open project
project = openProject(pwd);

% Build archive
mpsResults = compiler.build.productionServerArchive("Code/quadraticSolver.m","ArchiveName","myarchive","Verbose","on");

% Create Microservice
compiler.package.microserviceDockerImage(mpsResults,"ImageName","my-microservice");

% Close project
close(project)