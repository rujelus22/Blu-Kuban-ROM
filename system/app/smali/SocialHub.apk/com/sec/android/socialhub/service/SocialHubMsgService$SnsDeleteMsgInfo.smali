.class Lcom/sec/android/socialhub/service/SocialHubMsgService$SnsDeleteMsgInfo;
.super Ljava/lang/Object;
.source "SocialHubMsgService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/service/SocialHubMsgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SnsDeleteMsgInfo"
.end annotation


# instance fields
.field public folderType:Ljava/lang/String;

.field public messageID:Ljava/lang/String;

.field public spType:I

.field public threadID:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "sp"
    .parameter "folder"
    .parameter "message"
    .parameter "thread"

    .prologue
    .line 915
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 916
    iput p1, p0, Lcom/sec/android/socialhub/service/SocialHubMsgService$SnsDeleteMsgInfo;->spType:I

    .line 917
    iput-object p2, p0, Lcom/sec/android/socialhub/service/SocialHubMsgService$SnsDeleteMsgInfo;->folderType:Ljava/lang/String;

    .line 918
    iput-object p3, p0, Lcom/sec/android/socialhub/service/SocialHubMsgService$SnsDeleteMsgInfo;->messageID:Ljava/lang/String;

    .line 919
    iput-object p4, p0, Lcom/sec/android/socialhub/service/SocialHubMsgService$SnsDeleteMsgInfo;->threadID:Ljava/lang/String;

    .line 920
    return-void
.end method
