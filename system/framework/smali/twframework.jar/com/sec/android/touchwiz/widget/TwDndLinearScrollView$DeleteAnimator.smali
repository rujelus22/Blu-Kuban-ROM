.class Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$DeleteAnimator;
.super Ljava/lang/Object;
.source "TwDndLinearScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteAnimator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;


# direct methods
.method private constructor <init>(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;)V
    .registers 2
    .parameter

    .prologue
    .line 816
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$DeleteAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 816
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$DeleteAnimator;-><init>(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 818
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$DeleteAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mCustomLayout:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->access$200(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;)Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;

    move-result-object v2

    if-eqz v2, :cond_2d

    .line 820
    const/4 v1, 0x0

    .local v1, i:I
    :goto_9
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$DeleteAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDeleteChildren:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->access$300(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2d

    .line 821
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$DeleteAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDeleteChildren:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->access$300(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 822
    .local v0, deleteView:Landroid/view/View;
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$DeleteAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mCustomLayout:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->access$200(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;)Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->removeView(Landroid/view/View;)V

    .line 820
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 825
    .end local v0           #deleteView:Landroid/view/View;
    .end local v1           #i:I
    :cond_2d
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$DeleteAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDeleteChildren:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->access$300(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 826
    return-void
.end method
