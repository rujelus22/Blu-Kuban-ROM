.class Lcom/vlingo/client/superdialer/SuperDialerActivity$2;
.super Ljava/lang/Object;
.source "SuperDialerActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/superdialer/SuperDialerActivity;->showList(Landroid/widget/ListView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/superdialer/SuperDialerActivity;

.field final synthetic val$whichList:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/vlingo/client/superdialer/SuperDialerActivity;Landroid/widget/ListView;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity$2;->this$0:Lcom/vlingo/client/superdialer/SuperDialerActivity;

    iput-object p2, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity$2;->val$whichList:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 6
    .parameter "animation"

    .prologue
    .line 268
    iget-object v1, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity$2;->this$0:Lcom/vlingo/client/superdialer/SuperDialerActivity;

    iget-object v2, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity$2;->val$whichList:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity$2;->val$whichList:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity$2;->this$0:Lcom/vlingo/client/superdialer/SuperDialerActivity;

    #getter for: Lcom/vlingo/client/superdialer/SuperDialerActivity;->businessListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->access$000(Lcom/vlingo/client/superdialer/SuperDialerActivity;)Landroid/widget/ListView;

    move-result-object v3

    if-ne v0, v3, :cond_1c

    const/4 v0, 0x1

    :goto_f
    #calls: Lcom/vlingo/client/superdialer/SuperDialerActivity;->doShowList(Landroid/widget/ListView;Z)V
    invoke-static {v1, v2, v0}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->access$100(Lcom/vlingo/client/superdialer/SuperDialerActivity;Landroid/widget/ListView;Z)V

    .line 269
    iget-object v0, p0, Lcom/vlingo/client/superdialer/SuperDialerActivity$2;->this$0:Lcom/vlingo/client/superdialer/SuperDialerActivity;

    #getter for: Lcom/vlingo/client/superdialer/SuperDialerActivity;->businessListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/vlingo/client/superdialer/SuperDialerActivity;->access$000(Lcom/vlingo/client/superdialer/SuperDialerActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->clearAnimation()V

    .line 270
    return-void

    .line 268
    :cond_1c
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 265
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 262
    return-void
.end method
