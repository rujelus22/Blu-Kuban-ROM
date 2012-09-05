.class Lcom/android/launcher2/Launcher$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher;->shrinkAndFadeInFolderIcon(Lcom/android/launcher2/FolderIcon;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;

.field final synthetic val$layout:Lcom/android/launcher2/CellLayout;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/CellLayout;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1873
    iput-object p1, p0, Lcom/android/launcher2/Launcher$9;->this$0:Lcom/android/launcher2/Launcher;

    iput-object p2, p0, Lcom/android/launcher2/Launcher$9;->val$layout:Lcom/android/launcher2/CellLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3
    .parameter "animation"

    .prologue
    .line 1876
    iget-object v0, p0, Lcom/android/launcher2/Launcher$9;->val$layout:Lcom/android/launcher2/CellLayout;

    if-eqz v0, :cond_9

    .line 1877
    iget-object v0, p0, Lcom/android/launcher2/Launcher$9;->val$layout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->clearFolderLeaveBehind()V

    .line 1879
    :cond_9
    return-void
.end method
