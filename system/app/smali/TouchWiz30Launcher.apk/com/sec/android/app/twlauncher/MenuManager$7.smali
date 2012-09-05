.class Lcom/sec/android/app/twlauncher/MenuManager$7;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/MenuManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsEnd:Z

.field final synthetic this$0:Lcom/sec/android/app/twlauncher/MenuManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/MenuManager;)V
    .registers 2
    .parameter

    .prologue
    .line 4683
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager$7;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 7
    .parameter "arg0"

    .prologue
    const/4 v4, 0x1

    .line 4687
    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/MenuManager$7;->mIsEnd:Z

    if-eqz v2, :cond_6

    .line 4698
    :goto_5
    return-void

    .line 4689
    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager$7;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->setClipChildren(Z)V

    .line 4691
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager$7;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 4692
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_12
    if-ge v1, v0, :cond_21

    .line 4693
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager$7;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4692
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 4696
    :cond_21
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager$7;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/MenuManager;->unlock()V

    .line 4697
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/MenuManager$7;->mIsEnd:Z

    goto :goto_5
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "arg0"

    .prologue
    .line 4702
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter "arg0"

    .prologue
    const/4 v1, 0x0

    .line 4705
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$7;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->setClipChildren(Z)V

    .line 4706
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$7;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->lock()V

    .line 4707
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/MenuManager$7;->mIsEnd:Z

    .line 4708
    return-void
.end method
