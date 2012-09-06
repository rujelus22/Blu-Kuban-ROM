.class Lcom/google/android/apps/unveil/history/SearchHistoryProvider$6;
.super Lcom/google/android/apps/unveil/history/SearchHistoryEngine$EventListener;
.source "SearchHistoryProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/history/SearchHistoryProvider;->update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/unveil/history/SearchHistoryProvider$UpdateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/unveil/history/SearchHistoryProvider;

.field final synthetic val$listener:Lcom/google/android/apps/unveil/history/SearchHistoryProvider$UpdateListener;


# direct methods
.method constructor <init>(Lcom/google/android/apps/unveil/history/SearchHistoryProvider;Lcom/google/android/apps/unveil/history/SearchHistoryProvider$UpdateListener;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$6;->this$0:Lcom/google/android/apps/unveil/history/SearchHistoryProvider;

    iput-object p2, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$6;->val$listener:Lcom/google/android/apps/unveil/history/SearchHistoryProvider$UpdateListener;

    invoke-direct {p0}, Lcom/google/android/apps/unveil/history/SearchHistoryEngine$EventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .registers 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$6;->val$listener:Lcom/google/android/apps/unveil/history/SearchHistoryProvider$UpdateListener;

    invoke-interface {v0}, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$UpdateListener;->onError()V

    .line 190
    return-void
.end method

.method public onUpdateResponse(Lcom/google/android/apps/unveil/history/SearchHistoryItem;)V
    .registers 3
    .parameter "updatedItem"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$6;->val$listener:Lcom/google/android/apps/unveil/history/SearchHistoryProvider$UpdateListener;

    invoke-interface {v0, p1}, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$UpdateListener;->onResult(Lcom/google/android/apps/unveil/history/SearchHistoryItem;)V

    .line 196
    iget-object v0, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$6;->this$0:Lcom/google/android/apps/unveil/history/SearchHistoryProvider;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/history/SearchHistoryProvider;->notifyListenersOfChange()V

    .line 197
    return-void
.end method
