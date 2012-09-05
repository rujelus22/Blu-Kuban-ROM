.class Lcom/vlingo/client/social/SocialUpdateActivity$7;
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
    .line 482
    iput-object p1, p0, Lcom/vlingo/client/social/SocialUpdateActivity$7;->this$0:Lcom/vlingo/client/social/SocialUpdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 484
    iget-object v0, p0, Lcom/vlingo/client/social/SocialUpdateActivity$7;->this$0:Lcom/vlingo/client/social/SocialUpdateActivity;

    #calls: Lcom/vlingo/client/social/SocialUpdateActivity;->removeCurrentDialog()V
    invoke-static {v0}, Lcom/vlingo/client/social/SocialUpdateActivity;->access$800(Lcom/vlingo/client/social/SocialUpdateActivity;)V

    .line 485
    return-void
.end method
