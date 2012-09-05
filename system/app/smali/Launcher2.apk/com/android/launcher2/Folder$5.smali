.class Lcom/android/launcher2/Folder$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Folder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Folder;->animateClosed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Folder;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Folder;)V
    .registers 2
    .parameter

    .prologue
    .line 488
    iput-object p1, p0, Lcom/android/launcher2/Folder$5;->this$0:Lcom/android/launcher2/Folder;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/launcher2/Folder$5;->this$0:Lcom/android/launcher2/Folder;

    #calls: Lcom/android/launcher2/Folder;->onCloseComplete()V
    invoke-static {v0}, Lcom/android/launcher2/Folder;->access$400(Lcom/android/launcher2/Folder;)V

    .line 492
    iget-object v0, p0, Lcom/android/launcher2/Folder$5;->this$0:Lcom/android/launcher2/Folder;

    const/4 v1, 0x0

    #setter for: Lcom/android/launcher2/Folder;->mState:I
    invoke-static {v0, v1}, Lcom/android/launcher2/Folder;->access$202(Lcom/android/launcher2/Folder;I)I

    .line 493
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 6
    .parameter "animation"

    .prologue
    .line 496
    iget-object v0, p0, Lcom/android/launcher2/Folder$5;->this$0:Lcom/android/launcher2/Folder;

    const/16 v1, 0x20

    iget-object v2, p0, Lcom/android/launcher2/Folder$5;->this$0:Lcom/android/launcher2/Folder;

    #getter for: Lcom/android/launcher2/Folder;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/launcher2/Folder;->access$500(Lcom/android/launcher2/Folder;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0054

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/launcher2/Folder;->sendCustomAccessibilityEvent(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/launcher2/Folder;->access$100(Lcom/android/launcher2/Folder;ILjava/lang/String;)V

    .line 498
    iget-object v0, p0, Lcom/android/launcher2/Folder$5;->this$0:Lcom/android/launcher2/Folder;

    const/4 v1, 0x1

    #setter for: Lcom/android/launcher2/Folder;->mState:I
    invoke-static {v0, v1}, Lcom/android/launcher2/Folder;->access$202(Lcom/android/launcher2/Folder;I)I

    .line 499
    return-void
.end method
