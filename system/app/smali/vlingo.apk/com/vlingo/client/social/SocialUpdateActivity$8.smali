.class Lcom/vlingo/client/social/SocialUpdateActivity$8;
.super Ljava/lang/Object;
.source "SocialUpdateActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/social/SocialUpdateActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/social/SocialUpdateActivity;


# direct methods
.method constructor <init>(Lcom/vlingo/client/social/SocialUpdateActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 477
    iput-object p1, p0, Lcom/vlingo/client/social/SocialUpdateActivity$8;->this$0:Lcom/vlingo/client/social/SocialUpdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 479
    iget-object v0, p0, Lcom/vlingo/client/social/SocialUpdateActivity$8;->this$0:Lcom/vlingo/client/social/SocialUpdateActivity;

    iget-object v1, p0, Lcom/vlingo/client/social/SocialUpdateActivity$8;->this$0:Lcom/vlingo/client/social/SocialUpdateActivity;

    #getter for: Lcom/vlingo/client/social/SocialUpdateActivity;->popupLoginAccountType:I
    invoke-static {v1}, Lcom/vlingo/client/social/SocialUpdateActivity;->access$900(Lcom/vlingo/client/social/SocialUpdateActivity;)I

    move-result v1

    #calls: Lcom/vlingo/client/social/SocialUpdateActivity;->handleNetworkButtonToggle(I)V
    invoke-static {v0, v1}, Lcom/vlingo/client/social/SocialUpdateActivity;->access$700(Lcom/vlingo/client/social/SocialUpdateActivity;I)V

    .line 480
    return-void
.end method
