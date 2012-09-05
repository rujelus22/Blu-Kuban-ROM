.class public final Lcom/google/android/feeds/core/app/ErrorObserver;
.super Landroid/database/DataSetObserver;
.source "ErrorObserver.java"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mCursor:Landroid/database/Cursor;


# virtual methods
.method public onChanged()V
    .registers 6

    .prologue
    .line 57
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 58
    iget-object v3, p0, Lcom/google/android/feeds/core/app/ErrorObserver;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 60
    :try_start_b
    iget-object v3, p0, Lcom/google/android/feeds/core/app/ErrorObserver;->mCursor:Landroid/database/Cursor;

    invoke-static {v3}, Lcom/google/android/feeds/core/provider/Feed;->throwError(Landroid/database/Cursor;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_10} :catch_11

    .line 70
    :cond_10
    :goto_10
    return-void

    .line 61
    :catch_11
    move-exception v0

    .line 62
    .local v0, e:Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, message:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 64
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 66
    :cond_24
    iget-object v3, p0, Lcom/google/android/feeds/core/app/ErrorObserver;->mActivity:Landroid/app/Activity;

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 67
    .local v2, toast:Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_10
.end method
