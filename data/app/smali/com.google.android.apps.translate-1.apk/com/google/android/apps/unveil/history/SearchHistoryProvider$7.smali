.class Lcom/google/android/apps/unveil/history/SearchHistoryProvider$7;
.super Lcom/google/android/apps/unveil/history/SearchHistoryEngine$EventListener;
.source "SearchHistoryProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/history/SearchHistoryProvider;->delete(Ljava/lang/String;Lcom/google/android/apps/unveil/history/SearchHistoryProvider$DeleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/unveil/history/SearchHistoryProvider;

.field final synthetic val$listener:Lcom/google/android/apps/unveil/history/SearchHistoryProvider$DeleteListener;


# direct methods
.method constructor <init>(Lcom/google/android/apps/unveil/history/SearchHistoryProvider;Lcom/google/android/apps/unveil/history/SearchHistoryProvider$DeleteListener;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$7;->this$0:Lcom/google/android/apps/unveil/history/SearchHistoryProvider;

    iput-object p2, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$7;->val$listener:Lcom/google/android/apps/unveil/history/SearchHistoryProvider$DeleteListener;

    invoke-direct {p0}, Lcom/google/android/apps/unveil/history/SearchHistoryEngine$EventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleteResponse()V
    .registers 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$7;->val$listener:Lcom/google/android/apps/unveil/history/SearchHistoryProvider$DeleteListener;

    invoke-interface {v0}, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$DeleteListener;->onResult()V

    .line 212
    iget-object v0, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$7;->this$0:Lcom/google/android/apps/unveil/history/SearchHistoryProvider;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/history/SearchHistoryProvider;->notifyListenersOfChange()V

    .line 213
    return-void
.end method

.method public onError()V
    .registers 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$7;->val$listener:Lcom/google/android/apps/unveil/history/SearchHistoryProvider$DeleteListener;

    invoke-interface {v0}, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$DeleteListener;->onError()V

    .line 207
    return-void
.end method
