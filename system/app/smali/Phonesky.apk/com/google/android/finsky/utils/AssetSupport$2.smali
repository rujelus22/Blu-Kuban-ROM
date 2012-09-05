.class final Lcom/google/android/finsky/utils/AssetSupport$2;
.super Ljava/lang/Object;
.source "AssetSupport.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/AssetSupport;->refund(Ljava/lang/String;Lcom/google/android/finsky/utils/AssetSupport$RefundListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/google/android/finsky/utils/AssetSupport$RefundListener;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/utils/AssetSupport$RefundListener;)V
    .registers 2
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/android/finsky/utils/AssetSupport$2;->val$listener:Lcom/google/android/finsky/utils/AssetSupport$RefundListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 4
    .parameter "error"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/finsky/utils/AssetSupport$2;->val$listener:Lcom/google/android/finsky/utils/AssetSupport$RefundListener;

    sget-object v1, Lcom/google/android/finsky/utils/AssetSupport$RefundResult;->NETWORK_ERROR:Lcom/google/android/finsky/utils/AssetSupport$RefundResult;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/utils/AssetSupport$RefundListener;->onComplete(Lcom/google/android/finsky/utils/AssetSupport$RefundResult;)V

    .line 76
    return-void
.end method
