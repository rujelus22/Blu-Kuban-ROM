.class public Lcom/sec/android/socialhub/service/SocialHubSnsHandler$SnsProfile;
.super Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;
.source "SocialHubSnsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/service/SocialHubSnsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SnsProfile"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/service/SocialHubSnsHandler;


# direct methods
.method public constructor <init>(Lcom/sec/android/socialhub/service/SocialHubSnsHandler;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter "ctx"

    .prologue
    .line 483
    iput-object p1, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler$SnsProfile;->this$0:Lcom/sec/android/socialhub/service/SocialHubSnsHandler;

    .line 484
    invoke-direct {p0, p2}, Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;-><init>(Landroid/content/Context;)V

    .line 485
    return-void
.end method


# virtual methods
.method public getService()Lcom/sec/android/app/sns/ISnsService;
    .registers 2

    .prologue
    .line 490
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler$SnsProfile;->this$0:Lcom/sec/android/socialhub/service/SocialHubSnsHandler;

    iget-object v0, v0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->mService:Lcom/sec/android/app/sns/ISnsService;

    return-object v0
.end method
