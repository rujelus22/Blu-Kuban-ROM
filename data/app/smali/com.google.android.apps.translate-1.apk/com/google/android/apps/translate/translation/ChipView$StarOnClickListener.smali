.class Lcom/google/android/apps/translate/translation/ChipView$StarOnClickListener;
.super Ljava/lang/Object;
.source "ChipView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/translate/translation/ChipView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StarOnClickListener"
.end annotation


# instance fields
.field private mStarBtn:Landroid/view/View;

.field final synthetic this$0:Lcom/google/android/apps/translate/translation/ChipView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/translation/ChipView;Landroid/view/View;)V
    .registers 3
    .parameter
    .parameter "starBtn"

    .prologue
    .line 902
    iput-object p1, p0, Lcom/google/android/apps/translate/translation/ChipView$StarOnClickListener;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 903
    iput-object p2, p0, Lcom/google/android/apps/translate/translation/ChipView$StarOnClickListener;->mStarBtn:Landroid/view/View;

    .line 904
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    .line 908
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/apps/translate/translation/ChipView$StarOnClickListener;->mStarBtn:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v0, v2, :cond_15

    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$StarOnClickListener;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mItemEntry:Lcom/google/android/apps/translate/history/HistoryEntry;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/ChipView;->access$3300(Lcom/google/android/apps/translate/translation/ChipView;)Lcom/google/android/apps/translate/history/HistoryEntry;

    move-result-object v0

    if-nez v0, :cond_16

    .line 923
    :cond_15
    :goto_15
    return-void

    .line 911
    :cond_16
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$StarOnClickListener;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mItemEntry:Lcom/google/android/apps/translate/history/HistoryEntry;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/ChipView;->access$3300(Lcom/google/android/apps/translate/translation/ChipView;)Lcom/google/android/apps/translate/history/HistoryEntry;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$StarOnClickListener;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mItemEntry:Lcom/google/android/apps/translate/history/HistoryEntry;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/ChipView;->access$3300(Lcom/google/android/apps/translate/translation/ChipView;)Lcom/google/android/apps/translate/history/HistoryEntry;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/apps/translate/history/HistoryEntry;->isFavorite:Z

    if-nez v0, :cond_69

    move v0, v1

    :goto_27
    iput-boolean v0, v2, Lcom/google/android/apps/translate/history/HistoryEntry;->isFavorite:Z

    .line 912
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$StarOnClickListener;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mListAdapter:Lcom/google/android/apps/translate/history/HistoryListAdapter;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/ChipView;->access$2600(Lcom/google/android/apps/translate/translation/ChipView;)Lcom/google/android/apps/translate/history/HistoryListAdapter;

    move-result-object v0

    if-eqz v0, :cond_6b

    .line 913
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$StarOnClickListener;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mListAdapter:Lcom/google/android/apps/translate/history/HistoryListAdapter;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/ChipView;->access$2600(Lcom/google/android/apps/translate/translation/ChipView;)Lcom/google/android/apps/translate/history/HistoryListAdapter;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/apps/translate/translation/ChipView$StarOnClickListener;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mItemEntry:Lcom/google/android/apps/translate/history/HistoryEntry;
    invoke-static {v2}, Lcom/google/android/apps/translate/translation/ChipView;->access$3300(Lcom/google/android/apps/translate/translation/ChipView;)Lcom/google/android/apps/translate/history/HistoryEntry;

    move-result-object v2

    iget-boolean v2, v2, Lcom/google/android/apps/translate/history/HistoryEntry;->isFavorite:Z

    iget-object v3, p0, Lcom/google/android/apps/translate/translation/ChipView$StarOnClickListener;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #calls: Lcom/google/android/apps/translate/translation/ChipView;->getPosition()I
    invoke-static {v3}, Lcom/google/android/apps/translate/translation/ChipView;->access$3400(Lcom/google/android/apps/translate/translation/ChipView;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/apps/translate/history/HistoryListAdapter;->starTranslateEntry(ZI)V

    .line 920
    :goto_48
    invoke-static {}, Lcom/google/android/apps/translate/UserActivityMgr;->get()Lcom/google/android/apps/translate/UserActivityMgr;

    move-result-object v0

    sget-object v2, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;->STARS_MINUS_UNSTARS:Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

    iget-object v3, p0, Lcom/google/android/apps/translate/translation/ChipView$StarOnClickListener;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mItemEntry:Lcom/google/android/apps/translate/history/HistoryEntry;
    invoke-static {v3}, Lcom/google/android/apps/translate/translation/ChipView;->access$3300(Lcom/google/android/apps/translate/translation/ChipView;)Lcom/google/android/apps/translate/history/HistoryEntry;

    move-result-object v3

    iget-boolean v3, v3, Lcom/google/android/apps/translate/history/HistoryEntry;->isFavorite:Z

    if-eqz v3, :cond_85

    :goto_58
    invoke-virtual {v0, v2, v1}, Lcom/google/android/apps/translate/UserActivityMgr;->incrementIntervalCount(Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;I)Lcom/google/android/apps/translate/UserActivityMgr;

    .line 922
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$StarOnClickListener;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/ChipView$StarOnClickListener;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mItemEntry:Lcom/google/android/apps/translate/history/HistoryEntry;
    invoke-static {v1}, Lcom/google/android/apps/translate/translation/ChipView;->access$3300(Lcom/google/android/apps/translate/translation/ChipView;)Lcom/google/android/apps/translate/history/HistoryEntry;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/apps/translate/history/HistoryEntry;->isFavorite:Z

    #calls: Lcom/google/android/apps/translate/translation/ChipView;->setStar(Z)V
    invoke-static {v0, v1}, Lcom/google/android/apps/translate/translation/ChipView;->access$3500(Lcom/google/android/apps/translate/translation/ChipView;Z)V

    goto :goto_15

    .line 911
    :cond_69
    const/4 v0, 0x0

    goto :goto_27

    .line 918
    :cond_6b
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$StarOnClickListener;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/ChipView;->access$1800(Lcom/google/android/apps/translate/translation/ChipView;)Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/apps/translate/translation/ChipView$StarOnClickListener;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mItemEntry:Lcom/google/android/apps/translate/history/HistoryEntry;
    invoke-static {v2}, Lcom/google/android/apps/translate/translation/ChipView;->access$3300(Lcom/google/android/apps/translate/translation/ChipView;)Lcom/google/android/apps/translate/history/HistoryEntry;

    move-result-object v2

    iget-boolean v2, v2, Lcom/google/android/apps/translate/history/HistoryEntry;->isFavorite:Z

    iget-object v3, p0, Lcom/google/android/apps/translate/translation/ChipView$StarOnClickListener;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mItemEntry:Lcom/google/android/apps/translate/history/HistoryEntry;
    invoke-static {v3}, Lcom/google/android/apps/translate/translation/ChipView;->access$3300(Lcom/google/android/apps/translate/translation/ChipView;)Lcom/google/android/apps/translate/history/HistoryEntry;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/apps/translate/history/HistoryEntry;->entry:Lcom/google/android/apps/translate/history/Entry;

    invoke-static {v0, v2, v3}, Lcom/google/android/apps/translate/Util;->toggleStarredTranslation(Landroid/app/Activity;ZLcom/google/android/apps/translate/history/Entry;)V

    goto :goto_48

    .line 920
    :cond_85
    const/4 v1, -0x1

    goto :goto_58
.end method
