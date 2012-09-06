.class Lcom/google/android/apps/translate/translation/ChipView$6;
.super Ljava/lang/Object;
.source "ChipView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/translation/ChipView;->selectChip(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/translation/ChipView;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/translation/ChipView;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 693
    iput-object p1, p0, Lcom/google/android/apps/translate/translation/ChipView$6;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    iput p2, p0, Lcom/google/android/apps/translate/translation/ChipView$6;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 696
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$6;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mListAdapter:Lcom/google/android/apps/translate/history/HistoryListAdapter;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/ChipView;->access$2600(Lcom/google/android/apps/translate/translation/ChipView;)Lcom/google/android/apps/translate/history/HistoryListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/ChipView$6;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/history/HistoryListAdapter;->setSelectedHistoryItem(Lcom/google/android/apps/translate/translation/ChipView;)V

    .line 697
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$6;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    sget-object v1, Lcom/google/android/apps/translate/translation/ChipView$ViewState;->SELECTED_EXPANDED:Lcom/google/android/apps/translate/translation/ChipView$ViewState;

    #calls: Lcom/google/android/apps/translate/translation/ChipView;->renderOutputView(Lcom/google/android/apps/translate/translation/ChipView$ViewState;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/translate/translation/ChipView;->access$2700(Lcom/google/android/apps/translate/translation/ChipView;Lcom/google/android/apps/translate/translation/ChipView$ViewState;)V

    .line 698
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$6;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mListAdapter:Lcom/google/android/apps/translate/history/HistoryListAdapter;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/ChipView;->access$2600(Lcom/google/android/apps/translate/translation/ChipView;)Lcom/google/android/apps/translate/history/HistoryListAdapter;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/translate/translation/ChipView$6;->val$position:I

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/history/HistoryListAdapter;->setSelectedHistoryItemPosition(I)V

    .line 699
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$6;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mListAdapter:Lcom/google/android/apps/translate/history/HistoryListAdapter;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/ChipView;->access$2600(Lcom/google/android/apps/translate/translation/ChipView;)Lcom/google/android/apps/translate/history/HistoryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/translate/history/HistoryListAdapter;->notifyDataSetChanged()V

    .line 700
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$6;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/ChipView;->access$2800(Lcom/google/android/apps/translate/translation/ChipView;)Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/translate/translation/ChipView$6;->val$position:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 701
    return-void
.end method
