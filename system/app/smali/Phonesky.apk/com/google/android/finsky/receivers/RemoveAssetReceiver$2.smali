.class Lcom/google/android/finsky/receivers/RemoveAssetReceiver$2;
.super Ljava/lang/Object;
.source "RemoveAssetReceiver.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/receivers/RemoveAssetReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/receivers/RemoveAssetReceiver;

.field final synthetic val$assetId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/receivers/RemoveAssetReceiver;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/google/android/finsky/receivers/RemoveAssetReceiver$2;->this$0:Lcom/google/android/finsky/receivers/RemoveAssetReceiver;

    iput-object p2, p0, Lcom/google/android/finsky/receivers/RemoveAssetReceiver$2;->val$assetId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 6
    .parameter "error"

    .prologue
    .line 131
    const-string v0, "Error while fetching asset info for ID %s."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/receivers/RemoveAssetReceiver$2;->val$assetId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    return-void
.end method
