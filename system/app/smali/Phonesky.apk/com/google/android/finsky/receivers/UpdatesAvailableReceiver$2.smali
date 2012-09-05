.class Lcom/google/android/finsky/receivers/UpdatesAvailableReceiver$2;
.super Ljava/lang/Object;
.source "UpdatesAvailableReceiver.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/receivers/UpdatesAvailableReceiver;->checkForUpdates(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/receivers/UpdatesAvailableReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/receivers/UpdatesAvailableReceiver;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/android/finsky/receivers/UpdatesAvailableReceiver$2;->this$0:Lcom/google/android/finsky/receivers/UpdatesAvailableReceiver;

    iput-object p2, p0, Lcom/google/android/finsky/receivers/UpdatesAvailableReceiver$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 5
    .parameter "error"

    .prologue
    .line 75
    const-string v0, "Error occured during server-initiated auto-update! Error=[%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    iget-object v0, p0, Lcom/google/android/finsky/receivers/UpdatesAvailableReceiver$2;->this$0:Lcom/google/android/finsky/receivers/UpdatesAvailableReceiver;

    iget-object v1, p0, Lcom/google/android/finsky/receivers/UpdatesAvailableReceiver$2;->val$context:Landroid/content/Context;

    #calls: Lcom/google/android/finsky/receivers/UpdatesAvailableReceiver;->checkForUpdates(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/google/android/finsky/receivers/UpdatesAvailableReceiver;->access$100(Lcom/google/android/finsky/receivers/UpdatesAvailableReceiver;Landroid/content/Context;)V

    .line 77
    return-void
.end method
