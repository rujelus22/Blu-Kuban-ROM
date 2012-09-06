.class Lcom/google/android/apps/translate/translation/ChipView$5$1$1;
.super Ljava/lang/Object;
.source "ChipView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/translation/ChipView$5$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/android/apps/translate/translation/ChipView$5$1;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/translation/ChipView$5$1;)V
    .registers 2
    .parameter

    .prologue
    .line 681
    iput-object p1, p0, Lcom/google/android/apps/translate/translation/ChipView$5$1$1;->this$2:Lcom/google/android/apps/translate/translation/ChipView$5$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 684
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$5$1$1;->this$2:Lcom/google/android/apps/translate/translation/ChipView$5$1;

    iget-object v0, v0, Lcom/google/android/apps/translate/translation/ChipView$5$1;->this$1:Lcom/google/android/apps/translate/translation/ChipView$5;

    iget-object v0, v0, Lcom/google/android/apps/translate/translation/ChipView$5;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/ChipView;->access$2800(Lcom/google/android/apps/translate/translation/ChipView;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/ChipView$5$1$1;->this$2:Lcom/google/android/apps/translate/translation/ChipView$5$1;

    iget-object v1, v1, Lcom/google/android/apps/translate/translation/ChipView$5$1;->this$1:Lcom/google/android/apps/translate/translation/ChipView$5;

    iget v1, v1, Lcom/google/android/apps/translate/translation/ChipView$5;->val$position:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 685
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$5$1$1;->this$2:Lcom/google/android/apps/translate/translation/ChipView$5$1;

    iget-object v0, v0, Lcom/google/android/apps/translate/translation/ChipView$5$1;->this$1:Lcom/google/android/apps/translate/translation/ChipView$5;

    iget-object v0, v0, Lcom/google/android/apps/translate/translation/ChipView$5;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mListAdapter:Lcom/google/android/apps/translate/history/HistoryListAdapter;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/ChipView;->access$2600(Lcom/google/android/apps/translate/translation/ChipView;)Lcom/google/android/apps/translate/history/HistoryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/translate/history/HistoryListAdapter;->notifyDataSetChanged()V

    .line 686
    return-void
.end method
