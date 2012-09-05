.class Lcom/android/launcher2/Workspace$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Workspace;

.field final synthetic val$oldStateIsSmall:Z

.field final synthetic val$stateIsNormal:Z


# direct methods
.method constructor <init>(Lcom/android/launcher2/Workspace;ZZ)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1702
    iput-object p1, p0, Lcom/android/launcher2/Workspace$5;->this$0:Lcom/android/launcher2/Workspace;

    iput-boolean p2, p0, Lcom/android/launcher2/Workspace$5;->val$stateIsNormal:Z

    iput-boolean p3, p0, Lcom/android/launcher2/Workspace$5;->val$oldStateIsSmall:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5
    .parameter "animation"

    .prologue
    .line 1709
    iget-object v2, p0, Lcom/android/launcher2/Workspace$5;->this$0:Lcom/android/launcher2/Workspace;

    iget-boolean v2, v2, Lcom/android/launcher2/Workspace;->mFadeInAdjacentScreens:Z

    if-nez v2, :cond_27

    iget-boolean v2, p0, Lcom/android/launcher2/Workspace$5;->val$stateIsNormal:Z

    if-eqz v2, :cond_27

    iget-boolean v2, p0, Lcom/android/launcher2/Workspace$5;->val$oldStateIsSmall:Z

    if-eqz v2, :cond_27

    .line 1710
    const/4 v1, 0x0

    .local v1, i:I
    :goto_f
    iget-object v2, p0, Lcom/android/launcher2/Workspace$5;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_27

    .line 1711
    iget-object v2, p0, Lcom/android/launcher2/Workspace$5;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 1712
    .local v0, cl:Lcom/android/launcher2/CellLayout;
    const/high16 v2, 0x3f80

    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->setAlpha(F)V

    .line 1710
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1715
    .end local v0           #cl:Lcom/android/launcher2/CellLayout;
    .end local v1           #i:I
    :cond_27
    return-void
.end method
