.class public Lcom/google/android/apps/books/util/NotifyingAsyncQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "NotifyingAsyncQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/util/NotifyingAsyncQueryHandler$AsyncQueryListener;
    }
.end annotation


# instance fields
.field private mListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/apps/books/util/NotifyingAsyncQueryHandler$AsyncQueryListener;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryRunning:Z


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 6
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 93
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/books/util/NotifyingAsyncQueryHandler;->mQueryRunning:Z

    .line 94
    iget-object v1, p0, Lcom/google/android/apps/books/util/NotifyingAsyncQueryHandler;->mListener:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_e

    const/4 v0, 0x0

    .line 95
    .local v0, listener:Lcom/google/android/apps/books/util/NotifyingAsyncQueryHandler$AsyncQueryListener;
    :goto_8
    if-eqz v0, :cond_18

    .line 96
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/apps/books/util/NotifyingAsyncQueryHandler$AsyncQueryListener;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V

    .line 100
    :cond_d
    :goto_d
    return-void

    .line 94
    .end local v0           #listener:Lcom/google/android/apps/books/util/NotifyingAsyncQueryHandler$AsyncQueryListener;
    :cond_e
    iget-object v1, p0, Lcom/google/android/apps/books/util/NotifyingAsyncQueryHandler;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/books/util/NotifyingAsyncQueryHandler$AsyncQueryListener;

    move-object v0, v1

    goto :goto_8

    .line 97
    .restart local v0       #listener:Lcom/google/android/apps/books/util/NotifyingAsyncQueryHandler$AsyncQueryListener;
    :cond_18
    if-eqz p3, :cond_d

    .line 98
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_d
.end method
