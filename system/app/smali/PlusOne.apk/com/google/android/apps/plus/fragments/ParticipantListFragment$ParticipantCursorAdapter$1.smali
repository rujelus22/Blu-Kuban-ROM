.class Lcom/google/android/apps/plus/fragments/ParticipantListFragment$ParticipantCursorAdapter$1;
.super Ljava/lang/Object;
.source "ParticipantListFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/ParticipantListFragment$ParticipantCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/AbsListView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/ParticipantListFragment$ParticipantCursorAdapter;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/ParticipantListFragment$ParticipantCursorAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/ParticipantListFragment$ParticipantCursorAdapter$1;->this$0:Lcom/google/android/apps/plus/fragments/ParticipantListFragment$ParticipantCursorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMovedToScrapHeap(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 230
    move-object v0, p1

    check-cast v0, Lcom/google/android/apps/plus/views/ParticipantListItemView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/ParticipantListItemView;->clear()V

    .line 231
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ParticipantListFragment$ParticipantCursorAdapter$1;->this$0:Lcom/google/android/apps/plus/fragments/ParticipantListFragment$ParticipantCursorAdapter;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/ParticipantListFragment$ParticipantCursorAdapter;->mViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 232
    return-void
.end method
