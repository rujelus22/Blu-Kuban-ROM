.class public Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SenderInfo;
.super Ljava/lang/Object;
.source "SocialHubSingleMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SenderInfo"
.end annotation


# instance fields
.field public mName:Ljava/lang/String;

.field public mPhotoUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1113
    iput-object p1, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SenderInfo;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1115
    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SenderInfo;->mPhotoUrl:Ljava/lang/String;

    .line 1116
    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SenderInfo;->mName:Ljava/lang/String;

    return-void
.end method
