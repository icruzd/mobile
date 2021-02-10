class MyAppDefaultTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Center(
        child: Text(
          "Simple Text",
          textDirection: TextDirection.ltr,
        ),
      ),
    );
  }
}

class MyAppCustomTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(
        child: Theme(
          data: Theme.of(context).copyWith(
            textTheme: Theme.of(context).textTheme.copyWith(
                  display1: TextStyle(
                    color: Colors.yellow,
                  ),
                ),
          ),
          child: Text(
            "Simple Text",
            textDirection: TextDirection.ltr,
            style: Theme.of(context).textTheme.display1,
          ),
        ),
      ),
    );
  }
}
