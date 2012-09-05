.class Lcom/sec/android/app/twlauncher/Workspace$2;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/Workspace;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/Workspace;)V
    .registers 2
    .parameter

    .prologue
    .line 3671
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Workspace$2;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 3673
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace$2;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    iget v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    .line 3674
    .local v0, nextScreen:I
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace$2;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    #getter for: Lcom/sec/android/app/twlauncher/Workspace;->mEndScreen:I
    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Workspace;->access$300(Lcom/sec/android/app/twlauncher/Workspace;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5b

    .line 3675
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace$2;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    #getter for: Lcom/sec/android/app/twlauncher/Workspace;->mScrollDirection:I
    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Workspace;->access$400(Lcom/sec/android/app/twlauncher/Workspace;)I

    move-result v1

    if-lez v1, :cond_3c

    .line 3676
    add-int/lit8 v0, v0, 0x1

    .line 3677
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace$2;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Workspace;->access$410(Lcom/sec/android/app/twlauncher/Workspace;)I

    .line 3691
    :goto_1d
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace$2;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_5e

    if-ltz v0, :cond_5e

    .line 3692
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace$2;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace$2;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    iget-object v2, v2, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    const/16 v3, 0x12c

    invoke-virtual {v1, v2, v0, v3}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(Landroid/view/animation/Interpolator;II)V

    .line 3693
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace$2;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, p0, v2, v3}, Lcom/sec/android/app/twlauncher/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3697
    :goto_3b
    return-void

    .line 3678
    :cond_3c
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace$2;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    #getter for: Lcom/sec/android/app/twlauncher/Workspace;->mScrollDirection:I
    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Workspace;->access$400(Lcom/sec/android/app/twlauncher/Workspace;)I

    move-result v1

    if-gez v1, :cond_4c

    .line 3679
    add-int/lit8 v0, v0, -0x1

    .line 3680
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace$2;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Workspace;->access$408(Lcom/sec/android/app/twlauncher/Workspace;)I

    goto :goto_1d

    .line 3682
    :cond_4c
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace$2;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    iput v3, v1, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    .line 3683
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace$2;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->clearFastScrollFactor()V

    .line 3684
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace$2;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    #setter for: Lcom/sec/android/app/twlauncher/Workspace;->mIsAutoScrolling:Z
    invoke-static {v1, v3}, Lcom/sec/android/app/twlauncher/Workspace;->access$502(Lcom/sec/android/app/twlauncher/Workspace;Z)Z

    goto :goto_3b

    .line 3688
    :cond_5b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 3695
    :cond_5e
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace$2;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    #setter for: Lcom/sec/android/app/twlauncher/Workspace;->mIsAutoScrolling:Z
    invoke-static {v1, v3}, Lcom/sec/android/app/twlauncher/Workspace;->access$502(Lcom/sec/android/app/twlauncher/Workspace;Z)Z

    goto :goto_3b
.end method
