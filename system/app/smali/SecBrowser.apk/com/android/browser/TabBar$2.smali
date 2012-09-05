.class Lcom/android/browser/TabBar$2;
.super Ljava/lang/Object;
.source "TabBar.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/TabBar;->animateTabIn(Lcom/android/browser/Tab;Lcom/android/browser/TabBar$TabView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/TabBar;

.field final synthetic val$tab:Lcom/android/browser/Tab;

.field final synthetic val$tv:Lcom/android/browser/TabBar$TabView;


# direct methods
.method constructor <init>(Lcom/android/browser/TabBar;Lcom/android/browser/Tab;Lcom/android/browser/TabBar$TabView;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 550
    iput-object p1, p0, Lcom/android/browser/TabBar$2;->this$0:Lcom/android/browser/TabBar;

    iput-object p2, p0, Lcom/android/browser/TabBar$2;->val$tab:Lcom/android/browser/Tab;

    iput-object p3, p0, Lcom/android/browser/TabBar$2;->val$tv:Lcom/android/browser/TabBar$TabView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 554
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 558
    iget-object v0, p0, Lcom/android/browser/TabBar$2;->this$0:Lcom/android/browser/TabBar;

    #getter for: Lcom/android/browser/TabBar;->mUi:Lcom/android/browser/XLargeUi;
    invoke-static {v0}, Lcom/android/browser/TabBar;->access$200(Lcom/android/browser/TabBar;)Lcom/android/browser/XLargeUi;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/TabBar$2;->val$tab:Lcom/android/browser/Tab;

    invoke-virtual {v0, v1}, Lcom/android/browser/XLargeUi;->onAddTabCompleted(Lcom/android/browser/Tab;)V

    .line 559
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 563
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/browser/TabBar$2;->this$0:Lcom/android/browser/TabBar;

    #getter for: Lcom/android/browser/TabBar;->mTabs:Lcom/android/browser/TabScrollView;
    invoke-static {v0}, Lcom/android/browser/TabBar;->access$2200(Lcom/android/browser/TabBar;)Lcom/android/browser/TabScrollView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/TabBar$2;->val$tv:Lcom/android/browser/TabBar$TabView;

    invoke-virtual {v0, v1}, Lcom/android/browser/TabScrollView;->addTab(Landroid/view/View;)V

    .line 568
    return-void
.end method
