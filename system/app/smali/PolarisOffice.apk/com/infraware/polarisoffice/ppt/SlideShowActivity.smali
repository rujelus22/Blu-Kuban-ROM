.class public Lcom/infraware/polarisoffice/ppt/SlideShowActivity;
.super Lcom/infraware/common/baseactivity/BaseActivity;
.source "SlideShowActivity.java"

# interfaces
.implements Lcom/infraware/office/evengine/EvListener$ViewerListener;
.implements Lcom/infraware/office/evengine/EvListener$PptEditorListener;
.implements Lcom/infraware/office/evengine/E$EV_ERROR_CODE;


# static fields
.field protected static final GO_NEXTPAGE:I = 0x0

.field protected static final NEXTPAGE_DELAY:I = 0x1388

.field protected static mErrorAndClosePopup:Landroid/app/AlertDialog;


# instance fields
.field private mBookClipPath:Ljava/lang/String;

.field private mBookMarkPath:Ljava/lang/String;

.field private mEvInterface:Lcom/infraware/office/evengine/EvInterface;

.field protected final mHandler:Landroid/os/Handler;

.field private mSlideBitmap:Landroid/widget/ImageView;

.field private mTempPath:Ljava/lang/String;

.field private mXTouchDownPos:I

.field private mbPPSFile:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->mErrorAndClosePopup:Landroid/app/AlertDialog;

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Lcom/infraware/common/baseactivity/BaseActivity;-><init>()V

    .line 35
    iput-object v1, p0, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->mSlideBitmap:Landroid/widget/ImageView;

    .line 36
    iput-object v1, p0, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    .line 37
    iput v0, p0, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->mXTouchDownPos:I

    .line 38
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->mbPPSFile:Ljava/lang/Boolean;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->mTempPath:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->mBookMarkPath:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->mBookClipPath:Ljava/lang/String;

    .line 47
    new-instance v0, Lcom/infraware/polarisoffice/ppt/SlideShowActivity$1;

    invoke-direct {v0, p0}, Lcom/infraware/polarisoffice/ppt/SlideShowActivity$1;-><init>(Lcom/infraware/polarisoffice/ppt/SlideShowActivity;)V

    iput-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->mHandler:Landroid/os/Handler;

    .line 33
    return-void
.end method

.method static synthetic access$0(Lcom/infraware/polarisoffice/ppt/SlideShowActivity;)Lcom/infraware/office/evengine/EvInterface;
    .registers 2
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    return-object v0
.end method


# virtual methods
.method protected AlertErrorAndCloseDlg(I)V
    .registers 6
    .parameter "contentStringId"

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 355
    .local v1, content:Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 356
    .local v0, ab:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 357
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 358
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080043

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/infraware/polarisoffice/ppt/SlideShowActivity$2;

    invoke-direct {v3, p0}, Lcom/infraware/polarisoffice/ppt/SlideShowActivity$2;-><init>(Lcom/infraware/polarisoffice/ppt/SlideShowActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 365
    new-instance v2, Lcom/infraware/polarisoffice/ppt/SlideShowActivity$3;

    invoke-direct {v2, p0}, Lcom/infraware/polarisoffice/ppt/SlideShowActivity$3;-><init>(Lcom/infraware/polarisoffice/ppt/SlideShowActivity;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 372
    new-instance v2, Lcom/infraware/polarisoffice/ppt/SlideShowActivity$4;

    invoke-direct {v2, p0}, Lcom/infraware/polarisoffice/ppt/SlideShowActivity$4;-><init>(Lcom/infraware/polarisoffice/ppt/SlideShowActivity;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 382
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    sput-object v2, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->mErrorAndClosePopup:Landroid/app/AlertDialog;

    .line 383
    sget-object v2, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->mErrorAndClosePopup:Landroid/app/AlertDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 384
    sget-object v2, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->mErrorAndClosePopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 385
    return-void
.end method

.method public GetBitmap(II)Landroid/graphics/Bitmap;
    .registers 8
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v4, 0x0

    .line 132
    const-string v1, "SlideShowActivitiy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GetBitmap - w:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " h"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 134
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->mSlideBitmap:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 136
    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->mbPPSFile:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3e

    .line 137
    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 138
    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 140
    :cond_3e
    return-object v0
.end method

.method public GetThumbnailBitmap(III)Landroid/graphics/Bitmap;
    .registers 5
    .parameter "nPageNum"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 196
    const/4 v0, 0x0

    return-object v0
.end method

.method public OnCloseDoc()V
    .registers 1

    .prologue
    .line 199
    return-void
.end method

.method public OnDrawBitmap(II)V
    .registers 3
    .parameter "nCallId"
    .parameter "bShowAutomap"

    .prologue
    .line 202
    return-void
.end method

.method public OnDrawThumbnailBitmap(I)V
    .registers 2
    .parameter "nPageNum"

    .prologue
    .line 205
    return-void
.end method

.method public OnGetResID(I)Ljava/lang/String;
    .registers 3
    .parameter "nStrID"

    .prologue
    .line 285
    const-string v0, ""

    return-object v0
.end method

.method public OnImagePlaceHolderDefaultImage()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 290
    const/4 v0, 0x0

    return-object v0
.end method

.method public OnLoadComplete(Ljava/lang/String;)V
    .registers 7
    .parameter "strWritePassword"

    .prologue
    .line 209
    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->mbPPSFile:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 210
    const-string v1, "window"

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 211
    .local v0, display:Landroid/view/Display;
    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/infraware/office/evengine/EvInterface;->ISlideShow(III)V

    .line 213
    .end local v0           #display:Landroid/view/Display;
    :cond_22
    return-void
.end method

.method public OnLoadFail(I)V
    .registers 3
    .parameter "EEV_ERROR_CODE"

    .prologue
    .line 217
    const v0, 0x7f0801e3

    .line 218
    .local v0, nStrID:I
    packed-switch p1, :pswitch_data_1a

    .line 237
    :goto_6
    :pswitch_6
    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->AlertErrorAndCloseDlg(I)V

    .line 238
    return-void

    .line 223
    :pswitch_a
    const v0, 0x7f0801e3

    .line 224
    goto :goto_6

    .line 227
    :pswitch_e
    const v0, 0x7f0801e4

    .line 228
    goto :goto_6

    .line 230
    :pswitch_12
    const v0, 0x7f0801ef

    .line 231
    goto :goto_6

    .line 233
    :pswitch_16
    const v0, 0x7f0801f1

    goto :goto_6

    .line 218
    :pswitch_data_1a
    .packed-switch -0x7
        :pswitch_16
        :pswitch_6
        :pswitch_12
        :pswitch_a
        :pswitch_e
        :pswitch_e
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method

.method public OnPageMove(III)V
    .registers 4
    .parameter "nCurrentPage"
    .parameter "nTotalPage"
    .parameter "nErrorCode"

    .prologue
    .line 241
    return-void
.end method

.method public OnPptGetSlidenoteBitmap(II)Landroid/graphics/Bitmap;
    .registers 4
    .parameter "w"
    .parameter "h"

    .prologue
    .line 107
    const/4 v0, 0x0

    return-object v0
.end method

.method public OnPptGetSlidesBitmap(IIIILjava/lang/String;)Landroid/graphics/Bitmap;
    .registers 7
    .parameter "bBitmapIamage"
    .parameter "nPageNum"
    .parameter "w"
    .parameter "h"
    .parameter "strSlideTitle"

    .prologue
    .line 110
    const/4 v0, 0x0

    return-object v0
.end method

.method public OnPptOnDrawSlidenote(I)V
    .registers 2
    .parameter "pageNum"

    .prologue
    .line 113
    return-void
.end method

.method public OnPptSlideDelete()V
    .registers 1

    .prologue
    .line 116
    return-void
.end method

.method public OnPptSlideMoveNext()V
    .registers 1

    .prologue
    .line 122
    return-void
.end method

.method public OnPptSlideMovePrev()V
    .registers 1

    .prologue
    .line 125
    return-void
.end method

.method public OnPptSlideexInsert()V
    .registers 1

    .prologue
    .line 119
    return-void
.end method

.method public OnPptSlidenoteStart()V
    .registers 1

    .prologue
    .line 128
    return-void
.end method

.method public OnPrintMode(Ljava/lang/String;)V
    .registers 2
    .parameter "strPrintFile"

    .prologue
    .line 275
    return-void
.end method

.method public OnPrintedCount(I)V
    .registers 2
    .parameter "nTotalCount"

    .prologue
    .line 278
    return-void
.end method

.method public OnProgress(II)V
    .registers 3
    .parameter "EV_PROGRESS_TYPE"
    .parameter "nProgressValue"

    .prologue
    .line 244
    return-void
.end method

.method public OnProgressStart(I)V
    .registers 2
    .parameter "EV_PROGRESS_TYPE"

    .prologue
    .line 247
    return-void
.end method

.method public OnSearchMode(IIII)V
    .registers 5
    .parameter "EEV_SEARCH_TYPE"
    .parameter "nCurrentPage"
    .parameter "nTotalPage"
    .parameter "nReplaceAllCount"

    .prologue
    .line 250
    return-void
.end method

.method public OnTerminate()V
    .registers 1

    .prologue
    .line 253
    return-void
.end method

.method public OnTextToSpeachString(Ljava/lang/String;)V
    .registers 2
    .parameter "strTTS"

    .prologue
    .line 281
    return-void
.end method

.method public goToPage(I)V
    .registers 6
    .parameter "EV_MOVE_TYPE"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 320
    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EvInterface;->IGetConfig()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v0

    .line 322
    .local v0, info:Lcom/infraware/office/evengine/EV$CONFIG_INFO;
    packed-switch p1, :pswitch_data_52

    .line 349
    :cond_b
    :goto_b
    :pswitch_b
    return-void

    .line 324
    :pswitch_c
    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 325
    iget v1, v0, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nCurPage:I

    iget v2, v0, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nTotalPages:I

    if-lt v1, v2, :cond_1b

    .line 326
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->onBackPressed()V

    goto :goto_b

    .line 328
    :cond_1b
    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/infraware/office/evengine/EvInterface;->IMovePage(II)V

    goto :goto_b

    .line 331
    :pswitch_22
    iget v1, v0, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nCurPage:I

    if-eq v1, v2, :cond_b

    .line 333
    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 334
    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v1, v2, v3}, Lcom/infraware/office/evengine/EvInterface;->IMovePage(II)V

    goto :goto_b

    .line 338
    :pswitch_31
    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 339
    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v1, v3, v3}, Lcom/infraware/office/evengine/EvInterface;->IMovePage(II)V

    goto :goto_b

    .line 342
    :pswitch_3c
    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 343
    iget v1, v0, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nCurPage:I

    iget v2, v0, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nTotalPages:I

    if-lt v1, v2, :cond_4b

    .line 344
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->onBackPressed()V

    goto :goto_b

    .line 346
    :cond_4b
    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v3}, Lcom/infraware/office/evengine/EvInterface;->IMovePage(II)V

    goto :goto_b

    .line 322
    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_31
        :pswitch_22
        :pswitch_b
        :pswitch_c
        :pswitch_b
        :pswitch_3c
    .end packed-switch
.end method

.method protected makeOfficeDir()V
    .registers 4

    .prologue
    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->mBookClipPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->mBookMarkPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->mTempPath:Ljava/lang/String;

    .line 69
    const-string v0, "/mnt/sdcard/.polarisOffice/polarisTemp"

    const-string v1, "polarisTemp"

    const-string v2, "/mnt/sdcard/.polarisOffice/polarisTemp"

    invoke-static {v0, v1, v2, p0}, Lcom/infraware/common/util/FileUtils;->createCustomPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->mTempPath:Ljava/lang/String;

    .line 71
    const-string v0, "/mnt/sdcard/.polarisOffice/polarisBookmark"

    const-string v1, "polarisBookmark"

    const-string v2, "/mnt/sdcard/.polarisOffice/polarisBookmark"

    invoke-static {v0, v1, v2, p0}, Lcom/infraware/common/util/FileUtils;->createCustomPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->mBookMarkPath:Ljava/lang/String;

    .line 73
    const-string v0, "/mnt/sdcard/.polarisOffice/polarisBookclip"

    const-string v1, "polarisBookclip"

    const-string v2, "/mnt/sdcard/.polarisOffice/polarisBookclip"

    invoke-static {v0, v1, v2, p0}, Lcom/infraware/common/util/FileUtils;->createCustomPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->mBookClipPath:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public onBackPressed()V
    .registers 4

    .prologue
    .line 188
    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 190
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 191
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->setResult(ILandroid/content/Intent;)V

    .line 192
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->finish()V

    .line 193
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 8
    .parameter "newConfig"

    .prologue
    .line 257
    const/4 v0, 0x0

    .line 258
    .local v0, bLandscape:I
    const-string v2, "window"

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 259
    .local v1, display:Landroid/view/Display;
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_51

    .line 261
    const/4 v0, 0x1

    .line 262
    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v3, 0x1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/infraware/office/evengine/EvInterface;->IChangeScreen(III)V

    .line 270
    :goto_21
    const-string v2, "SlideShow"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Width:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Height:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/infraware/common/util/CMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-super {p0, p1}, Lcom/infraware/common/baseactivity/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 272
    return-void

    .line 266
    :cond_51
    const/4 v0, 0x0

    .line 267
    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/infraware/office/evengine/EvInterface;->IChangeScreen(III)V

    goto :goto_21
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 14
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 78
    invoke-super {p0, p1}, Lcom/infraware/common/baseactivity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const v0, 0x7f03005a

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->setContentView(I)V

    .line 80
    const v0, 0x7f0801a3

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->setTitle(I)V

    .line 81
    invoke-static {}, Lcom/infraware/office/evengine/EvInterface;->getInterface()Lcom/infraware/office/evengine/EvInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    .line 82
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    move-object v1, p0

    move-object v3, v2

    move-object v4, p0

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/infraware/office/evengine/EvInterface;->ISetListener(Lcom/infraware/office/evengine/EvListener$ViewerListener;Lcom/infraware/office/evengine/EvListener$EditorListener;Lcom/infraware/office/evengine/EvListener$WordEditorListener;Lcom/infraware/office/evengine/EvListener$PptEditorListener;Lcom/infraware/office/evengine/EvListener$SheetEditorListener;Lcom/infraware/office/evengine/EvListener$PreviewListener;)V

    .line 84
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    .line 85
    .local v10, display:Landroid/view/Display;
    const v0, 0x7f0c01ff

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->mSlideBitmap:Landroid/widget/ImageView;

    .line 87
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    .line 88
    .local v11, intent:Landroid/content/Intent;
    const-string v0, "key_pps_file"

    const/4 v2, 0x0

    invoke-virtual {v11, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->mbPPSFile:Ljava/lang/Boolean;

    .line 89
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->mbPPSFile:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_97

    .line 90
    const/4 v6, 0x0

    .line 91
    .local v6, bLandScape:I
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5f

    .line 92
    const/4 v6, 0x1

    .line 94
    :cond_5f
    const-string v0, "key_pps_file_path"

    invoke-virtual {v11, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, filePath:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->makeOfficeDir()V

    .line 97
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/infraware/common/util/Utils;->getCurrentLocaleType(Landroid/content/res/Resources;)I

    move-result v5

    .line 98
    .local v5, locale:I
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v10}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v10}, Landroid/view/Display;->getHeight()I

    move-result v3

    invoke-static {p0}, Lcom/infraware/common/util/Utils;->getDensityDpiForEvEngine(Landroid/app/Activity;)I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/infraware/office/evengine/EvInterface;->IInitialize(III)V

    .line 99
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v10}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v10}, Landroid/view/Display;->getHeight()I

    move-result v3

    const/16 v4, 0x20

    iget-object v7, p0, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->mTempPath:Ljava/lang/String;

    iget-object v8, p0, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->mBookMarkPath:Ljava/lang/String;

    iget-object v9, p0, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->mBookClipPath:Ljava/lang/String;

    invoke-virtual/range {v0 .. v9}, Lcom/infraware/office/evengine/EvInterface;->IOpen(Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .end local v1           #filePath:Ljava/lang/String;
    .end local v5           #locale:I
    .end local v6           #bLandScape:I
    :goto_96
    return-void

    .line 102
    :cond_97
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v10}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v10}, Landroid/view/Display;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v4}, Lcom/infraware/office/evengine/EvInterface;->IGetConfig()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v4

    iget v4, v4, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nCurPage:I

    invoke-virtual {v0, v2, v3, v4}, Lcom/infraware/office/evengine/EvInterface;->ISlideShow(III)V

    goto :goto_96
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 182
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 183
    invoke-super {p0}, Lcom/infraware/common/baseactivity/BaseActivity;->onDestroy()V

    .line 184
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 301
    sparse-switch p1, :sswitch_data_1c

    .line 316
    :goto_3
    invoke-super {p0, p1, p2}, Lcom/infraware/common/baseactivity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 303
    :sswitch_8
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->goToPage(I)V

    goto :goto_3

    .line 306
    :sswitch_d
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->goToPage(I)V

    goto :goto_3

    .line 309
    :sswitch_12
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->goToPage(I)V

    goto :goto_3

    .line 312
    :sswitch_17
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->goToPage(I)V

    goto :goto_3

    .line 301
    :sswitch_data_1c
    .sparse-switch
        0x1e -> :sswitch_17
        0x2a -> :sswitch_8
        0x2c -> :sswitch_d
        0x30 -> :sswitch_12
    .end sparse-switch
.end method

.method public onLocaleChange(I)V
    .registers 3
    .parameter "nLocale"

    .prologue
    .line 295
    const v0, 0x7f0801a3

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->setTitle(I)V

    .line 296
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 171
    invoke-super {p0}, Lcom/infraware/common/baseactivity/BaseActivity;->onPause()V

    .line 172
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 177
    invoke-super {p0}, Lcom/infraware/common/baseactivity/BaseActivity;->onResume()V

    .line 178
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "event"

    .prologue
    .line 145
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 146
    .local v0, action:I
    packed-switch v0, :pswitch_data_32

    .line 165
    :cond_7
    :goto_7
    invoke-super {p0, p1}, Lcom/infraware/common/baseactivity/BaseActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    .line 149
    :pswitch_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->mXTouchDownPos:I

    goto :goto_7

    .line 154
    :pswitch_14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v2, v3

    .line 155
    .local v2, x:I
    iget-object v3, p0, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v3}, Lcom/infraware/office/evengine/EvInterface;->IGetConfig()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v1

    .line 156
    .local v1, conf:Lcom/infraware/office/evengine/EV$CONFIG_INFO;
    iget v3, p0, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->mXTouchDownPos:I

    if-ge v3, v2, :cond_28

    .line 157
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->goToPage(I)V

    goto :goto_7

    .line 159
    :cond_28
    iget v3, p0, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->mXTouchDownPos:I

    if-le v3, v2, :cond_7

    .line 160
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->goToPage(I)V

    goto :goto_7

    .line 146
    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_c
        :pswitch_14
    .end packed-switch
.end method
