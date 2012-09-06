.class Lcom/google/android/apps/reader/app/SubscribeActivity$QuickAddTask;
.super Landroid/support/v4/content/ModernAsyncTask;
.source "SubscribeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/reader/app/SubscribeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QuickAddTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/ModernAsyncTask",
        "<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field private mCallback:Ljava/lang/Runnable;

.field private mDone:Z

.field private final mResolver:Landroid/content/ContentResolver;

.field private mResult:Landroid/net/Uri;

.field private mSentCallback:Z


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .registers 2
    .parameter "resolver"

    .prologue
    .line 339
    invoke-direct {p0}, Landroid/support/v4/content/ModernAsyncTask;-><init>()V

    .line 340
    iput-object p1, p0, Lcom/google/android/apps/reader/app/SubscribeActivity$QuickAddTask;->mResolver:Landroid/content/ContentResolver;

    .line 341
    return-void
.end method

.method private sendCallback()V
    .registers 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/google/android/apps/reader/app/SubscribeActivity$QuickAddTask;->mCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 375
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/reader/app/SubscribeActivity$QuickAddTask;->mSentCallback:Z

    .line 376
    return-void
.end method

.method private shouldSendCallback()Z
    .registers 2

    .prologue
    .line 370
    iget-boolean v0, p0, Lcom/google/android/apps/reader/app/SubscribeActivity$QuickAddTask;->mDone:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/google/android/apps/reader/app/SubscribeActivity$QuickAddTask;->mSentCallback:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/google/android/apps/reader/app/SubscribeActivity$QuickAddTask;->mCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/SubscribeActivity$QuickAddTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/net/Uri;)Landroid/net/Uri;
    .registers 6
    .parameter "params"

    .prologue
    .line 345
    array-length v2, p1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_a

    .line 346
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 348
    :cond_a
    const/4 v2, 0x0

    aget-object v0, p1, v2

    .line 349
    .local v0, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 350
    .local v1, values:Landroid/content/ContentValues;
    iget-object v2, p0, Lcom/google/android/apps/reader/app/SubscribeActivity$QuickAddTask;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 327
    check-cast p1, [Landroid/net/Uri;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/app/SubscribeActivity$QuickAddTask;->doInBackground([Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getResult()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 379
    iget-object v0, p0, Lcom/google/android/apps/reader/app/SubscribeActivity$QuickAddTask;->mResult:Landroid/net/Uri;

    return-object v0
.end method

.method public isDone()Z
    .registers 2

    .prologue
    .line 383
    iget-boolean v0, p0, Lcom/google/android/apps/reader/app/SubscribeActivity$QuickAddTask;->mDone:Z

    return v0
.end method

.method protected onPostExecute(Landroid/net/Uri;)V
    .registers 3
    .parameter "result"

    .prologue
    .line 362
    iput-object p1, p0, Lcom/google/android/apps/reader/app/SubscribeActivity$QuickAddTask;->mResult:Landroid/net/Uri;

    .line 363
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/reader/app/SubscribeActivity$QuickAddTask;->mDone:Z

    .line 364
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/SubscribeActivity$QuickAddTask;->shouldSendCallback()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 365
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/SubscribeActivity$QuickAddTask;->sendCallback()V

    .line 367
    :cond_e
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 327
    check-cast p1, Landroid/net/Uri;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/app/SubscribeActivity$QuickAddTask;->onPostExecute(Landroid/net/Uri;)V

    return-void
.end method

.method public setCallback(Ljava/lang/Runnable;)V
    .registers 3
    .parameter "callback"

    .prologue
    .line 354
    iput-object p1, p0, Lcom/google/android/apps/reader/app/SubscribeActivity$QuickAddTask;->mCallback:Ljava/lang/Runnable;

    .line 355
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/SubscribeActivity$QuickAddTask;->shouldSendCallback()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 356
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/SubscribeActivity$QuickAddTask;->sendCallback()V

    .line 358
    :cond_b
    return-void
.end method
