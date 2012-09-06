.class Lcom/google/android/apps/translate/translation/ChipView$5;
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
    .line 662
    iput-object p1, p0, Lcom/google/android/apps/translate/translation/ChipView$5;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    iput p2, p0, Lcom/google/android/apps/translate/translation/ChipView$5;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 665
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$5;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mListAdapter:Lcom/google/android/apps/translate/history/HistoryListAdapter;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/ChipView;->access$2600(Lcom/google/android/apps/translate/translation/ChipView;)Lcom/google/android/apps/translate/history/HistoryListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/ChipView$5;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/history/HistoryListAdapter;->setSelectedHistoryItem(Lcom/google/android/apps/translate/translation/ChipView;)V

    .line 666
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$5;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    sget-object v1, Lcom/google/android/apps/translate/translation/ChipView$ViewState;->SELECTED_EXPANDED:Lcom/google/android/apps/translate/translation/ChipView$ViewState;

    #calls: Lcom/google/android/apps/translate/translation/ChipView;->renderOutputView(Lcom/google/android/apps/translate/translation/ChipView$ViewState;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/translate/translation/ChipView;->access$2700(Lcom/google/android/apps/translate/translation/ChipView;Lcom/google/android/apps/translate/translation/ChipView$ViewState;)V

    .line 669
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$5;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    new-instance v1, Lcom/google/android/apps/translate/translation/ChipView$5$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/translate/translation/ChipView$5$1;-><init>(Lcom/google/android/apps/translate/translation/ChipView$5;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/translate/translation/ChipView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 690
    return-void
.end method
