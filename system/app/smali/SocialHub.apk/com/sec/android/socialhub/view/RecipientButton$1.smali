.class Lcom/sec/android/socialhub/view/RecipientButton$1;
.super Ljava/lang/Object;
.source "RecipientButton.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/view/RecipientButton;->delete(Landroid/os/Handler;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/view/RecipientButton;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/view/RecipientButton;Landroid/os/Handler;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/sec/android/socialhub/view/RecipientButton$1;->this$0:Lcom/sec/android/socialhub/view/RecipientButton;

    iput-object p2, p0, Lcom/sec/android/socialhub/view/RecipientButton$1;->val$handler:Landroid/os/Handler;

    iput p3, p0, Lcom/sec/android/socialhub/view/RecipientButton$1;->val$id:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter "arg0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sec/android/socialhub/view/RecipientButton$1;->val$handler:Landroid/os/Handler;

    iget v1, p0, Lcom/sec/android/socialhub/view/RecipientButton$1;->val$id:I

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 117
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "arg0"

    .prologue
    .line 113
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "arg0"

    .prologue
    .line 110
    return-void
.end method
