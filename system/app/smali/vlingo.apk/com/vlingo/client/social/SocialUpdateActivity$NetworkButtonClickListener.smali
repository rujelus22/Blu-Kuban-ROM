.class Lcom/vlingo/client/social/SocialUpdateActivity$NetworkButtonClickListener;
.super Ljava/lang/Object;
.source "SocialUpdateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/social/SocialUpdateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkButtonClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/social/SocialUpdateActivity;


# direct methods
.method private constructor <init>(Lcom/vlingo/client/social/SocialUpdateActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 319
    iput-object p1, p0, Lcom/vlingo/client/social/SocialUpdateActivity$NetworkButtonClickListener;->this$0:Lcom/vlingo/client/social/SocialUpdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/social/SocialUpdateActivity;Lcom/vlingo/client/social/SocialUpdateActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 319
    invoke-direct {p0, p1}, Lcom/vlingo/client/social/SocialUpdateActivity$NetworkButtonClickListener;-><init>(Lcom/vlingo/client/social/SocialUpdateActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 321
    const/4 v1, 0x0

    .local v1, network:I
    move-object v0, p1

    .line 322
    check-cast v0, Landroid/widget/ImageButton;

    .line 323
    .local v0, btn:Landroid/widget/ImageButton;
    iget-object v2, p0, Lcom/vlingo/client/social/SocialUpdateActivity$NetworkButtonClickListener;->this$0:Lcom/vlingo/client/social/SocialUpdateActivity;

    #getter for: Lcom/vlingo/client/social/SocialUpdateActivity;->networkButtonFB:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/vlingo/client/social/SocialUpdateActivity;->access$400(Lcom/vlingo/client/social/SocialUpdateActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    if-ne v0, v2, :cond_14

    .line 324
    const/16 v1, 0x8

    .line 332
    :cond_e
    :goto_e
    iget-object v2, p0, Lcom/vlingo/client/social/SocialUpdateActivity$NetworkButtonClickListener;->this$0:Lcom/vlingo/client/social/SocialUpdateActivity;

    #calls: Lcom/vlingo/client/social/SocialUpdateActivity;->handleNetworkButtonToggle(I)V
    invoke-static {v2, v1}, Lcom/vlingo/client/social/SocialUpdateActivity;->access$700(Lcom/vlingo/client/social/SocialUpdateActivity;I)V

    .line 333
    return-void

    .line 326
    :cond_14
    iget-object v2, p0, Lcom/vlingo/client/social/SocialUpdateActivity$NetworkButtonClickListener;->this$0:Lcom/vlingo/client/social/SocialUpdateActivity;

    #getter for: Lcom/vlingo/client/social/SocialUpdateActivity;->networkButtonFS:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/vlingo/client/social/SocialUpdateActivity;->access$500(Lcom/vlingo/client/social/SocialUpdateActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    if-ne v0, v2, :cond_1e

    .line 327
    const/4 v1, 0x2

    goto :goto_e

    .line 329
    :cond_1e
    iget-object v2, p0, Lcom/vlingo/client/social/SocialUpdateActivity$NetworkButtonClickListener;->this$0:Lcom/vlingo/client/social/SocialUpdateActivity;

    #getter for: Lcom/vlingo/client/social/SocialUpdateActivity;->networkButtonTW:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/vlingo/client/social/SocialUpdateActivity;->access$600(Lcom/vlingo/client/social/SocialUpdateActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    if-ne v0, v2, :cond_e

    .line 330
    const/4 v1, 0x4

    goto :goto_e
.end method
