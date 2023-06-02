class Job {
  final String company;
  final String logoUrl;
  bool isMark;
  final String title;
  final String location;
  final String time;
  final List<String> req;
  Job(this.company, this.logoUrl, this.isMark, this.title, this.location,
      this.time, this.req);
  static List<Job> generateJobs() {
    return [
      Job(
        'Google LLC',
        'assets/images/photo1.jpg',
        false,
        'Principal Product Design',
        '417 Marion , New York\nUnited States',
        'Full Time',
        [
          'Bachelors degree in industrial design, manufacturing, engineering, or a related field.',
          'A creative eye, good imagination, and vision.',
          'A firm grasp of market trends and consumer preferences.',
          'Practical experience using computer-aided design software.',
          'Good technical and IT skills.'
        ],
      ),
      Job(
        'Airbnb Inc',
        'assets/images/photo1.jpg',
        false,
        'Principal Product Design',
        '417 Marion , New York\nUnited States',
        'Full Time',
        [
          'Bachelors degree in industrial design, manufacturing, engineering, or a related field',
          'A creative eye, good imagination, and vision',
          'A firm grasp of market trends and consumer preferences',
          'Practical experience using computer-aided design software',
          'Good technical and IT skills'
        ],
      ),
      Job(
        'Linkedin',
        'assets/images/photo1.jpg',
        false,
        'Principal Product Design',
        '417 Marion , New York\nUnited States',
        'Full Time',
        [
          'Bachelors degree in industrial design, manufacturing, engineering, or a related field',
          'A creative eye, good imagination, and vision',
          'A firm grasp of market trends and consumer preferences',
          'Practical experience using computer-aided design software',
          'Good technical and IT skills'
        ],
      ),
    ];
  }
}