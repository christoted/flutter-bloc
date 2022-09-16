import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../repository/models/postDataProvider.dart';

class ProfileScreen extends StatefulWidget {
 const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  void initState() {
    super.initState();
    final postMdl = Provider.of<PostDataProvider>(context, listen: false);
    postMdl.getPostData(context);
  }

  @override
  Widget build(BuildContext context) {
    final postMdl = Provider.of<PostDataProvider>(context, listen: true);
    return Center(
      child: Container(
        margin: EdgeInsets.all(16.0),
        child: Column(
          children: [
  Container(
              margin: const EdgeInsets.all(16.0),
              child: Text("Halo Test 12345"),
            ),
        Consumer<PostDataProvider>(builder: (context, value, child) {
          return Container(
              margin: const EdgeInsets.all(16.0),
            child: value.loading ? Container( child: CircularProgressIndicator()) : 
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Container(
                    child: Text(
                      postMdl.post.title,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                  Container(
                    child: Text(postMdl.post.body),
                  )
              ],
            )
          );
        })
          ],
        ),
      
          
      // Container(
      // child: postMdl.loading
      //       ? Container(
      //     child: CircularProgressIndicator(),
      //   ) : Column(
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: [
      //             Container(
      //               margin: EdgeInsets.only(top: 40, bottom: 20),
      //               child: Text(
      //                 postMdl.post.title,
      //                 style:
      //                     TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
      //               ),
      //             ),
      //             Container(
      //               child: Text(postMdl.post.body),
      //             )
      //           ],
      //       )
      //   )
      ),
    );
  }
}