.class public abstract Lcom/google/android/apps/plus/phone/EsAsyncTaskLoader;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "EsAsyncTaskLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/content/AsyncTaskLoader",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private mLoaderException:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 21
    .local p0, this:Lcom/google/android/apps/plus/phone/EsAsyncTaskLoader;,"Lcom/google/android/apps/plus/phone/EsAsyncTaskLoader<TE;>;"
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method


# virtual methods
.method public deliverResult(Ljava/lang/Object;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, this:Lcom/google/android/apps/plus/phone/EsAsyncTaskLoader;,"Lcom/google/android/apps/plus/phone/EsAsyncTaskLoader<TE;>;"
    .local p1, cursor:Ljava/lang/Object;,"TE;"
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/EsAsyncTaskLoader;->mLoaderException:Z

    if-nez v0, :cond_7

    .line 56
    invoke-super {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 58
    :cond_7
    return-void
.end method

.method public abstract esLoadInBackground()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method

.method public final loadInBackground()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, this:Lcom/google/android/apps/plus/phone/EsAsyncTaskLoader;,"Lcom/google/android/apps/plus/phone/EsAsyncTaskLoader<TE;>;"
    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/EsAsyncTaskLoader;->mLoaderException:Z

    if-nez v1, :cond_14

    .line 39
    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EsAsyncTaskLoader;->esLoadInBackground()Ljava/lang/Object;
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result-object v1

    .line 46
    :goto_8
    return-object v1

    .line 40
    :catch_9
    move-exception v0

    .line 41
    .local v0, ex:Landroid/database/sqlite/SQLiteException;
    const-string v1, "EsAsyncTaskLoader"

    const-string v2, "loadInBackground failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/phone/EsAsyncTaskLoader;->mLoaderException:Z

    .line 46
    .end local v0           #ex:Landroid/database/sqlite/SQLiteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_8
.end method
