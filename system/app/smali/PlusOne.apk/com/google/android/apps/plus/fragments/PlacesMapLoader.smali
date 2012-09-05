.class public Lcom/google/android/apps/plus/fragments/PlacesMapLoader;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "PlacesMapLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/AsyncTaskLoader",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V
    .registers 4
    .parameter "context"
    .parameter "account"
    .parameter "url"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 37
    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/PlacesMapLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 38
    iput-object p3, p0, Lcom/google/android/apps/plus/fragments/PlacesMapLoader;->mUrl:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public deliverResult(Landroid/graphics/Bitmap;)V
    .registers 2
    .parameter "data"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PlacesMapLoader;->mBitmap:Landroid/graphics/Bitmap;

    .line 76
    invoke-super {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 77
    return-void
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/PlacesMapLoader;->deliverResult(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public loadInBackground()Landroid/graphics/Bitmap;
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v4, 0x0

    .line 46
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PlacesMapLoader;->mUrl:Ljava/lang/String;

    if-nez v1, :cond_7

    .line 66
    :cond_6
    :goto_6
    return-object v4

    .line 50
    :cond_7
    new-instance v0, Lcom/google/android/apps/plus/api/GetPlacesMapOperation;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PlacesMapLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PlacesMapLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PlacesMapLoader;->mUrl:Ljava/lang/String;

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/api/GetPlacesMapOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 52
    .local v0, gpmo:Lcom/google/android/apps/plus/api/GetPlacesMapOperation;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetPlacesMapOperation;->start()V

    .line 53
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetPlacesMapOperation;->getException()Ljava/lang/Exception;

    move-result-object v1

    if-eqz v1, :cond_47

    .line 54
    const-string v1, "PlacesMapLoader"

    invoke-static {v1, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 55
    const-string v1, "PlacesMapLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    GetPlacesMapOperation interrupted due to exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetPlacesMapOperation;->getException()Ljava/lang/Exception;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetPlacesMapOperation;->getException()Ljava/lang/Exception;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 59
    :cond_47
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetPlacesMapOperation;->hasError()Z

    move-result v1

    if-eqz v1, :cond_86

    .line 60
    const-string v1, "PlacesMapLoader"

    invoke-static {v1, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 61
    const-string v1, "PlacesMapLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    GetPlacesMapOperation interrupted due to error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetPlacesMapOperation;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetPlacesMapOperation;->getReasonPhrase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 66
    :cond_86
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetPlacesMapOperation;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    goto/16 :goto_6
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PlacesMapLoader;->loadInBackground()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .registers 2

    .prologue
    .line 93
    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->onReset()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PlacesMapLoader;->mBitmap:Landroid/graphics/Bitmap;

    .line 95
    return-void
.end method

.method protected onStartLoading()V
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PlacesMapLoader;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_a

    .line 82
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PlacesMapLoader;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/PlacesMapLoader;->deliverResult(Landroid/graphics/Bitmap;)V

    .line 86
    :goto_9
    return-void

    .line 84
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PlacesMapLoader;->forceLoad()V

    goto :goto_9
.end method
