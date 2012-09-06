.class Lcom/google/android/apps/plus/phone/PhotoViewAdapter$1;
.super Ljava/lang/Object;
.source "PhotoViewAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/phone/PhotoViewAdapter;-><init>(Landroid/content/Context;Landroid/widget/AbsListView;Lcom/google/android/apps/plus/content/EsAccount;Landroid/database/Cursor;Landroid/view/View$OnClickListener;Lcom/google/android/apps/plus/views/ItemClickListener;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/phone/PhotoViewAdapter;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/phone/PhotoViewAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter$1;->this$0:Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMovedToScrapHeap(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 122
    instance-of v0, p1, Lcom/google/android/apps/plus/views/CommentRowView;

    if-eqz v0, :cond_14

    move-object v0, p1

    .line 123
    check-cast v0, Lcom/google/android/apps/plus/views/CommentRowView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/CommentRowView;->clear()V

    .line 127
    :cond_a
    :goto_a
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter$1;->this$0:Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    #getter for: Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mViews:Ljava/util/List;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->access$100(Lcom/google/android/apps/plus/phone/PhotoViewAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 128
    return-void

    .line 124
    :cond_14
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter$1;->this$0:Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    #getter for: Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mCommentLoadView:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->access$000(Lcom/google/android/apps/plus/phone/PhotoViewAdapter;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_a

    .line 125
    const v0, 0x7f090079

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a
.end method
