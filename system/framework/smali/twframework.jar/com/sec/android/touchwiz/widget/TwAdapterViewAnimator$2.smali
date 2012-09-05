.class Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$2;
.super Ljava/lang/Object;
.source "TwAdapterViewAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->checkForAndHandleDataChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;)V
    .registers 2
    .parameter

    .prologue
    .line 729
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$2;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 731
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$2;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->handleDataChanged()V

    .line 734
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$2;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mWhichChild:I

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$2;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->getWindowSize()I

    move-result v1

    if-lt v0, v1, :cond_2a

    .line 735
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$2;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;

    iput v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mWhichChild:I

    .line 737
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$2;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$2;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;

    iget v1, v1, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mWhichChild:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->showOnly(IZ)V

    .line 741
    :cond_1f
    :goto_1f
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$2;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->refreshChildren()V

    .line 742
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$2;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->requestLayout()V

    .line 743
    return-void

    .line 738
    :cond_2a
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$2;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOldItemCount:I

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$2;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->getCount()I

    move-result v1

    if-eq v0, v1, :cond_1f

    .line 739
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$2;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$2;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;

    iget v1, v1, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mWhichChild:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->showOnly(IZ)V

    goto :goto_1f
.end method
