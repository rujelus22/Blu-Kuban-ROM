.class Lcom/vlingo/client/social/SocialUpdateActivity$13;
.super Ljava/lang/Object;
.source "SocialUpdateActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/social/SocialUpdateActivity;->onFacebookAPIMethod(Lcom/vlingo/client/social/api/FacebookAPI;ILjava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/social/SocialUpdateActivity;

.field final synthetic val$params:Landroid/os/Bundle;

.field final synthetic val$responseType:I


# direct methods
.method constructor <init>(Lcom/vlingo/client/social/SocialUpdateActivity;Landroid/os/Bundle;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 845
    iput-object p1, p0, Lcom/vlingo/client/social/SocialUpdateActivity$13;->this$0:Lcom/vlingo/client/social/SocialUpdateActivity;

    iput-object p2, p0, Lcom/vlingo/client/social/SocialUpdateActivity$13;->val$params:Landroid/os/Bundle;

    iput p3, p0, Lcom/vlingo/client/social/SocialUpdateActivity$13;->val$responseType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 848
    const/4 v0, 0x0

    .line 850
    .local v0, errorMessage:Ljava/lang/String;
    iget-object v1, p0, Lcom/vlingo/client/social/SocialUpdateActivity$13;->val$params:Landroid/os/Bundle;

    const-string v2, "error"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 852
    iget-object v1, p0, Lcom/vlingo/client/social/SocialUpdateActivity$13;->val$params:Landroid/os/Bundle;

    const-string v2, "error"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 854
    :cond_13
    iget-object v2, p0, Lcom/vlingo/client/social/SocialUpdateActivity$13;->this$0:Lcom/vlingo/client/social/SocialUpdateActivity;

    const/16 v3, 0x8

    iget v1, p0, Lcom/vlingo/client/social/SocialUpdateActivity$13;->val$responseType:I

    const/16 v4, 0x385

    if-ne v1, v4, :cond_22

    const/4 v1, 0x1

    :goto_1e
    #calls: Lcom/vlingo/client/social/SocialUpdateActivity;->onNetworkStatusUpdateComplete(IZLjava/lang/String;)V
    invoke-static {v2, v3, v1, v0}, Lcom/vlingo/client/social/SocialUpdateActivity;->access$1000(Lcom/vlingo/client/social/SocialUpdateActivity;IZLjava/lang/String;)V

    .line 855
    return-void

    .line 854
    :cond_22
    const/4 v1, 0x0

    goto :goto_1e
.end method
