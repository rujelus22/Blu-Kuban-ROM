.class Lcom/sec/android/socialhub/service/SocialHubMsgService$MsgDeleteInfo;
.super Ljava/lang/Object;
.source "SocialHubMsgService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/service/SocialHubMsgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MsgDeleteInfo"
.end annotation


# instance fields
.field public isLocked:I

.field public messageID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter "message"
    .parameter "lock"

    .prologue
    .line 901
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 902
    iput-object p1, p0, Lcom/sec/android/socialhub/service/SocialHubMsgService$MsgDeleteInfo;->messageID:Ljava/lang/String;

    .line 903
    iput p2, p0, Lcom/sec/android/socialhub/service/SocialHubMsgService$MsgDeleteInfo;->isLocked:I

    .line 904
    return-void
.end method
