.class Lcom/google/android/apps/plus/phone/CommentsAdapter$1;
.super Ljava/lang/Object;
.source "CommentsAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/phone/CommentsAdapter;-><init>(Landroid/content/Context;Landroid/widget/AbsListView;Lcom/google/android/apps/plus/content/EsAccount;Landroid/database/Cursor;Lcom/google/android/apps/plus/views/ItemClickListener;Lcom/google/android/apps/plus/views/CommentRowView$PlusOnePeopleClickHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/phone/CommentsAdapter;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/phone/CommentsAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/CommentsAdapter$1;->this$0:Lcom/google/android/apps/plus/phone/CommentsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMovedToScrapHeap(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 86
    move-object v0, p1

    check-cast v0, Lcom/google/android/apps/plus/views/CommentRowView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/CommentRowView;->clear()V

    .line 87
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/CommentsAdapter$1;->this$0:Lcom/google/android/apps/plus/phone/CommentsAdapter;

    #getter for: Lcom/google/android/apps/plus/phone/CommentsAdapter;->mViews:Ljava/util/List;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/CommentsAdapter;->access$000(Lcom/google/android/apps/plus/phone/CommentsAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 88
    return-void
.end method
