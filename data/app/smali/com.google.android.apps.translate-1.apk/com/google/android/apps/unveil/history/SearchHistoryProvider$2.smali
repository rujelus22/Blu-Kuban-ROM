.class Lcom/google/android/apps/unveil/history/SearchHistoryProvider$2;
.super Lcom/google/android/apps/unveil/history/SearchHistoryEngine$EventListener;
.source "SearchHistoryProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/history/SearchHistoryProvider;->lookup(Ljava/lang/String;Lcom/google/android/apps/unveil/history/SearchHistoryProvider$LookupListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/unveil/history/SearchHistoryProvider;

.field final synthetic val$listener:Lcom/google/android/apps/unveil/history/SearchHistoryProvider$LookupListener;


# direct methods
.method constructor <init>(Lcom/google/android/apps/unveil/history/SearchHistoryProvider;Lcom/google/android/apps/unveil/history/SearchHistoryProvider$LookupListener;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$2;->this$0:Lcom/google/android/apps/unveil/history/SearchHistoryProvider;

    iput-object p2, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$2;->val$listener:Lcom/google/android/apps/unveil/history/SearchHistoryProvider$LookupListener;

    invoke-direct {p0}, Lcom/google/android/apps/unveil/history/SearchHistoryEngine$EventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$2;->val$listener:Lcom/google/android/apps/unveil/history/SearchHistoryProvider$LookupListener;

    invoke-interface {v0}, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$LookupListener;->onError()V

    .line 110
    return-void
.end method

.method public onLookupResponse(Lcom/google/android/apps/unveil/history/SearchHistoryItem;)V
    .registers 3
    .parameter "item"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$2;->val$listener:Lcom/google/android/apps/unveil/history/SearchHistoryProvider$LookupListener;

    invoke-interface {v0, p1}, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$LookupListener;->onResult(Lcom/google/android/apps/unveil/history/SearchHistoryItem;)V

    .line 116
    return-void
.end method
