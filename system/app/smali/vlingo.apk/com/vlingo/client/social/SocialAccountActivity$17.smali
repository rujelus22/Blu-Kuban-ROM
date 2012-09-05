.class Lcom/vlingo/client/social/SocialAccountActivity$17;
.super Ljava/lang/Object;
.source "SocialAccountActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/social/SocialAccountActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/social/SocialAccountActivity;


# direct methods
.method constructor <init>(Lcom/vlingo/client/social/SocialAccountActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 388
    iput-object p1, p0, Lcom/vlingo/client/social/SocialAccountActivity$17;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 390
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity$17;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    #calls: Lcom/vlingo/client/social/SocialAccountActivity;->removeCurrentDialog()V
    invoke-static {v0}, Lcom/vlingo/client/social/SocialAccountActivity;->access$000(Lcom/vlingo/client/social/SocialAccountActivity;)V

    .line 391
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity$17;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    const/16 v1, 0xce

    invoke-virtual {v0, v1}, Lcom/vlingo/client/social/SocialAccountActivity;->showDialog(I)V

    .line 393
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity$17;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    new-instance v1, Lcom/vlingo/client/social/api/TwitterAPI;

    iget-object v2, p0, Lcom/vlingo/client/social/SocialAccountActivity$17;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    invoke-direct {v1, v2}, Lcom/vlingo/client/social/api/TwitterAPI;-><init>(Lcom/vlingo/client/social/api/TwitterAPI$TwitterCallback;)V

    #setter for: Lcom/vlingo/client/social/SocialAccountActivity;->twitterAPI:Lcom/vlingo/client/social/api/TwitterAPI;
    invoke-static {v0, v1}, Lcom/vlingo/client/social/SocialAccountActivity;->access$202(Lcom/vlingo/client/social/SocialAccountActivity;Lcom/vlingo/client/social/api/TwitterAPI;)Lcom/vlingo/client/social/api/TwitterAPI;

    .line 394
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity$17;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    #getter for: Lcom/vlingo/client/social/SocialAccountActivity;->twitterAPI:Lcom/vlingo/client/social/api/TwitterAPI;
    invoke-static {v0}, Lcom/vlingo/client/social/SocialAccountActivity;->access$200(Lcom/vlingo/client/social/SocialAccountActivity;)Lcom/vlingo/client/social/api/TwitterAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/social/api/TwitterAPI;->followVlingo()V

    .line 395
    return-void
.end method
