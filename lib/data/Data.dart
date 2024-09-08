
import 'package:facebook_responsive_user_interface/models/post_model.dart';
import 'package:facebook_responsive_user_interface/models/user_model.dart';

import '../models/story_model.dart';

final User currentUser = User(userName: 'Shams', userProfileImageUrl: "https://images.pexels.com/photos/1516680/pexels-photo-1516680.jpeg?auto=compress&cs=tinysrgb&w=600");

final List<User> onLineUsers = [
  User(userName: "Ali", userProfileImageUrl: "https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&w=600"),
  User(userName: "Ahmed", userProfileImageUrl: "https://images.pexels.com/photos/1043474/pexels-photo-1043474.jpeg?auto=compress&cs=tinysrgb&w=600"),
  User(userName: "David", userProfileImageUrl: "https://images.pexels.com/photos/1300402/pexels-photo-1300402.jpeg?auto=compress&cs=tinysrgb&w=600"),
  User(userName: "Hamza", userProfileImageUrl: "https://images.pexels.com/photos/874158/pexels-photo-874158.jpeg?auto=compress&cs=tinysrgb&w=600"),
  User(userName: "Gul", userProfileImageUrl: "https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg?auto=compress&cs=tinysrgb&w=600"),
  User(userName: "Mark", userProfileImageUrl: "https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&w=600"),
  User(userName: "Hina", userProfileImageUrl: "https://images.pexels.com/photos/1758144/pexels-photo-1758144.jpeg?auto=compress&cs=tinysrgb&w=600"),
  User(userName: "Noor", userProfileImageUrl: "https://images.pexels.com/photos/1121796/pexels-photo-1121796.jpeg?auto=compress&cs=tinysrgb&w=600"),
  User(userName: "Khalid", userProfileImageUrl: "https://images.pexels.com/photos/103123/pexels-photo-103123.jpeg?auto=compress&cs=tinysrgb&w=600"),
  User(userName: "Wazir", userProfileImageUrl: "https://images.pexels.com/photos/1172207/pexels-photo-1172207.jpeg?auto=compress&cs=tinysrgb&w=600"),
  User(userName: "Anomal", userProfileImageUrl: "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=600"),
  User(userName: "Kamran", userProfileImageUrl: "https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg?auto=compress&cs=tinysrgb&w=600"),
  User(userName: "Waqas", userProfileImageUrl: "https://images.pexels.com/photos/839011/pexels-photo-839011.jpeg?auto=compress&cs=tinysrgb&w=600"),
  User(userName: "Shoaib", userProfileImageUrl: "https://images.pexels.com/photos/775358/pexels-photo-775358.jpeg?auto=compress&cs=tinysrgb&w=600"),
  User(userName: "Kamal", userProfileImageUrl: "https://images.pexels.com/photos/845434/pexels-photo-845434.jpeg?auto=compress&cs=tinysrgb&w=600"),
  User(userName: "Talha", userProfileImageUrl: "https://images.pexels.com/photos/2182970/pexels-photo-2182970.jpeg?auto=compress&cs=tinysrgb&w=600"),
  User(userName: "Zaid", userProfileImageUrl: "https://images.pexels.com/photos/868113/pexels-photo-868113.jpeg?auto=compress&cs=tinysrgb&w=600"),
  User(userName: "Faheem", userProfileImageUrl: "https://images.pexels.com/photos/1270076/pexels-photo-1270076.jpeg?auto=compress&cs=tinysrgb&w=600"),
  User(userName: "Asif", userProfileImageUrl: "https://images.pexels.com/photos/1680172/pexels-photo-1680172.jpeg?auto=compress&cs=tinysrgb&w=600"),
  User(userName: "Ramzan", userProfileImageUrl: "https://images.pexels.com/photos/1181391/pexels-photo-1181391.jpeg?auto=compress&cs=tinysrgb&w=600"),
  User(userName: "Javed", userProfileImageUrl: "https://images.pexels.com/photos/1182825/pexels-photo-1182825.jpeg?auto=compress&cs=tinysrgb&w=600"),
  User(userName: "Jawad", userProfileImageUrl: "https://images.pexels.com/photos/1043473/pexels-photo-1043473.jpeg?auto=compress&cs=tinysrgb&w=600"),
  User(userName: "Eman", userProfileImageUrl: "https://images.pexels.com/photos/712513/pexels-photo-712513.jpeg?auto=compress&cs=tinysrgb&w=600"),
  User(userName: "Queen", userProfileImageUrl: "https://images.pexels.com/photos/1065084/pexels-photo-1065084.jpeg?auto=compress&cs=tinysrgb&w=600"),
  User(userName: "Zahid", userProfileImageUrl: "https://images.pexels.com/photos/1183266/pexels-photo-1183266.jpeg?auto=compress&cs=tinysrgb&w=600"),
  User(userName: "Qadir", userProfileImageUrl: "https://images.pexels.com/photos/843563/pexels-photo-843563.jpeg?auto=compress&cs=tinysrgb&w=600"),
  User(userName: "Faiza", userProfileImageUrl: "https://images.pexels.com/photos/458766/pexels-photo-458766.jpeg?auto=compress&cs=tinysrgb&w=600"),
  User(userName: "Rabia", userProfileImageUrl: "https://images.pexels.com/photos/1755385/pexels-photo-1755385.jpeg?auto=compress&cs=tinysrgb&w=600"),
  User(userName: "Fida", userProfileImageUrl: "https://images.pexels.com/photos/247322/pexels-photo-247322.jpeg?auto=compress&cs=tinysrgb&w=600"),
];

final List<Story> stories = [
  Story(user: onLineUsers[1], userProfileImageUrl: "https://images.pexels.com/photos/3225517/pexels-photo-3225517.jpeg?auto=compress&cs=tinysrgb&w=600"),
  Story(user: onLineUsers[2], userProfileImageUrl: "https://images.pexels.com/photos/1547813/pexels-photo-1547813.jpeg?auto=compress&cs=tinysrgb&w=600"),
  Story(user: onLineUsers[3], userProfileImageUrl: "https://images.pexels.com/photos/15286/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=600"),
  Story(user: onLineUsers[4], userProfileImageUrl: "https://images.pexels.com/photos/1366909/pexels-photo-1366909.jpeg?auto=compress&cs=tinysrgb&w=600"),
  Story(user: onLineUsers[5], userProfileImageUrl: "https://images.pexels.com/photos/707344/pexels-photo-707344.jpeg?auto=compress&cs=tinysrgb&w=600"),
  Story(user: onLineUsers[6], userProfileImageUrl: "https://images.pexels.com/photos/1820563/pexels-photo-1820563.jpeg?auto=compress&cs=tinysrgb&w=600"),
  Story(user: onLineUsers[7], userProfileImageUrl: "https://images.pexels.com/photos/3408744/pexels-photo-3408744.jpeg?auto=compress&cs=tinysrgb&w=600"),
  Story(user: onLineUsers[8], userProfileImageUrl: "https://images.pexels.com/photos/234272/pexels-photo-234272.jpeg?auto=compress&cs=tinysrgb&w=600"),
  Story(user: onLineUsers[9], userProfileImageUrl: "https://images.pexels.com/photos/2189696/pexels-photo-2189696.jpeg?auto=compress&cs=tinysrgb&w=600"),
  Story(user: onLineUsers[10], userProfileImageUrl: "https://images.pexels.com/photos/2086622/pexels-photo-2086622.jpeg?auto=compress&cs=tinysrgb&w=600"),
  Story(user: onLineUsers[11], userProfileImageUrl: "https://images.pexels.com/photos/772803/pexels-photo-772803.jpeg?auto=compress&cs=tinysrgb&w=600"),
  Story(user: onLineUsers[12], userProfileImageUrl: "https://images.pexels.com/photos/1028225/pexels-photo-1028225.jpeg?auto=compress&cs=tinysrgb&w=600"),
  Story(user: onLineUsers[13], userProfileImageUrl: "https://images.pexels.com/photos/1770809/pexels-photo-1770809.jpeg?auto=compress&cs=tinysrgb&w=600"),
  Story(user: onLineUsers[14], userProfileImageUrl: "https://images.pexels.com/photos/1624504/pexels-photo-1624504.jpeg?auto=compress&cs=tinysrgb&w=600"),
  Story(user: onLineUsers[15], userProfileImageUrl: "https://images.pexels.com/photos/534164/pexels-photo-534164.jpeg?auto=compress&cs=tinysrgb&w=600"),
  Story(user: onLineUsers[16], userProfileImageUrl: "https://images.pexels.com/photos/1761279/pexels-photo-1761279.jpeg?auto=compress&cs=tinysrgb&w=600"),
  Story(user: onLineUsers[17], userProfileImageUrl: "https://images.pexels.com/photos/316398/pexels-photo-316398.jpeg?auto=compress&cs=tinysrgb&w=600"),
  Story(user: onLineUsers[18], userProfileImageUrl: "https://images.pexels.com/photos/2105416/pexels-photo-2105416.jpeg?auto=compress&cs=tinysrgb&w=600"),
  Story(user: onLineUsers[19], userProfileImageUrl: "https://images.pexels.com/photos/1161375/pexels-photo-1161375.jpeg?auto=compress&cs=tinysrgb&w=600"),
  Story(user: onLineUsers[20], userProfileImageUrl: "https://images.pexels.com/photos/2104152/pexels-photo-2104152.jpeg?auto=compress&cs=tinysrgb&w=600"),
  Story(user: onLineUsers[14], userProfileImageUrl: "https://images.pexels.com/photos/629162/pexels-photo-629162.jpeg?auto=compress&cs=tinysrgb&w=600"),
  Story(user: onLineUsers[15], userProfileImageUrl: "https://images.pexels.com/photos/573863/pexels-photo-573863.jpeg?auto=compress&cs=tinysrgb&w=600"),
  Story(user: onLineUsers[16], userProfileImageUrl: "https://images.pexels.com/photos/2088172/pexels-photo-2088172.jpeg?auto=compress&cs=tinysrgb&w=600"),
  Story(user: onLineUsers[17], userProfileImageUrl: "https://images.pexels.com/photos/592284/pexels-photo-592284.jpeg?auto=compress&cs=tinysrgb&w=600"),
  Story(user: onLineUsers[18], userProfileImageUrl: "https://images.pexels.com/photos/1424239/pexels-photo-1424239.jpeg?auto=compress&cs=tinysrgb&w=600"),
  Story(user: onLineUsers[19], userProfileImageUrl: "https://images.pexels.com/photos/572897/pexels-photo-572897.jpeg?auto=compress&cs=tinysrgb&w=600"),
  Story(user: onLineUsers[20], userProfileImageUrl: "https://images.pexels.com/photos/228095/pexels-photo-228095.jpeg?auto=compress&cs=tinysrgb&w=600"),
  Story(user: onLineUsers[14], userProfileImageUrl: "https://images.pexels.com/photos/697313/pexels-photo-697313.jpeg?auto=compress&cs=tinysrgb&w=600"),
  Story(user: onLineUsers[15], userProfileImageUrl: "https://images.pexels.com/photos/2088202/pexels-photo-2088202.jpeg?auto=compress&cs=tinysrgb&w=600"),
  Story(user: onLineUsers[16], userProfileImageUrl: "https://images.pexels.com/photos/1062249/pexels-photo-1062249.jpeg?auto=compress&cs=tinysrgb&w=600"),
  Story(user: onLineUsers[18], userProfileImageUrl: "https://images.pexels.com/photos/2092828/pexels-photo-2092828.jpeg?auto=compress&cs=tinysrgb&w=600"),
  Story(user: onLineUsers[19], userProfileImageUrl: "https://images.pexels.com/photos/2888333/pexels-photo-2888333.jpeg?auto=compress&cs=tinysrgb&w=600"),
  Story(user: onLineUsers[20], userProfileImageUrl: "https://images.pexels.com/photos/1336924/pexels-photo-1336924.jpeg?auto=compress&cs=tinysrgb&w=600"),
  Story(user: onLineUsers[17], userProfileImageUrl: "https://images.pexels.com/photos/459038/pexels-photo-459038.jpeg?auto=compress&cs=tinysrgb&w=600"),
  Story(user: onLineUsers[18], userProfileImageUrl: "https://images.pexels.com/photos/1587699/pexels-photo-1587699.jpeg?auto=compress&cs=tinysrgb&w=600"),
  Story(user: onLineUsers[19], userProfileImageUrl: "https://images.pexels.com/photos/1287083/pexels-photo-1287083.jpeg?auto=compress&cs=tinysrgb&w=600"),
  Story(user: onLineUsers[20], userProfileImageUrl: "https://images.pexels.com/photos/2832026/pexels-photo-2832026.jpeg?auto=compress&cs=tinysrgb&w=600"),
  Story(user: onLineUsers[17], userProfileImageUrl: "https://images.pexels.com/photos/691031/pexels-photo-691031.jpeg?auto=compress&cs=tinysrgb&w=600"),
  Story(user: onLineUsers[18], userProfileImageUrl: "https://images.pexels.com/photos/1450078/pexels-photo-1450078.jpeg?auto=compress&cs=tinysrgb&w=600"),
  Story(user: onLineUsers[19], userProfileImageUrl: "https://images.pexels.com/photos/2918152/pexels-photo-2918152.jpeg?auto=compress&cs=tinysrgb&w=600"),
  Story(user: onLineUsers[20], userProfileImageUrl: "https://images.pexels.com/photos/2088019/pexels-photo-2088019.jpeg?auto=compress&cs=tinysrgb&w=600"),
  Story(user: onLineUsers[17], userProfileImageUrl: "https://images.pexels.com/photos/629159/pexels-photo-629159.jpeg?auto=compress&cs=tinysrgb&w=600"),
];

final List<Post> posts = [
  Post(
      user: currentUser,
      caption: "Nice",
      timeAgo: '3days',
      like: 240,
      comments: 30,
      share: 13,
      userProfileImageUrl: "https://images.pexels.com/photos/3225517/pexels-photo-3225517.jpeg?auto=compress&cs=tinysrgb&w=600"
  ),

  Post(
      user: onLineUsers[1],
      caption: "Please enjoy this placeholder text: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      timeAgo: '45min',
      like: 24,
      comments: 18,
      share: 21,
      userProfileImageUrl: "https://images.pexels.com/photos/1547813/pexels-photo-1547813.jpeg?auto=compress&cs=tinysrgb&w=600"
  ),

  Post(
      user: onLineUsers[2],
      caption: "Check out these cool puppers. Lacus purus mi; senectus mollis placerat lacinia cursus molestie. Ut volutpat interdum odio nisl volutpat aliquam. Mattis etiam vitae magna nisi adipiscing montes mauris. Pulvinar urna praesent pretium sollicitudin maximus sagittis senectus? Nullam pellentesque faucibus malesuada sociosqu, sodales phasellus dignissim. Porttitor ut consequat luctus fusce semper urna semper. In class egestas duis tellus hac etiam sit habitant pulvinar. Eros ex rhoncus nascetur proin pellentesque quam imperdiet.",
      timeAgo: '19hr',
      like: 840,
      comments: 310,
      share: 513,
      userProfileImageUrl: "https://images.pexels.com/photos/15286/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=600"
  ),

  Post(
      user: onLineUsers[3],
      caption: "Ultricies convallis penatibus orci ex litora rutrum et congue euismod. Ut hendrerit mollis consectetur lacus feugiat lectus habitant ultrices. Dolor condimentum cursus euismod sodales penatibus. Ullamcorper scelerisque commodo parturient lectus purus. Ligula congue erat euismod libero pharetra dictum ex imperdiet nunc. Ridiculus ad nam tincidunt placerat posuere habitant. Id ligula primis turpis neque aptent rutrum nisl maximus egestas.",
      timeAgo: '2sec',
      like: 3240,
      comments: 330,
      share: 1313,
      userProfileImageUrl: "https://images.pexels.com/photos/1366909/pexels-photo-1366909.jpeg?auto=compress&cs=tinysrgb&w=600"
  ),

  Post(
      user: onLineUsers[4],
      caption: "Augue cursus ut nascetur semper magnis at ante. Quisque congue risus molestie varius finibus pretium nisi donec. Adipiscing torquent id; velit dignissim purus id semper. Maecenas diam et efficitur cursus convallis. Venenatis interdum hendrerit ultrices turpis taciti netus interdum. Non lobortis condimentum cras nam eu adipiscing convallis? Integer nullam consectetur gravida, natoque aenean ultrices. Platea pulvinar etiam imperdiet faucibus, imperdiet habitasse a platea.",
      timeAgo: '6hr',
      like: 10240,
      comments: 10130,
      share: 1713,
      userProfileImageUrl: "https://images.pexels.com/photos/707344/pexels-photo-707344.jpeg?auto=compress&cs=tinysrgb&w=600"
  ),

  Post(
      user: onLineUsers[5],
      caption: "Nunc facilisi suspendisse consequat nec cursus in sollicitudin. Turpis eget velit ipsum duis fames hendrerit cubilia sapien. Potenti nisl nulla lacus dapibus nulla. Molestie sollicitudin in nunc ultricies turpis lectus. Aenean orci parturient hendrerit nibh lacus. Tempor aliquet morbi morbi vehicula potenti metus arcu. Ornare sem neque convallis cubilia pellentesque nostra montes tincidunt. Gravida turpis auctor varius curabitur bibendum habitant porttitor.",
      timeAgo: '10months',
      like: 50,
      comments: 23,
      share: 4,
      userProfileImageUrl: "https://images.pexels.com/photos/1820563/pexels-photo-1820563.jpeg?auto=compress&cs=tinysrgb&w=600"
  ),

  Post(
      user: onLineUsers[6],
      caption: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      timeAgo: '8hr',
      like: 32,
      comments: 11,
      share: 0,
      userProfileImageUrl: "https://images.pexels.com/photos/3408744/pexels-photo-3408744.jpeg?auto=compress&cs=tinysrgb&w=600"
  ),

  Post(
      user: onLineUsers[7],
      caption: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, Lorem ipsum dolor sit amet.., comes from a line in section 1.10.32.",
      timeAgo: '5hr',
      like: 20,
      comments: 3,
      share: 1,
      userProfileImageUrl: "https://images.pexels.com/photos/234272/pexels-photo-234272.jpeg?auto=compress&cs=tinysrgb&w=600"
  ),

  Post(
      user: onLineUsers[8],
      caption: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
      timeAgo: '1week',
      like: 224,
      comments: 80,
      share: 113,
      userProfileImageUrl: "https://images.pexels.com/photos/2189696/pexels-photo-2189696.jpeg?auto=compress&cs=tinysrgb&w=600"
  ),

  Post(
      user: onLineUsers[9],
      caption: "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.",
      timeAgo: '2min',
      like: 10,
      comments: 4,
      share: 3,
      userProfileImageUrl: "https://images.pexels.com/photos/2086622/pexels-photo-2086622.jpeg?auto=compress&cs=tinysrgb&w=600"
  ),

  Post(
      user: onLineUsers[10],
      caption: "The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.",
      timeAgo: '4sec',
      like: 10,
      comments: 4,
      share: 3,
      userProfileImageUrl: "https://images.pexels.com/photos/772803/pexels-photo-772803.jpeg?auto=compress&cs=tinysrgb&w=600"
  ),

  Post(
      user: onLineUsers[11],
      caption: "Post of the day",
      timeAgo: '2min',
      like: 10,
      comments: 4,
      share: 3,
      userProfileImageUrl: "https://images.pexels.com/photos/1028225/pexels-photo-1028225.jpeg?auto=compress&cs=tinysrgb&w=600"
  ),

  Post(
      user: onLineUsers[12],
      caption: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      timeAgo: '2min',
      like: 10,
      comments: 4,
      share: 3,
      userProfileImageUrl: "https://images.pexels.com/photos/1770809/pexels-photo-1770809.jpeg?auto=compress&cs=tinysrgb&w=600"
  ),

  Post(
      user: onLineUsers[13],
      caption: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?",
      timeAgo: '2min',
      like: 10,
      comments: 4,
      share: 3,
      userProfileImageUrl: "https://images.pexels.com/photos/1624504/pexels-photo-1624504.jpeg?auto=compress&cs=tinysrgb&w=600"
  ),

  Post(
      user: onLineUsers[14],
      caption: "\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"",
      timeAgo: '2min',
      like: 10,
      comments: 4,
      share: 3,
      userProfileImageUrl: "https://images.pexels.com/photos/534164/pexels-photo-534164.jpeg?auto=compress&cs=tinysrgb&w=600"
  ),

];
