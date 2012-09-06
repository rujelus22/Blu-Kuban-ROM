.class Lcom/google/android/apps/unveil/history/SearchHistoryProvider$4;
.super Lcom/google/android/apps/unveil/history/SearchHistoryEngine$EventListener;
.source "SearchHistoryProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/history/SearchHistoryProvider;->withdrawUserSubmission(Ljava/lang/String;Lcom/google/android/apps/unveil/history/SearchHistoryProvider$TagListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/unveil/history/SearchHistoryProvider;

.field final synthetic val$listener:Lcom/google/android/apps/unveil/history/SearchHistoryProvider$TagListener;


# direct methods
.method constructor <init>(Lcom/google/android/apps/unveil/history/SearchHistoryProvider;Lcom/google/android/apps/unveil/history/SearchHistoryProvider$TagListener;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$4;->this$0:Lcom/google/android/apps/unveil/history/SearchHistoryProvider;

    iput-object p2, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$4;->val$listener:Lcom/google/android/apps/unveil/history/SearchHistoryProvider$TagListener;

    invoke-direct {p0}, Lcom/google/android/apps/unveil/history/SearchHistoryEngine$EventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$4;->val$listener:Lcom/google/android/apps/unveil/history/SearchHistoryProvider$TagListener;

    invoke-interface {v0}, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$TagListener;->onError()V

    .line 153
    return-void
.end method

.method public onUserSubmissionResponse()V
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$4;->val$listener:Lcom/google/android/apps/unveil/history/SearchHistoryProvider$TagListener;

    invoke-interface {v0}, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$TagListener;->onResult()V

    .line 158
    iget-object v0, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$4;->this$0:Lcom/google/android/apps/unveil/history/SearchHistoryProvider;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/history/SearchHistoryProvider;->notifyListenersOfChange()V

    .line 159
    return-void
.end method
