.class public final Lcom/sec/android/app/sns/type/SnsReqType;
.super Ljava/lang/Object;
.source "SnsReqType.java"


# static fields
.field public static final NAME:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 131
    const/16 v0, 0x2a

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "AuthKeyResolve"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "AuthKeyDelete"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "AuthLogin"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "AuthLogout"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "ActivityForward"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ActivityRetrieve"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ActivityStatuslistGet"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "CommentFavoritePost"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "CommentFavoriteGetUser"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "CommentPost"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "CommentRetrieve"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "FriendDelete"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "FriendListRetrieveEx"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "FriendGroupingGet"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "FriendListRetrieve"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "FriendRequestPost"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "FriendSearch"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "GroupRetrieve"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "MessageDelete"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "MessageFolderRetrieve"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "MessageGet"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "MessagePost"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "MessageThreadRetrieve"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "NotePost"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "NotificationPost"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "NotificationRetrieve"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "PeopleProfileGet"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "PeopleProfileSet"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "PeopleStatusGet"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "PhotoAlbumGet"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "PhotoAlbumRetrieve"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "PhotoGet"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "PhotoUpload"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "PhotoUploadBody"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "VideoUpload"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "VideoUploadBody"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "ScheduleRetrieve"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "SerchingKeywordsRetireve"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "SearchingSearch"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "ServiceProviderDeepLinkGet"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "SnsGatewayHostGet"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "OAuthCredentialGet"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/sns/type/SnsReqType;->NAME:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
