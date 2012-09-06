.class Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$8;
.super Ljava/lang/Object;
.source "BaseHistoryListAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->confirmRemoval()V
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
    .line 539
    iput-object p1, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$8;->this$0:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 542
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 543
    iget-object v0, p0, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter$8;->this$0:Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/history/BaseHistoryListAdapter;->removeAllEntries()V

    .line 544
    return-void
.end method
