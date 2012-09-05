.class public Lcom/sec/android/socialhub/service/SocialHubServiceConnector$ServiceMessage;
.super Ljava/lang/Object;
.source "SocialHubServiceConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/service/SocialHubServiceConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServiceMessage"
.end annotation


# instance fields
.field public mCallback:Lcom/sec/android/socialhub/service/SocialHubServiceConnector$ISocialHubApiCallback;

.field public mReqType:I

.field final synthetic this$0:Lcom/sec/android/socialhub/service/SocialHubServiceConnector;


# direct methods
.method public constructor <init>(Lcom/sec/android/socialhub/service/SocialHubServiceConnector;ILcom/sec/android/socialhub/service/SocialHubServiceConnector$ISocialHubApiCallback;)V
    .registers 4
    .parameter
    .parameter "reqType"
    .parameter "callback"

    .prologue
    .line 486
    iput-object p1, p0, Lcom/sec/android/socialhub/service/SocialHubServiceConnector$ServiceMessage;->this$0:Lcom/sec/android/socialhub/service/SocialHubServiceConnector;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 487
    iput p2, p0, Lcom/sec/android/socialhub/service/SocialHubServiceConnector$ServiceMessage;->mReqType:I

    .line 488
    iput-object p3, p0, Lcom/sec/android/socialhub/service/SocialHubServiceConnector$ServiceMessage;->mCallback:Lcom/sec/android/socialhub/service/SocialHubServiceConnector$ISocialHubApiCallback;

    .line 489
    return-void
.end method
