.class Lcom/google/android/apps/translate/history/SimpleHistoryListAdapter$1;
.super Ljava/lang/Object;
.source "SimpleHistoryListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/history/SimpleHistoryListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/history/SimpleHistoryListAdapter;

.field final synthetic val$entry:Lcom/google/android/apps/translate/history/HistoryEntry;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/history/SimpleHistoryListAdapter;Lcom/google/android/apps/translate/history/HistoryEntry;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/google/android/apps/translate/history/SimpleHistoryListAdapter$1;->this$0:Lcom/google/android/apps/translate/history/SimpleHistoryListAdapter;

    iput-object p2, p0, Lcom/google/android/apps/translate/history/SimpleHistoryListAdapter$1;->val$entry:Lcom/google/android/apps/translate/history/HistoryEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/apps/translate/history/SimpleHistoryListAdapter$1;->this$0:Lcom/google/android/apps/translate/history/SimpleHistoryListAdapter;

    check-cast p1, Landroid/widget/CheckBox;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iget-object v2, p0, Lcom/google/android/apps/translate/history/SimpleHistoryListAdapter$1;->val$entry:Lcom/google/android/apps/translate/history/HistoryEntry;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/translate/history/SimpleHistoryListAdapter;->starTranslateEntry(ZLcom/google/android/apps/translate/history/HistoryEntry;)V

    .line 45
    return-void
.end method
