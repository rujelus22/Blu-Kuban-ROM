.class Lcom/google/android/feeds/AnnotatedCrossProcessCursor;
.super Lcom/google/android/feeds/AnnotatedCursor;
.source "AnnotatedCrossProcessCursor.java"

# interfaces
.implements Landroid/database/CrossProcessCursor;


# instance fields
.field private final mCursor:Landroid/database/CrossProcessCursor;


# direct methods
.method public constructor <init>(Landroid/database/CrossProcessCursor;Landroid/os/Bundle;)V
    .registers 3
    .parameter "cursor"
    .parameter "extras"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/google/android/feeds/AnnotatedCursor;-><init>(Landroid/database/Cursor;Landroid/os/Bundle;)V

    .line 32
    iput-object p1, p0, Lcom/google/android/feeds/AnnotatedCrossProcessCursor;->mCursor:Landroid/database/CrossProcessCursor;

    .line 33
    return-void
.end method


# virtual methods
.method public fillWindow(ILandroid/database/CursorWindow;)V
    .registers 4
    .parameter "pos"
    .parameter "winow"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/feeds/AnnotatedCrossProcessCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1, p2}, Landroid/database/CrossProcessCursor;->fillWindow(ILandroid/database/CursorWindow;)V

    .line 40
    return-void
.end method

.method public getWindow()Landroid/database/CursorWindow;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/feeds/AnnotatedCrossProcessCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v0

    return-object v0
.end method

.method public onMove(II)Z
    .registers 4
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/feeds/AnnotatedCrossProcessCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1, p2}, Landroid/database/CrossProcessCursor;->onMove(II)Z

    move-result v0

    return v0
.end method
