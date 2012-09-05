.class Lcom/google/android/finsky/analytics/DfeAnalytics$2;
.super Ljava/lang/Object;
.source "DfeAnalytics.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/analytics/DfeAnalytics;->flushLogs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/analytics/DfeAnalytics;

.field final synthetic val$currentLogCount:I


# direct methods
.method constructor <init>(Lcom/google/android/finsky/analytics/DfeAnalytics;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/google/android/finsky/analytics/DfeAnalytics$2;->this$0:Lcom/google/android/finsky/analytics/DfeAnalytics;

    iput p2, p0, Lcom/google/android/finsky/analytics/DfeAnalytics$2;->val$currentLogCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 6
    .parameter "error"

    .prologue
    .line 159
    const-string v0, "Failed to send %d events because of [%s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/finsky/analytics/DfeAnalytics$2;->val$currentLogCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    return-void
.end method
