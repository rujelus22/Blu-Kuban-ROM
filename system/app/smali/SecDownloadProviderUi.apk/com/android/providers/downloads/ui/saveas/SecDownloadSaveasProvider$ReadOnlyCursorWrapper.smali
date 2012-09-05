.class Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider$ReadOnlyCursorWrapper;
.super Landroid/database/CursorWrapper;
.source "SecDownloadSaveasProvider.java"

# interfaces
.implements Landroid/database/CrossProcessCursor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadOnlyCursorWrapper"
.end annotation


# instance fields
.field private mCursor:Landroid/database/CrossProcessCursor;

.field final synthetic this$0:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;


# direct methods
.method public constructor <init>(Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;Landroid/database/Cursor;)V
    .registers 3
    .parameter
    .parameter "cursor"

    .prologue
    .line 672
    iput-object p1, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider$ReadOnlyCursorWrapper;->this$0:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;

    .line 673
    invoke-direct {p0, p2}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 674
    check-cast p2, Landroid/database/CrossProcessCursor;

    .end local p2
    iput-object p2, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider$ReadOnlyCursorWrapper;->mCursor:Landroid/database/CrossProcessCursor;

    .line 675
    return-void
.end method


# virtual methods
.method public fillWindow(ILandroid/database/CursorWindow;)V
    .registers 4
    .parameter "pos"
    .parameter "window"

    .prologue
    .line 686
    iget-object v0, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider$ReadOnlyCursorWrapper;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1, p2}, Landroid/database/CrossProcessCursor;->fillWindow(ILandroid/database/CursorWindow;)V

    .line 687
    return-void
.end method

.method public getWindow()Landroid/database/CursorWindow;
    .registers 2

    .prologue
    .line 690
    iget-object v0, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider$ReadOnlyCursorWrapper;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v0

    return-object v0
.end method

.method public onMove(II)Z
    .registers 4
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    .line 694
    iget-object v0, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider$ReadOnlyCursorWrapper;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1, p2}, Landroid/database/CrossProcessCursor;->onMove(II)Z

    move-result v0

    return v0
.end method
