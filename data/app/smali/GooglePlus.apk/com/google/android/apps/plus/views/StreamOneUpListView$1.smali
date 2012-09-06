.class Lcom/google/android/apps/plus/views/StreamOneUpListView$1;
.super Ljava/lang/Object;
.source "StreamOneUpListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/views/StreamOneUpListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/views/StreamOneUpListView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/views/StreamOneUpListView;)V
    .registers 2
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/google/android/apps/plus/views/StreamOneUpListView$1;->this$0:Lcom/google/android/apps/plus/views/StreamOneUpListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 5
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 53
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 7
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 40
    if-eqz p2, :cond_19

    .line 41
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .local v1, size:I
    :goto_7
    if-ge v0, v1, :cond_19

    .line 42
    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 43
    .local v2, v:Landroid/view/View;
    instance-of v3, v2, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;

    if-eqz v3, :cond_16

    .line 44
    check-cast v2, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;

    .end local v2           #v:Landroid/view/View;
    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->cancelPressedState()V

    .line 41
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 48
    .end local v0           #i:I
    .end local v1           #size:I
    :cond_19
    return-void
.end method
