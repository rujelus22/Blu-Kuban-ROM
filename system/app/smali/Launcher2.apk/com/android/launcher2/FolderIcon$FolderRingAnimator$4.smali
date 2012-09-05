.class Lcom/android/launcher2/FolderIcon$FolderRingAnimator$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FolderIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->animateToNaturalState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;


# direct methods
.method constructor <init>(Lcom/android/launcher2/FolderIcon$FolderRingAnimator;)V
    .registers 2
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/launcher2/FolderIcon$FolderRingAnimator$4;->this$0:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon$FolderRingAnimator$4;->this$0:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    #getter for: Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->mCellLayout:Lcom/android/launcher2/CellLayout;
    invoke-static {v0}, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->access$100(Lcom/android/launcher2/FolderIcon$FolderRingAnimator;)Lcom/android/launcher2/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 232
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon$FolderRingAnimator$4;->this$0:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    #getter for: Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->mCellLayout:Lcom/android/launcher2/CellLayout;
    invoke-static {v0}, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->access$100(Lcom/android/launcher2/FolderIcon$FolderRingAnimator;)Lcom/android/launcher2/CellLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/FolderIcon$FolderRingAnimator$4;->this$0:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->hideFolderAccept(Lcom/android/launcher2/FolderIcon$FolderRingAnimator;)V

    .line 234
    :cond_13
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon$FolderRingAnimator$4;->this$0:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    iget-object v0, v0, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    if-eqz v0, :cond_25

    .line 235
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon$FolderRingAnimator$4;->this$0:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    iget-object v0, v0, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    #getter for: Lcom/android/launcher2/FolderIcon;->mPreviewBackground:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/launcher2/FolderIcon;->access$200(Lcom/android/launcher2/FolderIcon;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 237
    :cond_25
    return-void
.end method
