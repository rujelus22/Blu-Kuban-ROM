.class Lcom/google/android/apps/unveil/history/SearchHistoryProvider$5;
.super Lcom/google/android/apps/unveil/history/SearchHistoryEngine$EventListener;
.source "SearchHistoryProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/history/SearchHistoryProvider;->reportAbuse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/apps/unveil/history/SearchHistoryProvider$AbuseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/unveil/history/SearchHistoryProvider;

.field final synthetic val$listener:Lcom/google/android/apps/unveil/history/SearchHistoryProvider$AbuseListener;


# direct methods
.method constructor <init>(Lcom/google/android/apps/unveil/history/SearchHistoryProvider;Lcom/google/android/apps/unveil/history/SearchHistoryProvider$AbuseListener;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$5;->this$0:Lcom/google/android/apps/unveil/history/SearchHistoryProvider;

    iput-object p2, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$5;->val$listener:Lcom/google/android/apps/unveil/history/SearchHistoryProvider$AbuseListener;

    invoke-direct {p0}, Lcom/google/android/apps/unveil/history/SearchHistoryEngine$EventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAbuseResponse()V
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$5;->val$listener:Lcom/google/android/apps/unveil/history/SearchHistoryProvider$AbuseListener;

    invoke-interface {v0}, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$AbuseListener;->onResult()V

    .line 175
    iget-object v0, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$5;->this$0:Lcom/google/android/apps/unveil/history/SearchHistoryProvider;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/history/SearchHistoryProvider;->notifyListenersOfChange()V

    .line 176
    return-void
.end method

.method public onError()V
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$5;->val$listener:Lcom/google/android/apps/unveil/history/SearchHistoryProvider$AbuseListener;

    invoke-interface {v0}, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$AbuseListener;->onError()V

    .line 170
    return-void
.end method
