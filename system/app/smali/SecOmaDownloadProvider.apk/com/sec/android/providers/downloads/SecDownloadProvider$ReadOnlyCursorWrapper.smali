.class Lcom/sec/android/providers/downloads/SecDownloadProvider$ReadOnlyCursorWrapper;
.super Landroid/database/CursorWrapper;
.source "SecDownloadProvider.java"

# interfaces
.implements Landroid/database/CrossProcessCursor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/providers/downloads/SecDownloadProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadOnlyCursorWrapper"
.end annotation


# instance fields
.field private mCursor:Landroid/database/CrossProcessCursor;

.field final synthetic this$0:Lcom/sec/android/providers/downloads/SecDownloadProvider;


# direct methods
.method public constructor <init>(Lcom/sec/android/providers/downloads/SecDownloadProvider;Landroid/database/Cursor;)V
    .registers 3
    .parameter
    .parameter "cursor"

    .prologue
    .line 1010
    iput-object p1, p0, Lcom/sec/android/providers/downloads/SecDownloadProvider$ReadOnlyCursorWrapper;->this$0:Lcom/sec/android/providers/downloads/SecDownloadProvider;

    .line 1011
    invoke-direct {p0, p2}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 1012
    check-cast p2, Landroid/database/CrossProcessCursor;

    .end local p2
    iput-object p2, p0, Lcom/sec/android/providers/downloads/SecDownloadProvider$ReadOnlyCursorWrapper;->mCursor:Landroid/database/CrossProcessCursor;

    .line 1013
    return-void
.end method


# virtual methods
.method public fillWindow(ILandroid/database/CursorWindow;)V
    .registers 4
    .parameter "pos"
    .parameter "window"

    .prologue
    .line 1024
    iget-object v0, p0, Lcom/sec/android/providers/downloads/SecDownloadProvider$ReadOnlyCursorWrapper;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1, p2}, Landroid/database/CrossProcessCursor;->fillWindow(ILandroid/database/CursorWindow;)V

    .line 1025
    return-void
.end method

.method public getWindow()Landroid/database/CursorWindow;
    .registers 2

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/sec/android/providers/downloads/SecDownloadProvider$ReadOnlyCursorWrapper;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v0

    return-object v0
.end method

.method public onMove(II)Z
    .registers 4
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/sec/android/providers/downloads/SecDownloadProvider$ReadOnlyCursorWrapper;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1, p2}, Landroid/database/CrossProcessCursor;->onMove(II)Z

    move-result v0

    return v0
.end method
