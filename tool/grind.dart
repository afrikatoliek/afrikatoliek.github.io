import 'package:grinder/grinder.dart';

void main([List<String> args]) {
  task('build', Pub.build);
  task('init', init);
  task('compile', compile, ['init']);
  task('deploy', deploy, ['compile']);
  task('docs', deploy, ['init']);
  task('all', null, ['deploy', 'docs']);

  startGrinder(args);
}

init(GrinderContext context) {
  context.log("init setup");
}

compile(GrinderContext context) {
  context.log("compile setup");
}

deploy(GrinderContext context) {
  context.log("deploy setup");
}
