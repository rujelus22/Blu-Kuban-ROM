.class Lcom/android/launcher2/SearchDropTargetBar$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SearchDropTargetBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/SearchDropTargetBar;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/SearchDropTargetBar;


# direct methods
.method constructor <init>(Lcom/android/launcher2/SearchDropTargetBar;)V
    .registers 2
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/launcher2/SearchDropTargetBar$3;->this$0:Lcom/android/launcher2/SearchDropTargetBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar$3;->this$0:Lcom/android/launcher2/SearchDropTargetBar;

    #getter for: Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;
    invoke-static {v0}, Lcom/android/launcher2/SearchDropTargetBar;->access$100(Lcom/android/launcher2/SearchDropTargetBar;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 132
    return-void
.end method
