.class Lcom/google/android/finsky/appstate/UpdateChecker$1$2;
.super Ljava/lang/Object;
.source "UpdateChecker.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/appstate/UpdateChecker$1;->onPostExecute(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/finsky/appstate/UpdateChecker$1;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/appstate/UpdateChecker$1;)V
    .registers 2
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/google/android/finsky/appstate/UpdateChecker$1$2;->this$1:Lcom/google/android/finsky/appstate/UpdateChecker$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 5
    .parameter "volleyError"

    .prologue
    .line 127
    const-string v0, "Update check failed: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    iget-object v0, p0, Lcom/google/android/finsky/appstate/UpdateChecker$1$2;->this$1:Lcom/google/android/finsky/appstate/UpdateChecker$1;

    iget-object v0, v0, Lcom/google/android/finsky/appstate/UpdateChecker$1;->val$errorRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_18

    .line 129
    iget-object v0, p0, Lcom/google/android/finsky/appstate/UpdateChecker$1$2;->this$1:Lcom/google/android/finsky/appstate/UpdateChecker$1;

    iget-object v0, v0, Lcom/google/android/finsky/appstate/UpdateChecker$1;->val$errorRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 131
    :cond_18
    return-void
.end method
