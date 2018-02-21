# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Activity.destroy_all
#Activity.connection.execute('ALTER SEQUENCE activities_id_seq RESTART WITH 1')
#ActivityIntensity.connection.execute('ALTER SEQUENCE activity_intensities_id_seq RESTART WITH 1')

activities = Activity.create([
                                 { name: 'Running' },
                                 { name: 'Walking' },
                                 { name: 'Cycling' },
                                 { name: 'Swimming' },
                                 { name: 'Elliptical' },
                                 { name: 'Handball' },
                                 { name: 'Rowing' },
                                 { name: 'Football' },
                                 { name: 'Soccer' },
                                 { name: 'Golf' },
                                 { name: 'Bowling' },
                                 { name: 'Yoga' }
                             ])
ActivityIntensity.create(title: '4mph avg', met: 6.0, activity_id: 1)
ActivityIntensity.create(title: '6mph avg', met: 9.8, activity_id: 1)
ActivityIntensity.create(title: '8mph avg', met: 11.8, activity_id: 1)
ActivityIntensity.create(title: '10mph avg', met: 14.5, activity_id: 1)
ActivityIntensity.create(title: '12mph avg', met: 19.0, activity_id: 1)
ActivityIntensity.create(title: '14mph avg', met: 23.0, activity_id: 1)

ActivityIntensity.create(title: '2.5mph avg', met: 3.0, activity_id: 2)
ActivityIntensity.create(title: '3.5mph avg', met: 4.3, activity_id: 2)
ActivityIntensity.create(title: '4mph avg', met: 5.0, activity_id: 2)
ActivityIntensity.create(title: '4.5mph avg', met: 7.0, activity_id: 2)
ActivityIntensity.create(title: '5mph avg', met: 8.3, activity_id: 2)

ActivityIntensity.create(title: '5.5mph avg', met: 3.5, activity_id: 3)
ActivityIntensity.create(title: '9mph avg', met: 5.8, activity_id: 3)
ActivityIntensity.create(title: '11mph avg', met: 6.8, activity_id: 3)
ActivityIntensity.create(title: '13mph avg', met: 8.0, activity_id: 3)
ActivityIntensity.create(title: '15mph avg', met: 10.0, activity_id: 3)
ActivityIntensity.create(title: '17.5mph avg', met: 12.0, activity_id: 3)
ActivityIntensity.create(title: '20mph avg', met: 15.8, activity_id: 3)

ActivityIntensity.create(title: 'Backstroke recreational', met: 4.8, activity_id: 4)
ActivityIntensity.create(title: 'Backstroke training', met: 9.5, activity_id: 4)
ActivityIntensity.create(title: 'Breaststroke recreational', met: 5.3, activity_id: 4)
ActivityIntensity.create(title: 'Breaststroke training', met: 10.3, activity_id: 4)
ActivityIntensity.create(title: 'Butterfly', met: 13.8, activity_id: 4)
ActivityIntensity.create(title: 'Crawl medium 50y/m avg', met: 8.3, activity_id: 4)
ActivityIntensity.create(title: 'Crawl fast 75y/m avg', met: 10.0, activity_id: 4)
ActivityIntensity.create(title: 'Sidestroke', met: 7.0, activity_id: 4)

ActivityIntensity.create(title: 'Moderate', met: 5.0, activity_id: 5)

ActivityIntensity.create(title: 'General', met: 12.0, activity_id: 6)

ActivityIntensity.create(title: 'Ergometer <100w', met: 4.8, activity_id: 7)
ActivityIntensity.create(title: 'Ergometer moderate 100w', met: 7.0, activity_id: 7)
ActivityIntensity.create(title: 'Ergometer vigorous 150w', met: 8.5, activity_id: 7)
ActivityIntensity.create(title: 'Ergometer very vigorous 200w', met: 12.0, activity_id: 7)

ActivityIntensity.create(title: 'Casual', met: 4.0, activity_id: 8)
ActivityIntensity.create(title: 'Competitive', met: 8.0, activity_id: 8)

ActivityIntensity.create(title: 'Casual', met: 7.0, activity_id: 9)
ActivityIntensity.create(title: 'Competitive', met: 10.0, activity_id: 9)

ActivityIntensity.create(title: 'General', met: 4.8, activity_id: 10)

ActivityIntensity.create(title: 'General', met: 4.0, activity_id: 11)

ActivityIntensity.create(title: 'Nadisodhana', met: 2.0, activity_id: 12)
ActivityIntensity.create(title: 'Hatha', met: 2.5, activity_id: 12)
ActivityIntensity.create(title: 'Surya Namaskar', met: 3.3, activity_id: 12)
ActivityIntensity.create(title: 'Power', met: 4.0, activity_id: 12)