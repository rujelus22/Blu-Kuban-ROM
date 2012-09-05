.class Lcom/vlingo/client/social/SocialAccountActivity$22;
.super Ljava/lang/Object;
.source "SocialAccountActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/social/SocialAccountActivity;->onVlingoFriendshipExists(IZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/social/SocialAccountActivity;

.field final synthetic val$exists:Z

.field final synthetic val$result:I


# direct methods
.method constructor <init>(Lcom/vlingo/client/social/SocialAccountActivity;IZ)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 542
    iput-object p1, p0, Lcom/vlingo/client/social/SocialAccountActivity$22;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    iput p2, p0, Lcom/vlingo/client/social/SocialAccountActivity$22;->val$result:I

    iput-boolean p3, p0, Lcom/vlingo/client/social/SocialAccountActivity$22;->val$exists:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    const/16 v1, 0xce

    .line 544
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity$22;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    invoke-virtual {v0}, Lcom/vlingo/client/social/SocialAccountActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 545
    invoke-static {}, Lcom/vlingo/client/social/api/TwitterAPI;->resetSettings()V

    .line 566
    :goto_d
    return-void

    .line 548
    :cond_e
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity$22;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    #calls: Lcom/vlingo/client/social/SocialAccountActivity;->removeCurrentDialog()V
    invoke-static {v0}, Lcom/vlingo/client/social/SocialAccountActivity;->access$000(Lcom/vlingo/client/social/SocialAccountActivity;)V

    .line 550
    iget v0, p0, Lcom/vlingo/client/social/SocialAccountActivity$22;->val$result:I

    if-nez v0, :cond_2e

    .line 551
    iget-boolean v0, p0, Lcom/vlingo/client/social/SocialAccountActivity$22;->val$exists:Z

    if-eqz v0, :cond_26

    .line 552
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity$22;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    invoke-virtual {v0, v1}, Lcom/vlingo/client/social/SocialAccountActivity;->showDialog(I)V

    .line 553
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity$22;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    #calls: Lcom/vlingo/client/social/SocialAccountActivity;->fetchThumbnail()V
    invoke-static {v0}, Lcom/vlingo/client/social/SocialAccountActivity;->access$300(Lcom/vlingo/client/social/SocialAccountActivity;)V

    goto :goto_d

    .line 556
    :cond_26
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity$22;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    const/16 v1, 0xcd

    invoke-virtual {v0, v1}, Lcom/vlingo/client/social/SocialAccountActivity;->showDialog(I)V

    goto :goto_d

    .line 560
    :cond_2e
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity$22;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    invoke-virtual {v0, v1}, Lcom/vlingo/client/social/SocialAccountActivity;->showDialog(I)V

    .line 561
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity$22;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    #calls: Lcom/vlingo/client/social/SocialAccountActivity;->fetchThumbnail()V
    invoke-static {v0}, Lcom/vlingo/client/social/SocialAccountActivity;->access$300(Lcom/vlingo/client/social/SocialAccountActivity;)V

    goto :goto_d
.end method
