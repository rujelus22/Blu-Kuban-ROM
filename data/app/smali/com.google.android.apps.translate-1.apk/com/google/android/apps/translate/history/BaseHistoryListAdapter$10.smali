.class Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$10;
.super Ljava/lang/Object;
.source "BaseHistoryListAdapter.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->setListView(Landroid/widget/ListView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 584
    iput-object p1, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$10;->this$0:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 589
    const/16 v1, 0x3e

    if-ne p2, v1, :cond_16

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_16

    iget-object v1, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$10;->this$0:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    iget-object v1, v1, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->hasTextFilter()Z

    move-result v1

    if-nez v1, :cond_16

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method
