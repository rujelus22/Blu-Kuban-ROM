.class Lcom/sec/android/app/twlauncher/Search$1;
.super Ljava/lang/Object;
.source "Search.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/twlauncher/Search;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mShowSearchDialogRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/sec/android/app/twlauncher/Search;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/Search;)V
    .registers 3
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Search$1;->this$0:Lcom/sec/android/app/twlauncher/Search;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Lcom/sec/android/app/twlauncher/Search$1$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/Search$1$1;-><init>(Lcom/sec/android/app/twlauncher/Search$1;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Search$1;->mShowSearchDialogRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 124
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 127
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 8
    .parameter "animation"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Search$1;->this$0:Lcom/sec/android/app/twlauncher/Search;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Search;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Search$1;->mShowSearchDialogRunnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Search$1;->this$0:Lcom/sec/android/app/twlauncher/Search;

    #getter for: Lcom/sec/android/app/twlauncher/Search;->mMorphAnimation:Landroid/view/animation/Animation;
    invoke-static {v2}, Lcom/sec/android/app/twlauncher/Search;->access$200(Lcom/sec/android/app/twlauncher/Search;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x50

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 140
    return-void
.end method
