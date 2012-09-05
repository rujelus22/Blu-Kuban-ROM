.class public Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;
.super Lcom/infraware/office/evengine/EvClipBoardHelper;
.source "EvClipBoardHelperSec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec$IClipboardDataPasteEventImpl;
    }
.end annotation


# static fields
.field protected static final BNATIVE:Ljava/lang/String; = "bNative"

.field protected static final DATA:Ljava/lang/String; = "DataString"

.field protected static final DATATYPE:Ljava/lang/String; = "nDataType"

.field protected static final LOGCAT:Ljava/lang/String; = "EvClipboardHelperSec"


# instance fields
.field private mBackupHtml:Ljava/lang/String;

.field private mClipboardManager:Landroid/sec/clipboard/ClipboardExManager;

.field mPasteEvent:Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec$IClipboardDataPasteEventImpl;

.field protected final messageHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 6
    .parameter "activity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoClassDefFoundError;,
            Ljava/lang/NoSuchMethodError;
        }
    .end annotation

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/infraware/office/evengine/EvClipBoardHelper;-><init>(Landroid/app/Activity;)V

    .line 41
    new-instance v2, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec$1;

    invoke-direct {v2, p0}, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec$1;-><init>(Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;)V

    iput-object v2, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->messageHandler:Landroid/os/Handler;

    .line 70
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    iput-object v2, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->mBackupHtml:Ljava/lang/String;

    .line 186
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->mPasteEvent:Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec$IClipboardDataPasteEventImpl;

    .line 192
    :try_start_14
    new-instance v2, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec$IClipboardDataPasteEventImpl;

    invoke-direct {v2, p0}, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec$IClipboardDataPasteEventImpl;-><init>(Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;)V

    iput-object v2, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->mPasteEvent:Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec$IClipboardDataPasteEventImpl;

    .line 193
    const-string v2, "clipboardEx"

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sec/clipboard/ClipboardExManager;

    iput-object v2, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->mClipboardManager:Landroid/sec/clipboard/ClipboardExManager;

    .line 194
    iget-object v2, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->mClipboardManager:Landroid/sec/clipboard/ClipboardExManager;

    if-eqz v2, :cond_38

    iget-object v2, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->mClipboardManager:Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {v2}, Landroid/sec/clipboard/ClipboardExManager;->getDataListSize()I

    move-result v2

    if-ltz v2, :cond_38

    .line 195
    const-string v2, "EvClipboardHelperSec"

    const-string v3, "I have CLIPBOARDEX_SERVICE"

    invoke-static {v2, v3}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_14 .. :try_end_38} :catch_39
    .catch Ljava/lang/NoSuchMethodError; {:try_start_14 .. :try_end_38} :catch_47

    .line 205
    :cond_38
    return-void

    .line 196
    :catch_39
    move-exception v0

    .line 197
    .local v0, e:Ljava/lang/NoClassDefFoundError;
    const-string v2, "EvClipboardHelperSec"

    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->ClipBoardfinalize()V

    .line 199
    throw v0

    .line 200
    .end local v0           #e:Ljava/lang/NoClassDefFoundError;
    :catch_47
    move-exception v1

    .line 201
    .local v1, e2:Ljava/lang/NoSuchMethodError;
    const-string v2, "EvClipboardHelperSec"

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->ClipBoardfinalize()V

    .line 203
    throw v1
.end method

.method static synthetic access$0(Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;)Lcom/infraware/office/evengine/EvInterface;
    .registers 2
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    return-object v0
.end method

.method static synthetic access$1(Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;IIILjava/lang/String;)Landroid/os/Message;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->fillMsg(IIILjava/lang/String;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->mBackupHtml:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;)Landroid/sec/clipboard/ClipboardExManager;
    .registers 2
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->mClipboardManager:Landroid/sec/clipboard/ClipboardExManager;

    return-object v0
.end method

.method private fillMsg(IIILjava/lang/String;)Landroid/os/Message;
    .registers 8
    .parameter "what"
    .parameter "value1"
    .parameter "value2"
    .parameter "value3"

    .prologue
    .line 55
    iget-object v2, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->messageHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 56
    .local v1, message:Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->what:I

    .line 57
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 59
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "bNative"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 60
    const-string v2, "nDataType"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 61
    const-string v2, "DataString"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 65
    return-object v1
.end method


# virtual methods
.method public ClipBoardfinalize()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 209
    invoke-super {p0}, Lcom/infraware/office/evengine/EvClipBoardHelper;->ClipBoardfinalize()V

    .line 210
    iput-object v0, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->mClipboardManager:Landroid/sec/clipboard/ClipboardExManager;

    .line 211
    iput-object v0, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->mPasteEvent:Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec$IClipboardDataPasteEventImpl;

    .line 212
    return-void
.end method

.method public OnEditCopyCut(ILjava/lang/String;)V
    .registers 4
    .parameter "nType"
    .parameter "data"

    .prologue
    .line 308
    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->mBackupHtml:Ljava/lang/String;

    .line 310
    if-nez p2, :cond_7

    .line 320
    :cond_6
    :goto_6
    return-void

    .line 313
    :cond_7
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_6

    .line 316
    const/4 v0, 0x1

    if-ne p1, v0, :cond_12

    .line 317
    iput-object p2, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->mBackupHtml:Ljava/lang/String;

    .line 319
    :cond_12
    invoke-virtual {p0, p1, p2}, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->setData(ILjava/lang/String;)V

    goto :goto_6
.end method

.method public doPaste(Lcom/infraware/office/evengine/EvInterface;)Z
    .registers 6
    .parameter "evi"

    .prologue
    const/4 v3, 0x2

    .line 293
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->mClipboardManager:Landroid/sec/clipboard/ClipboardExManager;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->mPasteEvent:Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec$IClipboardDataPasteEventImpl;

    if-eqz v0, :cond_29

    .line 294
    iput-object p1, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    .line 295
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvInterface;->IGetEditorMode_Editor()I

    move-result v0

    if-ne v0, v3, :cond_1e

    .line 296
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->mClipboardManager:Landroid/sec/clipboard/ClipboardExManager;

    iget-object v1, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->mPasteEvent:Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec$IClipboardDataPasteEventImpl;

    invoke-virtual {v0, v1, v3, v2}, Landroid/sec/clipboard/ClipboardExManager;->getData(Landroid/content/Context;ILandroid/sec/clipboard/IClipboardDataPasteEvent;)Z

    .line 299
    :goto_1c
    const/4 v0, 0x1

    .line 302
    :goto_1d
    return v0

    .line 298
    :cond_1e
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->mClipboardManager:Landroid/sec/clipboard/ClipboardExManager;

    iget-object v1, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->mPasteEvent:Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec$IClipboardDataPasteEventImpl;

    invoke-virtual {v0, v1, v2, v3}, Landroid/sec/clipboard/ClipboardExManager;->getData(Landroid/content/Context;ILandroid/sec/clipboard/IClipboardDataPasteEvent;)Z

    goto :goto_1c

    .line 302
    :cond_29
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public getText()Ljava/lang/String;
    .registers 6

    .prologue
    .line 229
    iget-object v2, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->mClipboardManager:Landroid/sec/clipboard/ClipboardExManager;

    if-eqz v2, :cond_1b

    .line 230
    iget-object v2, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->mClipboardManager:Landroid/sec/clipboard/ClipboardExManager;

    iget-object v3, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->mActivity:Landroid/app/Activity;

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/sec/clipboard/ClipboardExManager;->getData(Landroid/content/Context;I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    .line 232
    .local v0, data:Landroid/sec/clipboard/data/ClipboardData;
    if-eqz v0, :cond_1b

    move-object v1, v0

    .line 234
    check-cast v1, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .line 235
    .local v1, text:Landroid/sec/clipboard/data/list/ClipboardDataText;
    invoke-virtual {v1}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 239
    .end local v0           #data:Landroid/sec/clipboard/data/ClipboardData;
    .end local v1           #text:Landroid/sec/clipboard/data/list/ClipboardDataText;
    :goto_1a
    return-object v2

    :cond_1b
    const/4 v2, 0x0

    goto :goto_1a
.end method

.method public hasText()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 215
    iget-object v1, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->mClipboardManager:Landroid/sec/clipboard/ClipboardExManager;

    if-eqz v1, :cond_14

    .line 217
    :try_start_5
    iget-object v1, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->mClipboardManager:Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {v1}, Landroid/sec/clipboard/ClipboardExManager;->getDataListSize()I
    :try_end_a
    .catch Ljava/lang/NoSuchMethodError; {:try_start_5 .. :try_end_a} :catch_f

    move-result v1

    if-lez v1, :cond_14

    .line 218
    const/4 v1, 0x1

    .line 225
    :goto_e
    return v1

    .line 219
    :catch_f
    move-exception v0

    .line 220
    .local v0, e:Ljava/lang/NoSuchMethodError;
    iput-object v2, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->mPasteEvent:Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec$IClipboardDataPasteEventImpl;

    .line 221
    iput-object v2, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->mClipboardManager:Landroid/sec/clipboard/ClipboardExManager;

    .line 225
    .end local v0           #e:Ljava/lang/NoSuchMethodError;
    :cond_14
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public setData(ILjava/lang/String;)V
    .registers 8
    .parameter "nType"
    .parameter "str"

    .prologue
    .line 265
    iget-object v3, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->mClipboardManager:Landroid/sec/clipboard/ClipboardExManager;

    if-eqz v3, :cond_15

    .line 266
    if-nez p1, :cond_16

    .line 267
    new-instance v2, Landroid/sec/clipboard/data/list/ClipboardDataText;

    invoke-direct {v2}, Landroid/sec/clipboard/data/list/ClipboardDataText;-><init>()V

    .line 268
    .local v2, text:Landroid/sec/clipboard/data/list/ClipboardDataText;
    invoke-virtual {v2, p2}, Landroid/sec/clipboard/data/list/ClipboardDataText;->SetText(Ljava/lang/CharSequence;)Z

    .line 269
    iget-object v3, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->mClipboardManager:Landroid/sec/clipboard/ClipboardExManager;

    iget-object v4, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v4, v2}, Landroid/sec/clipboard/ClipboardExManager;->setData(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;)Z

    .line 290
    .end local v2           #text:Landroid/sec/clipboard/data/list/ClipboardDataText;
    :cond_15
    :goto_15
    return-void

    .line 271
    :cond_16
    const/4 v3, 0x2

    if-ne p1, v3, :cond_29

    .line 272
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;-><init>()V

    .line 274
    .local v0, bm:Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    invoke-virtual {v0, p2}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->SetBitmapPath(Ljava/lang/String;)Z

    .line 275
    iget-object v3, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->mClipboardManager:Landroid/sec/clipboard/ClipboardExManager;

    iget-object v4, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v4, v0}, Landroid/sec/clipboard/ClipboardExManager;->setData(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;)Z

    goto :goto_15

    .line 283
    .end local v0           #bm:Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    :cond_29
    const/4 v3, 0x1

    if-ne p1, v3, :cond_15

    .line 284
    new-instance v1, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    invoke-direct {v1}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;-><init>()V

    .line 285
    .local v1, html:Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    invoke-virtual {v1, p2}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->SetHTMLFragment(Ljava/lang/CharSequence;)Z

    .line 286
    iget-object v3, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->mClipboardManager:Landroid/sec/clipboard/ClipboardExManager;

    iget-object v4, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v4, v1}, Landroid/sec/clipboard/ClipboardExManager;->setData(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;)Z

    goto :goto_15
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .registers 5
    .parameter "seq"

    .prologue
    .line 243
    iget-object v1, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->mClipboardManager:Landroid/sec/clipboard/ClipboardExManager;

    if-eqz v1, :cond_13

    .line 244
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataText;

    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataText;-><init>()V

    .line 246
    .local v0, Text:Landroid/sec/clipboard/data/list/ClipboardDataText;
    invoke-virtual {v0, p1}, Landroid/sec/clipboard/data/list/ClipboardDataText;->SetText(Ljava/lang/CharSequence;)Z

    .line 248
    iget-object v1, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->mClipboardManager:Landroid/sec/clipboard/ClipboardExManager;

    iget-object v2, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2, v0}, Landroid/sec/clipboard/ClipboardExManager;->setData(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;)Z

    .line 251
    .end local v0           #Text:Landroid/sec/clipboard/data/list/ClipboardDataText;
    :cond_13
    return-void
.end method
