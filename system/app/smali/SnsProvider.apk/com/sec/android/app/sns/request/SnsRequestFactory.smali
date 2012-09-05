.class public final Lcom/sec/android/app/sns/request/SnsRequestFactory;
.super Ljava/lang/Object;
.source "SnsRequestFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 63
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newActivityForward(IILjava/lang/String;)Lcom/sec/android/app/sns/request/data/SnsRequest;
    .registers 5
    .parameter "appID"
    .parameter "reqType"
    .parameter "activityID"

    .prologue
    .line 142
    new-instance v0, Lcom/sec/android/app/sns/request/data/SnsRequestActivityForward;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/android/app/sns/request/data/SnsRequestActivityForward;-><init>(IILjava/lang/String;)V

    return-object v0
.end method

.method public newActivityRetrieve(IILjava/util/Map;Ljava/lang/String;IILjava/lang/String;ILjava/util/ArrayList;)Lcom/sec/android/app/sns/request/data/SnsRequest;
    .registers 20
    .parameter "appID"
    .parameter "reqType"
    .parameter
    .parameter "latestTime"
    .parameter "startOffset"
    .parameter "maxCount"
    .parameter "startContext"
    .parameter "activityType"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/message/BasicHeader;",
            ">;)",
            "Lcom/sec/android/app/sns/request/data/SnsRequest;"
        }
    .end annotation

    .prologue
    .line 157
    .local p3, actorList:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .local p9, httpHeaderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicHeader;>;"
    new-instance v0, Lcom/sec/android/app/sns/request/data/SnsRequestActivityRetrieve;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/app/sns/request/data/SnsRequestActivityRetrieve;-><init>(IILjava/util/Map;Ljava/lang/String;IILjava/lang/String;ILjava/util/ArrayList;)V

    return-object v0
.end method

.method public newActivityStatuslistGet(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/sec/android/app/sns/request/data/SnsRequest;
    .registers 20
    .parameter "appID"
    .parameter "spType"
    .parameter "reqType"
    .parameter "peopleID"
    .parameter "groupID"
    .parameter "statusType"
    .parameter "startOffset"
    .parameter "maxCount"
    .parameter "startContext"

    .prologue
    .line 175
    new-instance v0, Lcom/sec/android/app/sns/request/data/SnsRequestActivityStatuslistGet;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/app/sns/request/data/SnsRequestActivityStatuslistGet;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    return-object v0
.end method

.method public newAuthKeyResolve(IIII)Lcom/sec/android/app/sns/request/data/SnsRequest;
    .registers 6
    .parameter "appID"
    .parameter "spType"
    .parameter "reqType"
    .parameter "originalReqID"

    .prologue
    .line 76
    new-instance v0, Lcom/sec/android/app/sns/request/data/SnsRequestAuthKeyResolve;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/sec/android/app/sns/request/data/SnsRequestAuthKeyResolve;-><init>(IIII)V

    return-object v0
.end method

.method public newAuthLogin(IIILjava/lang/String;Ljava/lang/String;Z)Lcom/sec/android/app/sns/request/data/SnsRequest;
    .registers 14
    .parameter "appID"
    .parameter "spType"
    .parameter "reqType"
    .parameter "uid"
    .parameter "pwd"
    .parameter "bResetSession"

    .prologue
    .line 103
    new-instance v0, Lcom/sec/android/app/sns/request/data/SnsRequestAuthLogin;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/sns/request/data/SnsRequestAuthLogin;-><init>(IIILjava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public newAuthLogout(III)Lcom/sec/android/app/sns/request/data/SnsRequest;
    .registers 5
    .parameter "appID"
    .parameter "spType"
    .parameter "reqType"

    .prologue
    .line 115
    new-instance v0, Lcom/sec/android/app/sns/request/data/SnsRequestAuthLogout;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/android/app/sns/request/data/SnsRequestAuthLogout;-><init>(III)V

    return-object v0
.end method

.method public newCommentFavoratePost(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/sec/android/app/sns/request/data/SnsRequest;
    .registers 18
    .parameter "appID"
    .parameter "spType"
    .parameter "reqType"
    .parameter "targetID"
    .parameter "targetAuthorID"
    .parameter "targetType"
    .parameter "favoriteType"
    .parameter "mask"

    .prologue
    .line 235
    new-instance v0, Lcom/sec/android/app/sns/request/data/SnsRequestCommentFavoritePost;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/sns/request/data/SnsRequestCommentFavoritePost;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public newCommentFavoriteGetUser(IIILjava/lang/String;IILjava/lang/String;)Lcom/sec/android/app/sns/request/data/SnsRequest;
    .registers 16
    .parameter "appID"
    .parameter "spType"
    .parameter "reqType"
    .parameter "targetID"
    .parameter "startOffset"
    .parameter "maxCount"
    .parameter "startContext"

    .prologue
    .line 253
    new-instance v0, Lcom/sec/android/app/sns/request/data/SnsRequestCommentFavoriteGetUser;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/sns/request/data/SnsRequestCommentFavoriteGetUser;-><init>(IIILjava/lang/String;IILjava/lang/String;)V

    return-object v0
.end method

.method public newCommentPost(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sns/request/data/SnsRequest;
    .registers 18
    .parameter "appID"
    .parameter "spType"
    .parameter "reqType"
    .parameter "targetID"
    .parameter "targetAuthorID"
    .parameter "targetType"
    .parameter "targetSubID"
    .parameter "content"

    .prologue
    .line 195
    new-instance v0, Lcom/sec/android/app/sns/request/data/SnsRequestCommentPost;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/sns/request/data/SnsRequestCommentPost;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public newCommentRetrieve(IIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/sec/android/app/sns/request/data/SnsRequest;
    .registers 24
    .parameter "appID"
    .parameter "spType"
    .parameter "reqType"
    .parameter "bSerial"
    .parameter "targetID"
    .parameter "targetAuthorID"
    .parameter "targetType"
    .parameter "targetSubID"
    .parameter "startOffset"
    .parameter "maxCount"
    .parameter "startContext"

    .prologue
    .line 217
    new-instance v0, Lcom/sec/android/app/sns/request/data/SnsRequestCommentRetrieve;

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lcom/sec/android/app/sns/request/data/SnsRequestCommentRetrieve;-><init>(IIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    return-object v0
.end method

.method public newFriendDelete(IIILjava/lang/String;)Lcom/sec/android/app/sns/request/data/SnsRequest;
    .registers 6
    .parameter "appID"
    .parameter "reqType"
    .parameter "spType"
    .parameter "targetID"

    .prologue
    .line 300
    new-instance v0, Lcom/sec/android/app/sns/request/data/SnsRequestFriendDelete;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/sec/android/app/sns/request/data/SnsRequestFriendDelete;-><init>(IIILjava/lang/String;)V

    return-object v0
.end method

.method public newFriendGroupingGet(IIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/sec/android/app/sns/request/data/SnsRequest;
    .registers 18
    .parameter "appID"
    .parameter "spType"
    .parameter "reqType"
    .parameter "peopleID"
    .parameter "relation"
    .parameter "startOffset"
    .parameter "maxCount"
    .parameter "startContext"

    .prologue
    .line 273
    new-instance v0, Lcom/sec/android/app/sns/request/data/SnsRequestFriendGroupingGet;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/sns/request/data/SnsRequestFriendGroupingGet;-><init>(IIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    return-object v0
.end method

.method public newFriendListRetrieve(IIIZIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sns/request/data/SnsRequest;
    .registers 22
    .parameter "appID"
    .parameter "spType"
    .parameter "reqType"
    .parameter "bSerial"
    .parameter "pollingID"
    .parameter "startOffset"
    .parameter "maxCount"
    .parameter "startContext"
    .parameter "fullResponseTime"
    .parameter "updatedResponseTime"

    .prologue
    .line 342
    new-instance v0, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieve;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieve;-><init>(IIIZIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public newFriendListRetrieveEx(IIILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sns/request/data/SnsRequest;
    .registers 20
    .parameter "appID"
    .parameter "spType"
    .parameter "reqType"
    .parameter "relationType"
    .parameter "startOffset"
    .parameter "maxCount"
    .parameter "startContext"
    .parameter "fullResponseTime"
    .parameter "updatedResponseTime"

    .prologue
    .line 320
    new-instance v0, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieveEx;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieveEx;-><init>(IIILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public newFriendRequestPost(IIILjava/lang/String;)Lcom/sec/android/app/sns/request/data/SnsRequest;
    .registers 6
    .parameter "appID"
    .parameter "reqType"
    .parameter "spType"
    .parameter "targetID"

    .prologue
    .line 287
    new-instance v0, Lcom/sec/android/app/sns/request/data/SnsRequestFriendRequestPost;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/sec/android/app/sns/request/data/SnsRequestFriendRequestPost;-><init>(IIILjava/lang/String;)V

    return-object v0
.end method

.method public newGroupRetrieve(IIILjava/lang/String;IILjava/lang/String;)Lcom/sec/android/app/sns/request/data/SnsRequest;
    .registers 16
    .parameter "appID"
    .parameter "spType"
    .parameter "reqType"
    .parameter "peopleID"
    .parameter "startOffset"
    .parameter "maxCount"
    .parameter "startContext"

    .prologue
    .line 380
    new-instance v0, Lcom/sec/android/app/sns/request/data/SnsRequestGroupRetrieve;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/sns/request/data/SnsRequestGroupRetrieve;-><init>(IIILjava/lang/String;IILjava/lang/String;)V

    return-object v0
.end method

.method public newMessageDelete(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sns/request/data/SnsRequest;
    .registers 14
    .parameter "appID"
    .parameter "spType"
    .parameter "reqType"
    .parameter "folderType"
    .parameter "messageID"
    .parameter "threadID"

    .prologue
    .line 395
    new-instance v0, Lcom/sec/android/app/sns/request/data/SnsRequestMessageDelete;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/sns/request/data/SnsRequestMessageDelete;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public newMessageFolderRetrieve(IIZIILjava/lang/String;Ljava/lang/Long;IILjava/lang/String;)Lcom/sec/android/app/sns/request/data/SnsRequest;
    .registers 22
    .parameter "appID"
    .parameter "reqType"
    .parameter "bSerial"
    .parameter "pollingID"
    .parameter "internalSp"
    .parameter "timeLimitIntervalEndDay"
    .parameter "timeLimitEndTime"
    .parameter "startOffset"
    .parameter "maxCount"
    .parameter "startContext"

    .prologue
    .line 414
    new-instance v0, Lcom/sec/android/app/sns/request/data/SnsRequestMessageFolderRetrieve;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/sec/android/app/sns/request/data/SnsRequestMessageFolderRetrieve;-><init>(IIZIILjava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    return-object v0
.end method

.method public newMessageGet(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sns/request/data/SnsRequest;
    .registers 14
    .parameter "appID"
    .parameter "spType"
    .parameter "reqType"
    .parameter "threadID"
    .parameter "messageID"
    .parameter "messageFolder"

    .prologue
    .line 431
    new-instance v0, Lcom/sec/android/app/sns/request/data/SnsRequestMessageGet;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/sns/request/data/SnsRequestMessageGet;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public newMessagePost(IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sns/request/data/SnsRequest;
    .registers 22
    .parameter "appID"
    .parameter "spType"
    .parameter "reqType"
    .parameter "postType"
    .parameter "receiverIDs"
    .parameter "title"
    .parameter "content"
    .parameter "replyMessageID"
    .parameter "replyThreadID"
    .parameter "replyFolder"

    .prologue
    .line 450
    new-instance v0, Lcom/sec/android/app/sns/request/data/SnsRequestMessagePost;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/sec/android/app/sns/request/data/SnsRequestMessagePost;-><init>(IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public newMessageThreadRetrieve(IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/sec/android/app/sns/request/data/SnsRequest;
    .registers 16
    .parameter "appID"
    .parameter "reqType"
    .parameter "folder"
    .parameter "threadID"
    .parameter "startOffset"
    .parameter "maxCount"
    .parameter "startContext"

    .prologue
    .line 469
    new-instance v0, Lcom/sec/android/app/sns/request/data/SnsRequestMessageThreadRetrieve;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/sns/request/data/SnsRequestMessageThreadRetrieve;-><init>(IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    return-object v0
.end method

.method public newNotePost(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sns/request/data/SnsRequest;
    .registers 14
    .parameter "appID"
    .parameter "spType"
    .parameter "reqType"
    .parameter "categoryID"
    .parameter "categoryOwnerID"
    .parameter "content"

    .prologue
    .line 487
    new-instance v0, Lcom/sec/android/app/sns/request/data/SnsRequestNotePost;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/sns/request/data/SnsRequestNotePost;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public newNotificationPost(I[II)Lcom/sec/android/app/sns/request/data/SnsRequest;
    .registers 5
    .parameter "appID"
    .parameter "spTypeList"
    .parameter "reqType"

    .prologue
    .line 500
    new-instance v0, Lcom/sec/android/app/sns/request/data/SnsRequestNotificationPost;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/android/app/sns/request/data/SnsRequestNotificationPost;-><init>(I[II)V

    return-object v0
.end method

.method public newNotificationRetrieve(IIIIILjava/lang/String;)Lcom/sec/android/app/sns/request/data/SnsRequest;
    .registers 14
    .parameter "appID"
    .parameter "spType"
    .parameter "reqType"
    .parameter "startOffset"
    .parameter "maxCount"
    .parameter "startContext"

    .prologue
    .line 516
    new-instance v0, Lcom/sec/android/app/sns/request/data/SnsRequestNotificationRetrieve;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/sns/request/data/SnsRequestNotificationRetrieve;-><init>(IIIIILjava/lang/String;)V

    return-object v0
.end method

.method public newOAuthCredentialGet(IIILjava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sns/request/data/SnsRequest;
    .registers 12
    .parameter "appID"
    .parameter "spType"
    .parameter "reqType"
    .parameter "url"
    .parameter "mimeType"

    .prologue
    .line 129
    new-instance v0, Lcom/sec/android/app/sns/request/data/SnsRequestOAuthCredentialGet;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sns/request/data/SnsRequestOAuthCredentialGet;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public newPeopleProfileGet(IIIILjava/lang/String;I)Lcom/sec/android/app/sns/request/data/SnsRequest;
    .registers 14
    .parameter "appID"
    .parameter "spType"
    .parameter "reqType"
    .parameter "pollingID"
    .parameter "peopleId"
    .parameter "parentReqID"

    .prologue
    .line 534
    new-instance v0, Lcom/sec/android/app/sns/request/data/SnsRequestPeopleProfileGet;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/sns/request/data/SnsRequestPeopleProfileGet;-><init>(IIIILjava/lang/String;I)V

    return-object v0
.end method

.method public newPeopleProfileSet(I[IILjava/lang/String;)Lcom/sec/android/app/sns/request/data/SnsRequest;
    .registers 6
    .parameter "appID"
    .parameter "spTypeList"
    .parameter "reqType"
    .parameter "status"

    .prologue
    .line 547
    new-instance v0, Lcom/sec/android/app/sns/request/data/SnsRequestPeopleProfileSet;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/sec/android/app/sns/request/data/SnsRequestPeopleProfileSet;-><init>(I[IILjava/lang/String;)V

    return-object v0
.end method

.method public newPhotoAlbumGet(IIILjava/util/Map;IILjava/lang/String;)Lcom/sec/android/app/sns/request/data/SnsRequest;
    .registers 16
    .parameter "appID"
    .parameter "spType"
    .parameter "reqType"
    .parameter
    .parameter "startOffset"
    .parameter "maxCount"
    .parameter "startContext"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;II",
            "Ljava/lang/String;",
            ")",
            "Lcom/sec/android/app/sns/request/data/SnsRequest;"
        }
    .end annotation

    .prologue
    .line 565
    .local p4, actorList:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v0, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumGet;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumGet;-><init>(IIILjava/util/Map;IILjava/lang/String;)V

    return-object v0
.end method

.method public newPhotoUpload(I[IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)Lcom/sec/android/app/sns/request/data/SnsRequest;
    .registers 18
    .parameter "appID"
    .parameter "spTypeList"
    .parameter "reqType"
    .parameter "fileName"
    .parameter "content"
    .parameter "title"
    .parameter "tag"
    .parameter "pfd"

    .prologue
    .line 620
    new-instance v0, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUpload;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUpload;-><init>(I[IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    return-object v0
.end method

.method public newPhotoUploadBody(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)Lcom/sec/android/app/sns/request/data/SnsRequest;
    .registers 16
    .parameter "appID"
    .parameter "reqType"
    .parameter "parentReqID"
    .parameter "fileName"
    .parameter "uploadHostAddr"
    .parameter "resourceID"
    .parameter "pfd"

    .prologue
    .line 638
    new-instance v0, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUploadBody;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUploadBody;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    return-object v0
.end method

.method public newScheduleRetrieve(IIZIIIILjava/lang/String;)Lcom/sec/android/app/sns/request/data/SnsRequest;
    .registers 18
    .parameter "appID"
    .parameter "reqType"
    .parameter "bSerial"
    .parameter "pollingID"
    .parameter "internalSp"
    .parameter "startOffset"
    .parameter "maxCount"
    .parameter "startContext"

    .prologue
    .line 691
    new-instance v0, Lcom/sec/android/app/sns/request/data/SnsRequestScheduleRetrieve;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/sns/request/data/SnsRequestScheduleRetrieve;-><init>(IIZIIIILjava/lang/String;)V

    return-object v0
.end method

.method public newSearchKeywrodsRetrieve(III)Lcom/sec/android/app/sns/request/data/SnsRequest;
    .registers 5
    .parameter "appID"
    .parameter "spType"
    .parameter "reqType"

    .prologue
    .line 704
    new-instance v0, Lcom/sec/android/app/sns/request/data/SnsRequestSearchingKeywordsRetrieve;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/android/app/sns/request/data/SnsRequestSearchingKeywordsRetrieve;-><init>(III)V

    return-object v0
.end method

.method public newSearchingSearch(IIILjava/lang/String;IILjava/lang/String;)Lcom/sec/android/app/sns/request/data/SnsRequest;
    .registers 16
    .parameter "appID"
    .parameter "spType"
    .parameter "reqType"
    .parameter "keyWord"
    .parameter "startOffset"
    .parameter "maxCount"
    .parameter "startContext"

    .prologue
    .line 722
    new-instance v0, Lcom/sec/android/app/sns/request/data/SnsRequestSearchingSearch;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/sns/request/data/SnsRequestSearchingSearch;-><init>(IIILjava/lang/String;IILjava/lang/String;)V

    return-object v0
.end method

.method public newServiceProvideDeepLinkGet(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sns/request/data/SnsRequest;
    .registers 20
    .parameter "appID"
    .parameter "spType"
    .parameter "reqType"
    .parameter "linkType"
    .parameter "deeplinkUrl"
    .parameter "peopleID"
    .parameter "targetID"
    .parameter "targetSubID"
    .parameter "targetCommentID"

    .prologue
    .line 740
    new-instance v0, Lcom/sec/android/app/sns/request/data/SnsRequestServiceProviderDeepLinkGet;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/app/sns/request/data/SnsRequestServiceProviderDeepLinkGet;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public newSnsGatewayHostGet(IIILjava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sns/request/data/SnsRequest;
    .registers 12
    .parameter "appID"
    .parameter "spType"
    .parameter "reqType"
    .parameter "modelCode"
    .parameter "MCC"

    .prologue
    .line 757
    new-instance v0, Lcom/sec/android/app/sns/request/data/SnsRequestSnsGatewayHostGet;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sns/request/data/SnsRequestSnsGatewayHostGet;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public newVideoUpload(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)Lcom/sec/android/app/sns/request/data/SnsRequest;
    .registers 16
    .parameter "appID"
    .parameter "spType"
    .parameter "reqType"
    .parameter "categoryOwnerID"
    .parameter "title"
    .parameter "fileName"
    .parameter "pfd"

    .prologue
    .line 655
    new-instance v0, Lcom/sec/android/app/sns/request/data/SnsRequestVideoUpload;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/sns/request/data/SnsRequestVideoUpload;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    return-object v0
.end method

.method public newVideoUploadBody(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)Lcom/sec/android/app/sns/request/data/SnsRequest;
    .registers 16
    .parameter "appID"
    .parameter "reqType"
    .parameter "parentReqID"
    .parameter "fileName"
    .parameter "uploadHostAddr"
    .parameter "resourceID"
    .parameter "pfd"

    .prologue
    .line 672
    new-instance v0, Lcom/sec/android/app/sns/request/data/SnsRequestVideoUploadBody;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/sns/request/data/SnsRequestVideoUploadBody;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    return-object v0
.end method
