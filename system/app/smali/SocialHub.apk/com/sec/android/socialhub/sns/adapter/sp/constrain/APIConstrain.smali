.class public Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;
.super Ljava/lang/Object;
.source "APIConstrain.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainBoolean;,
        Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainStringArray;,
        Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
    }
.end annotation


# instance fields
.field public TYPE_ACTIVITY:I

.field public TYPE_ALBUM:I

.field public TYPE_BULLETIN:I

.field public TYPE_COMMENT:I

.field public TYPE_DIARY:I

.field public TYPE_EVENT:I

.field public TYPE_NOTE:I

.field public TYPE_PHOTO:I

.field public TYPE_POST:[Ljava/lang/String;

.field public TYPE_POST_COMMENT:[Ljava/lang/String;

.field public TYPE_POST_FORWARD:I

.field public TYPE_POST_NEW:I

.field public TYPE_POST_REPLY:I

.field public TYPE_PROFILE:I

.field public TYPE_STATUSLIST:I

.field public TYPE_VIDEO:I


# direct methods
.method public constructor <init>()V
    .registers 9

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "reply"

    aput-object v1, v0, v3

    const-string v1, "forward"

    aput-object v1, v0, v4

    const-string v1, "new"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;->TYPE_POST:[Ljava/lang/String;

    .line 21
    iput v3, p0, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;->TYPE_POST_REPLY:I

    .line 22
    iput v4, p0, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;->TYPE_POST_FORWARD:I

    .line 23
    iput v5, p0, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;->TYPE_POST_NEW:I

    .line 26
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "photo"

    aput-object v1, v0, v3

    const-string v1, "note"

    aput-object v1, v0, v4

    const-string v1, "video"

    aput-object v1, v0, v5

    const-string v1, "profile"

    aput-object v1, v0, v6

    const-string v1, "activity"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "bulletin"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "statuslist"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "diary"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "comment"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "album"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "event"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;->TYPE_POST_COMMENT:[Ljava/lang/String;

    .line 41
    iput v3, p0, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;->TYPE_PHOTO:I

    .line 42
    iput v4, p0, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;->TYPE_NOTE:I

    .line 43
    iput v5, p0, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;->TYPE_VIDEO:I

    .line 44
    iput v6, p0, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;->TYPE_PROFILE:I

    .line 45
    iput v7, p0, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;->TYPE_ACTIVITY:I

    .line 46
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;->TYPE_BULLETIN:I

    .line 47
    const/4 v0, 0x6

    iput v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;->TYPE_STATUSLIST:I

    .line 48
    const/4 v0, 0x7

    iput v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;->TYPE_DIARY:I

    .line 49
    const/16 v0, 0x8

    iput v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;->TYPE_COMMENT:I

    .line 50
    const/16 v0, 0x9

    iput v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;->TYPE_ALBUM:I

    .line 51
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;->TYPE_EVENT:I

    .line 83
    return-void
.end method


# virtual methods
.method public activityStatuslistGet(Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;)Z
    .registers 5
    .parameter "peopleID"
    .parameter "groupID"
    .parameter "statusType"

    .prologue
    .line 149
    const/4 v0, 0x1

    return v0
.end method

.method public commentFavoritePost(Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainBoolean;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainBoolean;)Z
    .registers 10
    .parameter "targetID"
    .parameter "targetAuthorID"
    .parameter "targetType"
    .parameter "favoriteType"
    .parameter "mask"
    .parameter "isFavorite"
    .parameter "isRecommendable"
    .parameter "bIsForced"

    .prologue
    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method public commentPost(Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;)Z
    .registers 7
    .parameter "targetID"
    .parameter "targetAuthorID"
    .parameter "targetType"
    .parameter "targetSubID"
    .parameter "content"

    .prologue
    .line 124
    const/4 v0, 0x1

    return v0
.end method

.method public commentRetrieve(Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;)Z
    .registers 6
    .parameter "targetID"
    .parameter "targetAuthorID"
    .parameter "targetType"
    .parameter "targetSubID"

    .prologue
    .line 134
    const/4 v0, 0x1

    return v0
.end method

.method public friendDelete(Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;)Z
    .registers 3
    .parameter "targetID"

    .prologue
    .line 163
    const/4 v0, 0x1

    return v0
.end method

.method public friendGroupingGet(Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;)Z
    .registers 4
    .parameter "peopleID"
    .parameter "relation"

    .prologue
    .line 173
    const/4 v0, 0x1

    return v0
.end method

.method public friendListRetrieveEx(Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;)Z
    .registers 3
    .parameter "relation"

    .prologue
    .line 168
    const/4 v0, 0x1

    return v0
.end method

.method public friendRequestPost(Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;)Z
    .registers 3
    .parameter "targetID"

    .prologue
    .line 158
    const/4 v0, 0x1

    return v0
.end method

.method public groupRetrieve(Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;)Z
    .registers 3
    .parameter "peopleID"

    .prologue
    .line 183
    const/4 v0, 0x1

    return v0
.end method

.method public messageDelete(Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;)Z
    .registers 5
    .parameter "folderType"
    .parameter "messageID"
    .parameter "threadID"

    .prologue
    .line 104
    const/4 v0, 0x1

    return v0
.end method

.method public messageGet(Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;)Z
    .registers 5
    .parameter "threadID"
    .parameter "messageID"
    .parameter "messageFolder"

    .prologue
    .line 109
    const/4 v0, 0x1

    return v0
.end method

.method public messagePost(Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainStringArray;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;)Z
    .registers 9
    .parameter "postType"
    .parameter "receiverIDs"
    .parameter "title"
    .parameter "content"
    .parameter "replyMessageID"
    .parameter "replyThreadID"
    .parameter "replyFolder"

    .prologue
    .line 99
    const/4 v0, 0x1

    return v0
.end method

.method public messageThreadRetrieve(Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;)Z
    .registers 4
    .parameter "folder"
    .parameter "threadID"

    .prologue
    .line 114
    const/4 v0, 0x1

    return v0
.end method

.method public notePost(Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;)Z
    .registers 5
    .parameter "categoryID"
    .parameter "categoryOwnerID"
    .parameter "content"

    .prologue
    .line 234
    const/4 v0, 0x1

    return v0
.end method

.method public searchingSearch(Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;)Z
    .registers 3
    .parameter "keyWord"

    .prologue
    .line 243
    const/4 v0, 0x1

    return v0
.end method

.method public serviceProviderDeepLinkGet(Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;)Z
    .registers 9
    .parameter "linkType"
    .parameter "deeplinkUrl"
    .parameter "peopleID"
    .parameter "targetID"
    .parameter "targetSubID"
    .parameter "targetCommentID"
    .parameter "actorName"

    .prologue
    .line 193
    const/4 v0, 0x1

    return v0
.end method
