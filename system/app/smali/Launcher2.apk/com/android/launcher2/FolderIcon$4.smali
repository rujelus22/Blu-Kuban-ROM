.class Lcom/android/launcher2/FolderIcon$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FolderIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/FolderIcon;->animateFirstItem(Landroid/graphics/drawable/Drawable;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/FolderIcon;


# direct methods
.method constructor <init>(Lcom/android/launcher2/FolderIcon;)V
    .registers 2
    .parameter

    .prologue
    .line 546
    iput-object p1, p0, Lcom/android/launcher2/FolderIcon$4;->this$0:Lcom/android/launcher2/FolderIcon;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 553
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon$4;->this$0:Lcom/android/launcher2/FolderIcon;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher2/FolderIcon;->mAnimating:Z

    .line 554
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 549
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon$4;->this$0:Lcom/android/launcher2/FolderIcon;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher2/FolderIcon;->mAnimating:Z

    .line 550
    return-void
.end method
