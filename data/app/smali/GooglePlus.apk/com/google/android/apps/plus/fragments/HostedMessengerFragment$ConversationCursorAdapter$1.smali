.class Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$ConversationCursorAdapter$1;
.super Ljava/lang/Object;
.source "HostedMessengerFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$ConversationCursorAdapter;-><init>(Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;Landroid/content/Context;Landroid/widget/AbsListView;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$ConversationCursorAdapter;

.field final synthetic val$this$0:Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$ConversationCursorAdapter;Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 360
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$ConversationCursorAdapter$1;->this$1:Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$ConversationCursorAdapter;

    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$ConversationCursorAdapter$1;->val$this$0:Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMovedToScrapHeap(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 366
    instance-of v0, p1, Lcom/google/android/apps/plus/views/ConversationListItemView;

    if-eqz v0, :cond_a

    .line 367
    check-cast p1, Lcom/google/android/apps/plus/views/ConversationListItemView;

    .end local p1
    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/ConversationListItemView;->clear()V

    .line 371
    :cond_9
    :goto_9
    return-void

    .line 368
    .restart local p1
    :cond_a
    instance-of v0, p1, Lcom/google/android/apps/plus/views/SuggestedParticipantView;

    if-eqz v0, :cond_9

    .line 369
    check-cast p1, Lcom/google/android/apps/plus/views/SuggestedParticipantView;

    .end local p1
    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/SuggestedParticipantView;->clear()V

    goto :goto_9
.end method
