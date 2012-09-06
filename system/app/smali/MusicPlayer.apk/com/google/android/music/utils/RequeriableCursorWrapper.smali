.class public abstract Lcom/google/android/music/utils/RequeriableCursorWrapper;
.super Landroid/database/AbstractCursor;
.source "RequeriableCursorWrapper.java"


# instance fields
.field private volatile mInner:Landroid/database/CrossProcessCursor;


# direct methods
.method public constructor <init>(Landroid/database/CrossProcessCursor;)V
    .registers 2
    .parameter "inner"

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/google/android/music/utils/RequeriableCursorWrapper;->mInner:Landroid/database/CrossProcessCursor;

    .line 23
    return-void
.end method

.method private setInnerCursor(Landroid/database/CrossProcessCursor;)V
    .registers 4
    .parameter "newInner"

    .prologue
    .line 38
    if-nez p1, :cond_a

    .line 39
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Inner cursor cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_a
    iget-object v0, p0, Lcom/google/android/music/utils/RequeriableCursorWrapper;->mInner:Landroid/database/CrossProcessCursor;

    if-eq v0, p1, :cond_15

    .line 42
    iget-object v0, p0, Lcom/google/android/music/utils/RequeriableCursorWrapper;->mInner:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->close()V

    .line 43
    iput-object p1, p0, Lcom/google/android/music/utils/RequeriableCursorWrapper;->mInner:Landroid/database/CrossProcessCursor;

    .line 45
    :cond_15
    iget-object v0, p0, Lcom/google/android/music/utils/RequeriableCursorWrapper;->mInner:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->getPosition()I

    move-result v0

    iput v0, p0, Lcom/google/android/music/utils/RequeriableCursorWrapper;->mPos:I

    .line 46
    return-void
.end method


# virtual methods
.method public final close()V
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/music/utils/RequeriableCursorWrapper;->mInner:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->close()V

    .line 62
    invoke-super {p0}, Landroid/database/AbstractCursor;->close()V

    .line 63
    return-void
.end method

.method public final copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .registers 4
    .parameter "columnIndex"
    .parameter "buffer"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/music/utils/RequeriableCursorWrapper;->mInner:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1, p2}, Landroid/database/CrossProcessCursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 68
    return-void
.end method

.method public final deactivate()V
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/music/utils/RequeriableCursorWrapper;->mInner:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->deactivate()V

    .line 73
    invoke-super {p0}, Landroid/database/AbstractCursor;->deactivate()V

    .line 74
    return-void
.end method

.method public final fillWindow(ILandroid/database/CursorWindow;)V
    .registers 4
    .parameter "position"
    .parameter "window"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/android/music/utils/RequeriableCursorWrapper;->mInner:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1, p2}, Landroid/database/CrossProcessCursor;->fillWindow(ILandroid/database/CursorWindow;)V

    .line 159
    return-void
.end method

.method public final getBlob(I)[B
    .registers 3
    .parameter "columnIndex"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/music/utils/RequeriableCursorWrapper;->mInner:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1}, Landroid/database/CrossProcessCursor;->getBlob(I)[B

    move-result-object v0

    return-object v0
.end method

.method public final getColumnName(I)Ljava/lang/String;
    .registers 3
    .parameter "columnIndex"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/music/utils/RequeriableCursorWrapper;->mInner:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1}, Landroid/database/CrossProcessCursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getColumnNames()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/music/utils/RequeriableCursorWrapper;->mInner:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCount()I
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/music/utils/RequeriableCursorWrapper;->mInner:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->getCount()I

    move-result v0

    return v0
.end method

.method public final getDouble(I)D
    .registers 4
    .parameter "columnIndex"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/music/utils/RequeriableCursorWrapper;->mInner:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1}, Landroid/database/CrossProcessCursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/music/utils/RequeriableCursorWrapper;->mInner:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final getFloat(I)F
    .registers 3
    .parameter "columnIndex"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/music/utils/RequeriableCursorWrapper;->mInner:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1}, Landroid/database/CrossProcessCursor;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public final getInt(I)I
    .registers 3
    .parameter "columnIndex"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/music/utils/RequeriableCursorWrapper;->mInner:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1}, Landroid/database/CrossProcessCursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public final getLong(I)J
    .registers 4
    .parameter "columnIndex"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/music/utils/RequeriableCursorWrapper;->mInner:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1}, Landroid/database/CrossProcessCursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getShort(I)S
    .registers 3
    .parameter "columnIndex"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/android/music/utils/RequeriableCursorWrapper;->mInner:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1}, Landroid/database/CrossProcessCursor;->getShort(I)S

    move-result v0

    return v0
.end method

.method public final getString(I)Ljava/lang/String;
    .registers 3
    .parameter "columnIndex"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/music/utils/RequeriableCursorWrapper;->mInner:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1}, Landroid/database/CrossProcessCursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getType(I)I
    .registers 3
    .parameter "columnIndex"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/music/utils/RequeriableCursorWrapper;->mInner:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1}, Landroid/database/CrossProcessCursor;->getType(I)I

    move-result v0

    return v0
.end method

.method protected abstract getUpdatedCursor()Landroid/database/CrossProcessCursor;
.end method

.method public final getWantsAllOnMoveCalls()Z
    .registers 2

    .prologue
    .line 138
    const/4 v0, 0x1

    return v0
.end method

.method public final getWindow()Landroid/database/CursorWindow;
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/android/music/utils/RequeriableCursorWrapper;->mInner:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v0

    return-object v0
.end method

.method public final isNull(I)Z
    .registers 3
    .parameter "columnIndex"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/music/utils/RequeriableCursorWrapper;->mInner:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1}, Landroid/database/CrossProcessCursor;->isNull(I)Z

    move-result v0

    return v0
.end method

.method public final onMove(II)Z
    .registers 4
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/android/music/utils/RequeriableCursorWrapper;->mInner:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p2}, Landroid/database/CrossProcessCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public final requery()Z
    .registers 3

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/google/android/music/utils/RequeriableCursorWrapper;->getUpdatedCursor()Landroid/database/CrossProcessCursor;

    move-result-object v0

    .line 51
    .local v0, newCursor:Landroid/database/CrossProcessCursor;
    if-nez v0, :cond_8

    .line 52
    const/4 v1, 0x0

    .line 55
    :goto_7
    return v1

    .line 54
    :cond_8
    invoke-direct {p0, v0}, Lcom/google/android/music/utils/RequeriableCursorWrapper;->setInnerCursor(Landroid/database/CrossProcessCursor;)V

    .line 55
    invoke-super {p0}, Landroid/database/AbstractCursor;->requery()Z

    move-result v1

    goto :goto_7
.end method

.method public final respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 3
    .parameter "extras"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/android/music/utils/RequeriableCursorWrapper;->mInner:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1}, Landroid/database/CrossProcessCursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
