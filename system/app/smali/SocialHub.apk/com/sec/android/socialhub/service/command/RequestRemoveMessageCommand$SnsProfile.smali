.class public Lcom/sec/android/socialhub/service/command/RequestRemoveMessageCommand$SnsProfile;
.super Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;
.source "RequestRemoveMessageCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/service/command/RequestRemoveMessageCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SnsProfile"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/service/command/RequestRemoveMessageCommand;


# direct methods
.method public constructor <init>(Lcom/sec/android/socialhub/service/command/RequestRemoveMessageCommand;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter "ctx"

    .prologue
    .line 511
    iput-object p1, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveMessageCommand$SnsProfile;->this$0:Lcom/sec/android/socialhub/service/command/RequestRemoveMessageCommand;

    .line 512
    invoke-direct {p0, p2}, Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;-><init>(Landroid/content/Context;)V

    .line 513
    return-void
.end method


# virtual methods
.method public getService()Lcom/sec/android/app/sns/ISnsService;
    .registers 2

    .prologue
    .line 518
    iget-object v0, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveMessageCommand$SnsProfile;->this$0:Lcom/sec/android/socialhub/service/command/RequestRemoveMessageCommand;

    #getter for: Lcom/sec/android/socialhub/service/command/RequestRemoveMessageCommand;->mHandler:Lcom/sec/android/socialhub/service/SocialHubSnsHandler;
    invoke-static {v0}, Lcom/sec/android/socialhub/service/command/RequestRemoveMessageCommand;->access$000(Lcom/sec/android/socialhub/service/command/RequestRemoveMessageCommand;)Lcom/sec/android/socialhub/service/SocialHubSnsHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->getService()Lcom/sec/android/app/sns/ISnsService;

    move-result-object v0

    return-object v0
.end method
