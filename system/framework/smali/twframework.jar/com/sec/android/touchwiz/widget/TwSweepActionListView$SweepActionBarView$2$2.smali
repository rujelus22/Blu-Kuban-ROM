.class Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView$2$2;
.super Ljava/lang/Object;
.source "TwSweepActionListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView$2;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView$2;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView$2;)V
    .registers 2
    .parameter

    .prologue
    .line 1455
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView$2$2;->this$2:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1462
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView$2$2;->this$2:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView$2;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView$2;->this$1:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bSweepEnd:Z
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$1202(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;Z)Z

    .line 1463
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView$2$2;->this$2:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView$2;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView$2;->this$1:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$900(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView$2$2;->this$2:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView$2;

    iget-object v1, v1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView$2;->this$1:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    iget v1, v1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->index:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;->onSweepActionFired(II)V

    .line 1467
    return-void
.end method
