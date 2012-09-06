.class abstract Lcom/google/android/opengl/glview/GridView$GridIndexEventTracker;
.super Ljava/lang/Object;
.source "GridView.java"

# interfaces
.implements Lcom/google/android/opengl/glview/GLView$EventTracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/opengl/glview/GridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "GridIndexEventTracker"
.end annotation


# instance fields
.field private final mGridIndex:I

.field private final mSourceViewId:I

.field final synthetic this$0:Lcom/google/android/opengl/glview/GridView;


# direct methods
.method public constructor <init>(Lcom/google/android/opengl/glview/GridView;II)V
    .registers 5
    .parameter
    .parameter "sourceViewId"
    .parameter "gridIndex"

    .prologue
    .line 645
    iput-object p1, p0, Lcom/google/android/opengl/glview/GridView$GridIndexEventTracker;->this$0:Lcom/google/android/opengl/glview/GridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 646
    iput p2, p0, Lcom/google/android/opengl/glview/GridView$GridIndexEventTracker;->mSourceViewId:I

    .line 647
    iput p3, p0, Lcom/google/android/opengl/glview/GridView$GridIndexEventTracker;->mGridIndex:I

    .line 648
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/glview/GridView$GridIndexEventTracker;->highlightTracked(Z)V

    .line 649
    return-void
.end method

.method private getTrackedView()Lcom/google/android/opengl/glview/GLView;
    .registers 3

    .prologue
    .line 677
    iget-object v0, p0, Lcom/google/android/opengl/glview/GridView$GridIndexEventTracker;->this$0:Lcom/google/android/opengl/glview/GridView;

    iget v1, p0, Lcom/google/android/opengl/glview/GridView$GridIndexEventTracker;->mGridIndex:I

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GridView;->getChildAtGridIndex(I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected highlightTracked(Z)V
    .registers 5
    .parameter "highlight"

    .prologue
    .line 652
    invoke-direct {p0}, Lcom/google/android/opengl/glview/GridView$GridIndexEventTracker;->getTrackedView()Lcom/google/android/opengl/glview/GLView;

    move-result-object v0

    .line 653
    .local v0, view:Lcom/google/android/opengl/glview/GLView;
    if-eqz v0, :cond_9

    .line 654
    invoke-virtual {v0, p1}, Lcom/google/android/opengl/glview/GLView;->highlight(Z)V

    .line 656
    :cond_9
    if-eqz p1, :cond_13

    .line 657
    iget-object v1, p0, Lcom/google/android/opengl/glview/GridView$GridIndexEventTracker;->this$0:Lcom/google/android/opengl/glview/GridView;

    iget v2, p0, Lcom/google/android/opengl/glview/GridView$GridIndexEventTracker;->mGridIndex:I

    #setter for: Lcom/google/android/opengl/glview/GridView;->mSelectedGridIndex:I
    invoke-static {v1, v2}, Lcom/google/android/opengl/glview/GridView;->access$002(Lcom/google/android/opengl/glview/GridView;I)I

    .line 661
    :goto_12
    return-void

    .line 659
    :cond_13
    iget-object v1, p0, Lcom/google/android/opengl/glview/GridView$GridIndexEventTracker;->this$0:Lcom/google/android/opengl/glview/GridView;

    const/4 v2, -0x1

    #setter for: Lcom/google/android/opengl/glview/GridView;->mSelectedGridIndex:I
    invoke-static {v1, v2}, Lcom/google/android/opengl/glview/GridView;->access$002(Lcom/google/android/opengl/glview/GridView;I)I

    goto :goto_12
.end method

.method protected listenTracked(I)Z
    .registers 6
    .parameter "msg"

    .prologue
    .line 672
    iget-object v0, p0, Lcom/google/android/opengl/glview/GridView$GridIndexEventTracker;->this$0:Lcom/google/android/opengl/glview/GridView;

    iget v1, p0, Lcom/google/android/opengl/glview/GridView$GridIndexEventTracker;->mSourceViewId:I

    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lcom/google/android/opengl/glview/GridView$GridIndexEventTracker;->mGridIndex:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0}, Lcom/google/android/opengl/glview/GridView$GridIndexEventTracker;->getTrackedView()Lcom/google/android/opengl/glview/GLView;

    move-result-object v3

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/google/android/opengl/glview/GridView;->listen(IILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected testAndFlagsTracked(I)Z
    .registers 4
    .parameter "flags"

    .prologue
    .line 664
    invoke-direct {p0}, Lcom/google/android/opengl/glview/GridView$GridIndexEventTracker;->getTrackedView()Lcom/google/android/opengl/glview/GLView;

    move-result-object v0

    .line 665
    .local v0, view:Lcom/google/android/opengl/glview/GLView;
    if-eqz v0, :cond_b

    .line 666
    invoke-virtual {v0, p1}, Lcom/google/android/opengl/glview/GLView;->testAndFlags(I)Z

    move-result v1

    .line 668
    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method
