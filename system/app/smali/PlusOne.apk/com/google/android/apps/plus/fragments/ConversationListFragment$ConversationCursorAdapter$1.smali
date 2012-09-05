.class Lcom/google/android/apps/plus/fragments/ConversationListFragment$ConversationCursorAdapter$1;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/ConversationListFragment$ConversationCursorAdapter;-><init>(Landroid/content/Context;Landroid/widget/AbsListView;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/ConversationListFragment$ConversationCursorAdapter;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/ConversationListFragment$ConversationCursorAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 344
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment$ConversationCursorAdapter$1;->this$0:Lcom/google/android/apps/plus/fragments/ConversationListFragment$ConversationCursorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMovedToScrapHeap(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 350
    move-object v0, p1

    check-cast v0, Lcom/google/android/apps/plus/views/ConversationListItemView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/ConversationListItemView;->clear()V

    .line 351
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment$ConversationCursorAdapter$1;->this$0:Lcom/google/android/apps/plus/fragments/ConversationListFragment$ConversationCursorAdapter;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/ConversationListFragment$ConversationCursorAdapter;->mViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 352
    return-void
.end method
