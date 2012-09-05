.class public Lcom/google/android/apps/books/util/RecordingCursor;
.super Landroid/database/CursorWrapper;
.source "RecordingCursor.java"


# instance fields
.field private mCloseTrace:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .registers 2
    .parameter "cursor"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 24
    return-void
.end method

.method public static logIfClosed(Landroid/database/Cursor;)V
    .registers 6
    .parameter "cursor"

    .prologue
    .line 45
    instance-of v2, p0, Lcom/google/android/apps/books/util/RecordingCursor;

    if-eqz v2, :cond_1e

    .line 46
    new-instance v0, Ljava/lang/Throwable;

    move-object v2, p0

    check-cast v2, Lcom/google/android/apps/books/util/RecordingCursor;

    invoke-virtual {v2}, Lcom/google/android/apps/books/util/RecordingCursor;->getCloseTrace()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/Throwable;)V

    .line 52
    .local v0, closeTrace:Ljava/lang/Throwable;
    :goto_10
    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 53
    const-string v2, "RecordingCursor"

    const-string v3, "cursor unexpectedly found to be closed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    :cond_1d
    return-void

    .line 48
    .end local v0           #closeTrace:Ljava/lang/Throwable;
    :cond_1e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a RecordingCursor, but found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, msg:Ljava/lang/String;
    const-string v2, "RecordingCursor"

    const-string v3, ""

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    const/4 v0, 0x0

    .restart local v0       #closeTrace:Ljava/lang/Throwable;
    goto :goto_10
.end method


# virtual methods
.method public close()V
    .registers 3

    .prologue
    .line 28
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "cursor closed"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/apps/books/util/RecordingCursor;->mCloseTrace:Ljava/lang/Throwable;

    .line 29
    invoke-super {p0}, Landroid/database/CursorWrapper;->close()V

    .line 30
    return-void
.end method

.method public getCloseTrace()Ljava/lang/Throwable;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/apps/books/util/RecordingCursor;->mCloseTrace:Ljava/lang/Throwable;

    return-object v0
.end method
