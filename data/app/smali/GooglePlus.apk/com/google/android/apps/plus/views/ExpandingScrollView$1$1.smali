.class Lcom/google/android/apps/plus/views/ExpandingScrollView$1$1;
.super Ljava/lang/Object;
.source "ExpandingScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/views/ExpandingScrollView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/plus/views/ExpandingScrollView$1;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/views/ExpandingScrollView$1;)V
    .registers 2
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/google/android/apps/plus/views/ExpandingScrollView$1$1;->this$1:Lcom/google/android/apps/plus/views/ExpandingScrollView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 206
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ExpandingScrollView$1$1;->this$1:Lcom/google/android/apps/plus/views/ExpandingScrollView$1;

    iget-object v2, v2, Lcom/google/android/apps/plus/views/ExpandingScrollView$1;->this$0:Lcom/google/android/apps/plus/views/ExpandingScrollView;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/ExpandingScrollView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 207
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ExpandingScrollView$1$1;->this$1:Lcom/google/android/apps/plus/views/ExpandingScrollView$1;

    iget-object v2, v2, Lcom/google/android/apps/plus/views/ExpandingScrollView$1;->this$0:Lcom/google/android/apps/plus/views/ExpandingScrollView;

    invoke-virtual {v2, v1}, Lcom/google/android/apps/plus/views/ExpandingScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 208
    .local v0, child:Landroid/view/View;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 206
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 210
    .end local v0           #child:Landroid/view/View;
    :cond_1a
    return-void
.end method
