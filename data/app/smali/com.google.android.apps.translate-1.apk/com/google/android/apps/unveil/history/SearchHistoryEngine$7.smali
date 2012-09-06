.class Lcom/google/android/apps/unveil/history/SearchHistoryEngine$7;
.super Lcom/google/android/apps/unveil/history/SearchHistoryEngine$ResponseHandler;
.source "SearchHistoryEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/history/SearchHistoryEngine;->reportAbuse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/apps/unveil/history/SearchHistoryEngine$EventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/unveil/history/SearchHistoryEngine;

.field final synthetic val$listener:Lcom/google/android/apps/unveil/history/SearchHistoryEngine$EventListener;


# direct methods
.method constructor <init>(Lcom/google/android/apps/unveil/history/SearchHistoryEngine;Lcom/google/android/apps/unveil/history/SearchHistoryEngine$EventListener;Lcom/google/android/apps/unveil/history/SearchHistoryEngine$EventListener;)V
    .registers 4
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 342
    iput-object p1, p0, Lcom/google/android/apps/unveil/history/SearchHistoryEngine$7;->this$0:Lcom/google/android/apps/unveil/history/SearchHistoryEngine;

    iput-object p3, p0, Lcom/google/android/apps/unveil/history/SearchHistoryEngine$7;->val$listener:Lcom/google/android/apps/unveil/history/SearchHistoryEngine$EventListener;

    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/unveil/history/SearchHistoryEngine$ResponseHandler;-><init>(Lcom/google/android/apps/unveil/history/SearchHistoryEngine;Lcom/google/android/apps/unveil/history/SearchHistoryEngine$EventListener;)V

    return-void
.end method


# virtual methods
.method public onValidResponse(Ljava/lang/String;)V
    .registers 3
    .parameter "response"

    .prologue
    .line 345
    iget-object v0, p0, Lcom/google/android/apps/unveil/history/SearchHistoryEngine$7;->val$listener:Lcom/google/android/apps/unveil/history/SearchHistoryEngine$EventListener;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/history/SearchHistoryEngine$EventListener;->onAbuseResponse()V

    .line 346
    return-void
.end method
