.class Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter$1;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;-><init>(Lcom/google/android/apps/plus/fragments/MessageListFragment;Landroid/widget/AbsListView;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 484
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter$1;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMovedToScrapHeap(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 490
    instance-of v0, p1, Lcom/google/android/apps/plus/views/MessageListItemView;

    if-eqz v0, :cond_12

    move-object v0, p1

    .line 491
    check-cast v0, Lcom/google/android/apps/plus/views/MessageListItemView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/MessageListItemView;->clear()V

    .line 495
    :cond_a
    :goto_a
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter$1;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->mViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 496
    return-void

    .line 492
    :cond_12
    instance-of v0, p1, Lcom/google/android/apps/plus/views/MessageListItemViewImage;

    if-eqz v0, :cond_a

    move-object v0, p1

    .line 493
    check-cast v0, Lcom/google/android/apps/plus/views/MessageListItemViewImage;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/MessageListItemViewImage;->clear()V

    goto :goto_a
.end method
