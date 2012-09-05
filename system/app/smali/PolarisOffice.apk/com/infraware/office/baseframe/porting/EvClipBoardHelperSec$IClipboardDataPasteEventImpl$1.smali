.class Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec$IClipboardDataPasteEventImpl$1;
.super Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;
.source "EvClipBoardHelperSec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec$IClipboardDataPasteEventImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec$IClipboardDataPasteEventImpl;


# direct methods
.method constructor <init>(Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec$IClipboardDataPasteEventImpl;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec$IClipboardDataPasteEventImpl$1;->this$1:Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec$IClipboardDataPasteEventImpl;

    .line 79
    invoke-direct {p0}, Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onClipboardDataPaste(Landroid/sec/clipboard/data/ClipboardData;)V
    .registers 3
    .parameter "data"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec$IClipboardDataPasteEventImpl$1;->this$1:Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec$IClipboardDataPasteEventImpl;

    invoke-virtual {v0, p1}, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec$IClipboardDataPasteEventImpl;->onClipboardDataPaste(Landroid/sec/clipboard/data/ClipboardData;)V

    .line 82
    return-void
.end method
