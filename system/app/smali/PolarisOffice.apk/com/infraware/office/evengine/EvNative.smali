.class Lcom/infraware/office/evengine/EvNative;
.super Ljava/lang/Object;
.source "EvNative.java"

# interfaces
.implements Lcom/infraware/office/evengine/E$EV_GUI_EVENT;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private LOG_CAT:Ljava/lang/String;

.field private mDvListener:Lcom/infraware/office/evengine/EvListener$ViewerListener;

.field private mEvCodeConversion:Lcom/infraware/office/evengine/EvCodeConversion;

.field private mEvImageUtil:Lcom/infraware/office/evengine/EvImageUtil;

.field private mEvListener:Lcom/infraware/office/evengine/EvListener$EditorListener;

.field private mEvPptListener:Lcom/infraware/office/evengine/EvListener$PptEditorListener;

.field private mEvSheetListener:Lcom/infraware/office/evengine/EvListener$SheetEditorListener;

.field private mEvWordListener:Lcom/infraware/office/evengine/EvListener$WordEditorListener;

.field private mInterface:Lcom/infraware/office/evengine/EvInterface;

.field private mPreviewListener:Lcom/infraware/office/evengine/EvListener$PreviewListener;

.field private mSystemFontFilePaths:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    const-class v0, Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/infraware/office/evengine/EvNative;->$assertionsDisabled:Z

    .line 481
    const-string v0, "polarisoffice"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void

    .line 14
    :cond_11
    const/4 v0, 0x0

    goto :goto_9
.end method

.method constructor <init>(Lcom/infraware/office/evengine/EvInterface;)V
    .registers 4
    .parameter "a_interface"

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "EvNative"

    iput-object v0, p0, Lcom/infraware/office/evengine/EvNative;->LOG_CAT:Ljava/lang/String;

    .line 17
    iput-object v1, p0, Lcom/infraware/office/evengine/EvNative;->mInterface:Lcom/infraware/office/evengine/EvInterface;

    .line 18
    iput-object v1, p0, Lcom/infraware/office/evengine/EvNative;->mDvListener:Lcom/infraware/office/evengine/EvListener$ViewerListener;

    .line 19
    iput-object v1, p0, Lcom/infraware/office/evengine/EvNative;->mEvListener:Lcom/infraware/office/evengine/EvListener$EditorListener;

    .line 20
    iput-object v1, p0, Lcom/infraware/office/evengine/EvNative;->mEvWordListener:Lcom/infraware/office/evengine/EvListener$WordEditorListener;

    .line 21
    iput-object v1, p0, Lcom/infraware/office/evengine/EvNative;->mEvPptListener:Lcom/infraware/office/evengine/EvListener$PptEditorListener;

    .line 22
    iput-object v1, p0, Lcom/infraware/office/evengine/EvNative;->mEvSheetListener:Lcom/infraware/office/evengine/EvListener$SheetEditorListener;

    .line 23
    iput-object v1, p0, Lcom/infraware/office/evengine/EvNative;->mPreviewListener:Lcom/infraware/office/evengine/EvListener$PreviewListener;

    .line 24
    iput-object v1, p0, Lcom/infraware/office/evengine/EvNative;->mEvCodeConversion:Lcom/infraware/office/evengine/EvCodeConversion;

    .line 25
    iput-object v1, p0, Lcom/infraware/office/evengine/EvNative;->mEvImageUtil:Lcom/infraware/office/evengine/EvImageUtil;

    .line 26
    iput-object v1, p0, Lcom/infraware/office/evengine/EvNative;->mSystemFontFilePaths:[Ljava/lang/String;

    .line 70
    sget-boolean v0, Lcom/infraware/office/evengine/EvNative;->$assertionsDisabled:Z

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mInterface:Lcom/infraware/office/evengine/EvInterface;

    if-eqz v0, :cond_2a

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 72
    :cond_2a
    iput-object p1, p0, Lcom/infraware/office/evengine/EvNative;->mInterface:Lcom/infraware/office/evengine/EvInterface;

    .line 73
    invoke-static {}, Lcom/infraware/office/evengine/EvCodeConversion;->getCodeConversion()Lcom/infraware/office/evengine/EvCodeConversion;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvCodeConversion:Lcom/infraware/office/evengine/EvCodeConversion;

    .line 74
    invoke-static {}, Lcom/infraware/office/evengine/EvImageUtil;->getEvImageUtil()Lcom/infraware/office/evengine/EvImageUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvImageUtil:Lcom/infraware/office/evengine/EvImageUtil;

    .line 75
    invoke-direct {p0}, Lcom/infraware/office/evengine/EvNative;->MakeSystemFontFileNames()V

    .line 76
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvCodeConversion:Lcom/infraware/office/evengine/EvCodeConversion;

    iget-object v1, p0, Lcom/infraware/office/evengine/EvNative;->mEvImageUtil:Lcom/infraware/office/evengine/EvImageUtil;

    invoke-direct {p0, v0, v1}, Lcom/infraware/office/evengine/EvNative;->IBeginNative(Lcom/infraware/office/evengine/EvCodeConversion;Lcom/infraware/office/evengine/EvImageUtil;)V

    .line 77
    return-void
.end method

.method private GetBitmap(II)Landroid/graphics/Bitmap;
    .registers 4
    .parameter "w"
    .parameter "h"

    .prologue
    .line 341
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mDvListener:Lcom/infraware/office/evengine/EvListener$ViewerListener;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mDvListener:Lcom/infraware/office/evengine/EvListener$ViewerListener;

    invoke-interface {v0, p1, p2}, Lcom/infraware/office/evengine/EvListener$ViewerListener;->GetBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 343
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private GetImagePlaceHolderDefaultImage()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mDvListener:Lcom/infraware/office/evengine/EvListener$ViewerListener;

    if-eqz v0, :cond_b

    .line 372
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mDvListener:Lcom/infraware/office/evengine/EvListener$ViewerListener;

    invoke-interface {v0}, Lcom/infraware/office/evengine/EvListener$ViewerListener;->OnImagePlaceHolderDefaultImage()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 374
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private GetThumbnailBitmap(III)Landroid/graphics/Bitmap;
    .registers 5
    .parameter "nPageNum"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 332
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mDvListener:Lcom/infraware/office/evengine/EvListener$ViewerListener;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mDvListener:Lcom/infraware/office/evengine/EvListener$ViewerListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/infraware/office/evengine/EvListener$ViewerListener;->GetThumbnailBitmap(III)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private native IBeginNative(Lcom/infraware/office/evengine/EvCodeConversion;Lcom/infraware/office/evengine/EvImageUtil;)V
.end method

.method private MakeSystemFontFileNames()V
    .registers 16

    .prologue
    .line 29
    const/16 v13, 0x8

    new-array v12, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "droidsansfallback"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const-string v14, "arab"

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const-string v14, "hebrew"

    aput-object v14, v12, v13

    const/4 v13, 0x3

    const-string v14, "droidsansthai"

    aput-object v14, v12, v13

    const/4 v13, 0x4

    const-string v14, "subset"

    aput-object v14, v12, v13

    const/4 v13, 0x5

    const-string v14, "rupakara"

    aput-object v14, v12, v13

    const/4 v13, 0x6

    const-string v14, "DroidSansHindi"

    aput-object v14, v12, v13

    const/4 v13, 0x7

    const-string v14, "DroidNaskh-Regular"

    aput-object v14, v12, v13

    .line 30
    .local v12, useString:[Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .local v6, fontPaths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v13, Ljava/io/File;

    const-string v14, "/system/fonts/"

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 32
    .local v3, fontFiles:[Ljava/io/File;
    array-length v2, v3

    .line 33
    .local v2, fontCount:I
    const-wide/16 v10, 0x0

    .line 34
    .local v10, mostBigFileSize:J
    const/4 v7, 0x0

    .local v7, i:I
    :goto_40
    if-lt v7, v2, :cond_53

    .line 51
    const-string v9, "droidsansjapanese"

    .line 52
    .local v9, japaneseString:Ljava/lang/String;
    const/4 v7, 0x0

    :goto_45
    if-lt v7, v2, :cond_ab

    .line 62
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    .line 63
    .local v5, fontNameSize:I
    new-array v13, v5, [Ljava/lang/String;

    iput-object v13, p0, Lcom/infraware/office/evengine/EvNative;->mSystemFontFilePaths:[Ljava/lang/String;

    .line 64
    const/4 v7, 0x0

    :goto_50
    if-lt v7, v5, :cond_e6

    .line 66
    return-void

    .line 35
    .end local v5           #fontNameSize:I
    .end local v9           #japaneseString:Ljava/lang/String;
    :cond_53
    aget-object v13, v3, v7

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 36
    .local v4, fontName:Ljava/lang/String;
    aget-object v13, v3, v7

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 38
    .local v0, fileSize:J
    const/4 v8, 0x0

    .local v8, j:I
    :goto_64
    array-length v13, v12

    if-lt v8, v13, :cond_6a

    .line 34
    add-int/lit8 v7, v7, 0x1

    goto :goto_40

    .line 39
    :cond_6a
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "(?i).*"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v14, v12, v8

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".*"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9e

    .line 40
    aget-object v13, v3, v7

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_9e

    .line 41
    cmp-long v13, v10, v0

    if-gez v13, :cond_a1

    .line 42
    move-wide v10, v0

    .line 43
    const/4 v13, 0x0

    aget-object v14, v3, v7

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v6, v13, v14}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 38
    :cond_9e
    :goto_9e
    add-int/lit8 v8, v8, 0x1

    goto :goto_64

    .line 46
    :cond_a1
    aget-object v13, v3, v7

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9e

    .line 53
    .end local v0           #fileSize:J
    .end local v4           #fontName:Ljava/lang/String;
    .end local v8           #j:I
    .restart local v9       #japaneseString:Ljava/lang/String;
    :cond_ab
    aget-object v13, v3, v7

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 55
    .restart local v4       #fontName:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "(?i).*"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".*"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_e2

    .line 56
    aget-object v13, v3, v7

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_e2

    .line 57
    const/4 v13, 0x0

    aget-object v14, v3, v7

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v6, v13, v14}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 52
    :cond_e2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_45

    .line 65
    .end local v4           #fontName:Ljava/lang/String;
    .restart local v5       #fontNameSize:I
    :cond_e6
    iget-object v14, p0, Lcom/infraware/office/evengine/EvNative;->mSystemFontFilePaths:[Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    aput-object v13, v14, v7

    .line 64
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_50
.end method

.method private OnBookMarkEditorMode()V
    .registers 3

    .prologue
    .line 389
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->LOG_CAT:Ljava/lang/String;

    const-string v1, "OnBookMarkEditorMode"

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvListener:Lcom/infraware/office/evengine/EvListener$EditorListener;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvListener:Lcom/infraware/office/evengine/EvListener$EditorListener;

    invoke-interface {v0}, Lcom/infraware/office/evengine/EvListener$EditorListener;->OnBookMarkEditorMode()V

    .line 391
    :cond_10
    return-void
.end method

.method private OnCloseDoc()V
    .registers 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mDvListener:Lcom/infraware/office/evengine/EvListener$ViewerListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mDvListener:Lcom/infraware/office/evengine/EvListener$ViewerListener;

    invoke-interface {v0}, Lcom/infraware/office/evengine/EvListener$ViewerListener;->OnCloseDoc()V

    :cond_9
    return-void
.end method

.method private OnDrawBitmap(III)V
    .registers 7
    .parameter "nCallId"
    .parameter "bShowAutomap"
    .parameter "nCurrentMode"

    .prologue
    const v2, 0xffff

    .line 347
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvInterface;->EV()Lcom/infraware/office/evengine/EV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV;->getConfigInfo()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/infraware/office/evengine/EvNative;->IGetConfig(Lcom/infraware/office/evengine/EV$CONFIG_INFO;)V

    .line 348
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvInterface;->EV()Lcom/infraware/office/evengine/EV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV;->getScreenInfo()Lcom/infraware/office/evengine/EV$SCREEN_INFO;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/infraware/office/evengine/EvNative;->IGetScreenPos(Lcom/infraware/office/evengine/EV$SCREEN_INFO;)V

    .line 350
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvInterface;->EV()Lcom/infraware/office/evengine/EV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV;->getScrollInfoEditor()Lcom/infraware/office/evengine/EV$SCROLLINFO_EDITOR;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/infraware/office/evengine/EvNative;->IGetScrollInfo_Editor(Lcom/infraware/office/evengine/EV$SCROLLINFO_EDITOR;)V

    .line 351
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvInterface;->EV()Lcom/infraware/office/evengine/EV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV;->getCaretInfoEvent()Lcom/infraware/office/evengine/EV$CARET_INFO;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/infraware/office/evengine/EvNative;->IGetCaretInfo(Lcom/infraware/office/evengine/EV$CARET_INFO;)V

    .line 352
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvListener:Lcom/infraware/office/evengine/EvListener$EditorListener;

    if-eqz v0, :cond_40

    .line 353
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0, p3}, Lcom/infraware/office/evengine/EvInterface;->ISetEditorMode_Editor(I)V

    .line 356
    :cond_40
    if-ne p1, v2, :cond_49

    .line 357
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->LOG_CAT:Ljava/lang/String;

    const-string v1, "CallId == eEV_GUI_MAX_EVENT"

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    :cond_49
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mDvListener:Lcom/infraware/office/evengine/EvListener$ViewerListener;

    if-eqz v0, :cond_54

    if-eq p1, v2, :cond_54

    .line 360
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mDvListener:Lcom/infraware/office/evengine/EvListener$ViewerListener;

    invoke-interface {v0, p1, p2}, Lcom/infraware/office/evengine/EvListener$ViewerListener;->OnDrawBitmap(II)V

    .line 361
    :cond_54
    return-void
.end method

.method private OnDrawPreviewBitmap()V
    .registers 2

    .prologue
    .line 474
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mPreviewListener:Lcom/infraware/office/evengine/EvListener$PreviewListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mPreviewListener:Lcom/infraware/office/evengine/EvListener$PreviewListener;

    invoke-interface {v0}, Lcom/infraware/office/evengine/EvListener$PreviewListener;->OnDrawPreviewBitmap()V

    :cond_9
    return-void
.end method

.method private OnDrawThumbnailBitmap(I)V
    .registers 3
    .parameter "nPageNum"

    .prologue
    .line 333
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mDvListener:Lcom/infraware/office/evengine/EvListener$ViewerListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mDvListener:Lcom/infraware/office/evengine/EvListener$ViewerListener;

    invoke-interface {v0, p1}, Lcom/infraware/office/evengine/EvListener$ViewerListener;->OnDrawThumbnailBitmap(I)V

    :cond_9
    return-void
.end method

.method private OnEditCopyCut(ILjava/lang/String;)V
    .registers 4
    .parameter "nType"
    .parameter "str"

    .prologue
    .line 405
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvListener:Lcom/infraware/office/evengine/EvListener$EditorListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvListener:Lcom/infraware/office/evengine/EvListener$EditorListener;

    invoke-interface {v0, p1, p2}, Lcom/infraware/office/evengine/EvListener$EditorListener;->OnEditCopyCut(ILjava/lang/String;)V

    :cond_9
    return-void
.end method

.method private OnEditOrViewMode(II)V
    .registers 4
    .parameter "bEditMode"
    .parameter "EV_EDITMODETYPE"

    .prologue
    .line 392
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvListener:Lcom/infraware/office/evengine/EvListener$EditorListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvListener:Lcom/infraware/office/evengine/EvListener$EditorListener;

    invoke-interface {v0, p1, p2}, Lcom/infraware/office/evengine/EvListener$EditorListener;->OnEditOrViewMode(II)V

    :cond_9
    return-void
.end method

.method private OnExitPreviewMode(I)V
    .registers 3
    .parameter "a_nError"

    .prologue
    .line 478
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mPreviewListener:Lcom/infraware/office/evengine/EvListener$PreviewListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mPreviewListener:Lcom/infraware/office/evengine/EvListener$PreviewListener;

    invoke-interface {v0, p1}, Lcom/infraware/office/evengine/EvListener$PreviewListener;->OnExitPreviewMode(I)V

    :cond_9
    return-void
.end method

.method private OnFinalizeComplete()V
    .registers 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvInterface;->OnFinalizeComplete()V

    return-void
.end method

.method private OnGetClipBoardHelper()Lcom/infraware/office/evengine/EvClipBoardHelper;
    .registers 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvListener:Lcom/infraware/office/evengine/EvListener$EditorListener;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvListener:Lcom/infraware/office/evengine/EvListener$EditorListener;

    invoke-interface {v0}, Lcom/infraware/office/evengine/EvListener$EditorListener;->OnGetClipBoardHelper()Lcom/infraware/office/evengine/EvClipBoardHelper;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private OnGetDeviceInfo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 378
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method private OnGetFormulaFieldSelection()[I
    .registers 2

    .prologue
    .line 434
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvSheetListener:Lcom/infraware/office/evengine/EvListener$SheetEditorListener;

    if-eqz v0, :cond_b

    .line 435
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvSheetListener:Lcom/infraware/office/evengine/EvListener$SheetEditorListener;

    invoke-interface {v0}, Lcom/infraware/office/evengine/EvListener$SheetEditorListener;->OnGetFormulaFieldSelection()[I

    move-result-object v0

    .line 436
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private OnGetFormulaFieldText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 423
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvSheetListener:Lcom/infraware/office/evengine/EvListener$SheetEditorListener;

    if-eqz v0, :cond_b

    .line 424
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvSheetListener:Lcom/infraware/office/evengine/EvListener$SheetEditorListener;

    invoke-interface {v0}, Lcom/infraware/office/evengine/EvListener$SheetEditorListener;->OnGetFormulaFieldText()Ljava/lang/String;

    move-result-object v0

    .line 425
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private OnGetPreviewBitmap(II)Landroid/graphics/Bitmap;
    .registers 4
    .parameter "w"
    .parameter "h"

    .prologue
    .line 473
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mPreviewListener:Lcom/infraware/office/evengine/EvListener$PreviewListener;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mPreviewListener:Lcom/infraware/office/evengine/EvListener$PreviewListener;

    invoke-interface {v0, p1, p2}, Lcom/infraware/office/evengine/EvListener$PreviewListener;->OnGetPreviewBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private OnGetResStringID(I)Ljava/lang/String;
    .registers 3
    .parameter "nStrID"

    .prologue
    .line 364
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mDvListener:Lcom/infraware/office/evengine/EvListener$ViewerListener;

    if-eqz v0, :cond_b

    .line 365
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mDvListener:Lcom/infraware/office/evengine/EvListener$ViewerListener;

    invoke-interface {v0, p1}, Lcom/infraware/office/evengine/EvListener$ViewerListener;->OnGetResID(I)Ljava/lang/String;

    move-result-object v0

    .line 367
    :goto_a
    return-object v0

    :cond_b
    const-string v0, ""

    goto :goto_a
.end method

.method private OnGetSheetScrollIInfo()[I
    .registers 2

    .prologue
    .line 445
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvSheetListener:Lcom/infraware/office/evengine/EvListener$SheetEditorListener;

    if-eqz v0, :cond_b

    .line 446
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvSheetListener:Lcom/infraware/office/evengine/EvListener$SheetEditorListener;

    invoke-interface {v0}, Lcom/infraware/office/evengine/EvListener$SheetEditorListener;->OnGetSheetScrollIInfo()[I

    move-result-object v0

    .line 447
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private OnHidAction(I)V
    .registers 3
    .parameter "EEV_HID_ACTION"

    .prologue
    .line 395
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvListener:Lcom/infraware/office/evengine/EvListener$EditorListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvListener:Lcom/infraware/office/evengine/EvListener$EditorListener;

    invoke-interface {v0, p1}, Lcom/infraware/office/evengine/EvListener$EditorListener;->OnHidAction(I)V

    :cond_9
    return-void
.end method

.method private OnIMEInsertMode()V
    .registers 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvListener:Lcom/infraware/office/evengine/EvListener$EditorListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvListener:Lcom/infraware/office/evengine/EvListener$EditorListener;

    invoke-interface {v0}, Lcom/infraware/office/evengine/EvListener$EditorListener;->OnIMEInsertMode()V

    :cond_9
    return-void
.end method

.method private OnInitComplete(I)V
    .registers 3
    .parameter "EEV_ERROR_CODE"

    .prologue
    .line 318
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvInterface;->OnInitComplete(I)V

    return-void
.end method

.method private OnInsertTableMode()V
    .registers 2

    .prologue
    .line 396
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvListener:Lcom/infraware/office/evengine/EvListener$EditorListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvListener:Lcom/infraware/office/evengine/EvListener$EditorListener;

    invoke-interface {v0}, Lcom/infraware/office/evengine/EvListener$EditorListener;->OnInsertTableMode()V

    :cond_9
    return-void
.end method

.method private OnLoadComplete(Ljava/lang/String;)V
    .registers 3
    .parameter "strWritePassword"

    .prologue
    .line 320
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mDvListener:Lcom/infraware/office/evengine/EvListener$ViewerListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mDvListener:Lcom/infraware/office/evengine/EvListener$ViewerListener;

    invoke-interface {v0, p1}, Lcom/infraware/office/evengine/EvListener$ViewerListener;->OnLoadComplete(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method private OnLoadFail(I)V
    .registers 3
    .parameter "EEV_ERROR_CODE"

    .prologue
    .line 321
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mDvListener:Lcom/infraware/office/evengine/EvListener$ViewerListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mDvListener:Lcom/infraware/office/evengine/EvListener$ViewerListener;

    invoke-interface {v0, p1}, Lcom/infraware/office/evengine/EvListener$ViewerListener;->OnLoadFail(I)V

    :cond_9
    return-void
.end method

.method private OnNewDoc(I)V
    .registers 3
    .parameter "bOk"

    .prologue
    .line 393
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvListener:Lcom/infraware/office/evengine/EvListener$EditorListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvListener:Lcom/infraware/office/evengine/EvListener$EditorListener;

    invoke-interface {v0, p1}, Lcom/infraware/office/evengine/EvListener$EditorListener;->OnNewDoc(I)V

    :cond_9
    return-void
.end method

.method private OnObjectPoints([I)V
    .registers 4
    .parameter "param"

    .prologue
    .line 394
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvListener:Lcom/infraware/office/evengine/EvListener$EditorListener;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvListener:Lcom/infraware/office/evengine/EvListener$EditorListener;

    iget-object v1, p0, Lcom/infraware/office/evengine/EvNative;->mInterface:Lcom/infraware/office/evengine/EvInterface;

    iget-object v1, v1, Lcom/infraware/office/evengine/EvInterface;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EV;->getEditorObjectPointArray()Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;->setValue([I)Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/infraware/office/evengine/EvListener$EditorListener;->OnObjectPoints(Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;)V

    :cond_15
    return-void
.end method

.method private OnPageMove(III)V
    .registers 5
    .parameter "nCurrentPage"
    .parameter "nTotalPage"
    .parameter "nErrorCode"

    .prologue
    .line 324
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvInterface;->EV()Lcom/infraware/office/evengine/EV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV;->getConfigInfo()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/infraware/office/evengine/EvNative;->IGetConfig(Lcom/infraware/office/evengine/EV$CONFIG_INFO;)V

    .line 325
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mDvListener:Lcom/infraware/office/evengine/EvListener$ViewerListener;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mDvListener:Lcom/infraware/office/evengine/EvListener$ViewerListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/infraware/office/evengine/EvListener$ViewerListener;->OnPageMove(III)V

    .line 326
    :cond_16
    return-void
.end method

.method private OnPptGetSlidenoteBitmap(II)Landroid/graphics/Bitmap;
    .registers 4
    .parameter "w"
    .parameter "h"

    .prologue
    .line 458
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvPptListener:Lcom/infraware/office/evengine/EvListener$PptEditorListener;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvPptListener:Lcom/infraware/office/evengine/EvListener$PptEditorListener;

    invoke-interface {v0, p1, p2}, Lcom/infraware/office/evengine/EvListener$PptEditorListener;->OnPptGetSlidenoteBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private OnPptGetSlidesBitmap(IIIILjava/lang/String;)Landroid/graphics/Bitmap;
    .registers 12
    .parameter "bBitmapIamage"
    .parameter "nPageNum"
    .parameter "w"
    .parameter "h"
    .parameter "strSlideTitle"

    .prologue
    .line 457
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvPptListener:Lcom/infraware/office/evengine/EvListener$PptEditorListener;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvPptListener:Lcom/infraware/office/evengine/EvListener$PptEditorListener;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/infraware/office/evengine/EvListener$PptEditorListener;->OnPptGetSlidesBitmap(IIIILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_f
    return-object v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private OnPptOnDrawSlidenote(I)V
    .registers 3
    .parameter "pageNum"

    .prologue
    .line 459
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvPptListener:Lcom/infraware/office/evengine/EvListener$PptEditorListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvPptListener:Lcom/infraware/office/evengine/EvListener$PptEditorListener;

    invoke-interface {v0, p1}, Lcom/infraware/office/evengine/EvListener$PptEditorListener;->OnPptOnDrawSlidenote(I)V

    :cond_9
    return-void
.end method

.method private OnPptSlideDelete()V
    .registers 2

    .prologue
    .line 464
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvPptListener:Lcom/infraware/office/evengine/EvListener$PptEditorListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvPptListener:Lcom/infraware/office/evengine/EvListener$PptEditorListener;

    invoke-interface {v0}, Lcom/infraware/office/evengine/EvListener$PptEditorListener;->OnPptSlideDelete()V

    :cond_9
    return-void
.end method

.method private OnPptSlideMoveNext()V
    .registers 2

    .prologue
    .line 463
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvPptListener:Lcom/infraware/office/evengine/EvListener$PptEditorListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvPptListener:Lcom/infraware/office/evengine/EvListener$PptEditorListener;

    invoke-interface {v0}, Lcom/infraware/office/evengine/EvListener$PptEditorListener;->OnPptSlideMoveNext()V

    :cond_9
    return-void
.end method

.method private OnPptSlideMovePrev()V
    .registers 2

    .prologue
    .line 462
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvPptListener:Lcom/infraware/office/evengine/EvListener$PptEditorListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvPptListener:Lcom/infraware/office/evengine/EvListener$PptEditorListener;

    invoke-interface {v0}, Lcom/infraware/office/evengine/EvListener$PptEditorListener;->OnPptSlideMovePrev()V

    :cond_9
    return-void
.end method

.method private OnPptSlideexInsert()V
    .registers 2

    .prologue
    .line 461
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvPptListener:Lcom/infraware/office/evengine/EvListener$PptEditorListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvPptListener:Lcom/infraware/office/evengine/EvListener$PptEditorListener;

    invoke-interface {v0}, Lcom/infraware/office/evengine/EvListener$PptEditorListener;->OnPptSlideexInsert()V

    :cond_9
    return-void
.end method

.method private OnPptSlidenoteStart()V
    .registers 2

    .prologue
    .line 460
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvPptListener:Lcom/infraware/office/evengine/EvListener$PptEditorListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvPptListener:Lcom/infraware/office/evengine/EvListener$PptEditorListener;

    invoke-interface {v0}, Lcom/infraware/office/evengine/EvListener$PptEditorListener;->OnPptSlidenoteStart()V

    :cond_9
    return-void
.end method

.method private OnPreviewTimerStart()V
    .registers 2

    .prologue
    .line 476
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mInterface:Lcom/infraware/office/evengine/EvInterface;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvInterface;->OnPreviewTimerStart()V

    :cond_9
    return-void
.end method

.method private OnPreviewTimerStop()V
    .registers 2

    .prologue
    .line 477
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mInterface:Lcom/infraware/office/evengine/EvInterface;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvInterface;->OnPreviewTimerStop()V

    :cond_9
    return-void
.end method

.method private OnPrintMode(Ljava/lang/String;)V
    .registers 3
    .parameter "strPrintFile"

    .prologue
    .line 334
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mDvListener:Lcom/infraware/office/evengine/EvListener$ViewerListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mDvListener:Lcom/infraware/office/evengine/EvListener$ViewerListener;

    invoke-interface {v0, p1}, Lcom/infraware/office/evengine/EvListener$ViewerListener;->OnPrintMode(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method private OnPrintedCount(I)V
    .registers 3
    .parameter "nTotalCount"

    .prologue
    .line 335
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mDvListener:Lcom/infraware/office/evengine/EvListener$ViewerListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mDvListener:Lcom/infraware/office/evengine/EvListener$ViewerListener;

    invoke-interface {v0, p1}, Lcom/infraware/office/evengine/EvListener$ViewerListener;->OnPrintedCount(I)V

    :cond_9
    return-void
.end method

.method private OnProgress(II)V
    .registers 4
    .parameter "EV_PROGRESS_TYPE"
    .parameter "nProgressValue"

    .prologue
    .line 328
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mDvListener:Lcom/infraware/office/evengine/EvListener$ViewerListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mDvListener:Lcom/infraware/office/evengine/EvListener$ViewerListener;

    invoke-interface {v0, p1, p2}, Lcom/infraware/office/evengine/EvListener$ViewerListener;->OnProgress(II)V

    :cond_9
    return-void
.end method

.method private OnProgressStart(I)V
    .registers 3
    .parameter "EV_PROGRESS_TYPE"

    .prologue
    .line 327
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mDvListener:Lcom/infraware/office/evengine/EvListener$ViewerListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mDvListener:Lcom/infraware/office/evengine/EvListener$ViewerListener;

    invoke-interface {v0, p1}, Lcom/infraware/office/evengine/EvListener$ViewerListener;->OnProgressStart(I)V

    :cond_9
    return-void
.end method

.method private OnSaveDoc(I)V
    .registers 3
    .parameter "bOk"

    .prologue
    .line 387
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvListener:Lcom/infraware/office/evengine/EvListener$EditorListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvListener:Lcom/infraware/office/evengine/EvListener$EditorListener;

    invoke-interface {v0, p1}, Lcom/infraware/office/evengine/EvListener$EditorListener;->OnSaveDoc(I)V

    :cond_9
    return-void
.end method

.method private OnSearchMode(IIII)V
    .registers 6
    .parameter "EEV_SEARCH_TYPE"
    .parameter "nCurrentPage"
    .parameter "nTotalPage"
    .parameter "nReplaceAllCount"

    .prologue
    .line 331
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mDvListener:Lcom/infraware/office/evengine/EvListener$ViewerListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mDvListener:Lcom/infraware/office/evengine/EvListener$ViewerListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/infraware/office/evengine/EvListener$ViewerListener;->OnSearchMode(IIII)V

    :cond_9
    return-void
.end method

.method private OnSetFormulaFieldSelection(II)V
    .registers 4
    .parameter "nStartPos"
    .parameter "nEndPos"

    .prologue
    .line 440
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvSheetListener:Lcom/infraware/office/evengine/EvListener$SheetEditorListener;

    if-eqz v0, :cond_9

    .line 441
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvSheetListener:Lcom/infraware/office/evengine/EvListener$SheetEditorListener;

    invoke-interface {v0, p1, p2}, Lcom/infraware/office/evengine/EvListener$SheetEditorListener;->OnSetFormulaFieldSelection(II)V

    .line 442
    :cond_9
    return-void
.end method

.method private OnSetFormulaFieldText(Ljava/lang/String;I)V
    .registers 4
    .parameter "str"
    .parameter "bOnlyFormulaField"

    .prologue
    .line 429
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvSheetListener:Lcom/infraware/office/evengine/EvListener$SheetEditorListener;

    if-eqz v0, :cond_9

    .line 430
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvSheetListener:Lcom/infraware/office/evengine/EvListener$SheetEditorListener;

    invoke-interface {v0, p1, p2}, Lcom/infraware/office/evengine/EvListener$SheetEditorListener;->OnSetFormulaFieldText(Ljava/lang/String;I)V

    .line 431
    :cond_9
    return-void
.end method

.method private OnSetNameBoxText(Ljava/lang/String;)V
    .registers 3
    .parameter "str"

    .prologue
    .line 418
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvSheetListener:Lcom/infraware/office/evengine/EvListener$SheetEditorListener;

    if-eqz v0, :cond_9

    .line 419
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvSheetListener:Lcom/infraware/office/evengine/EvListener$SheetEditorListener;

    invoke-interface {v0, p1}, Lcom/infraware/office/evengine/EvListener$SheetEditorListener;->OnSetNameBoxText(Ljava/lang/String;)V

    .line 420
    :cond_9
    return-void
.end method

.method private OnSetSheetScrollIInfo(IIIII)V
    .registers 12
    .parameter "nValue"
    .parameter "nMin"
    .parameter "nMax"
    .parameter "nSize"
    .parameter "bHorizontal"

    .prologue
    .line 451
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvSheetListener:Lcom/infraware/office/evengine/EvListener$SheetEditorListener;

    if-eqz v0, :cond_e

    .line 452
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvSheetListener:Lcom/infraware/office/evengine/EvListener$SheetEditorListener;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/infraware/office/evengine/EvListener$SheetEditorListener;->OnSetSheetScrollIInfo(IIIII)V

    .line 453
    :cond_e
    return-void
.end method

.method private OnSheetChart(I)V
    .registers 3
    .parameter "EEV_SHEET_EDITOR_STATUS"

    .prologue
    .line 415
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvSheetListener:Lcom/infraware/office/evengine/EvListener$SheetEditorListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvSheetListener:Lcom/infraware/office/evengine/EvListener$SheetEditorListener;

    invoke-interface {v0, p1}, Lcom/infraware/office/evengine/EvListener$SheetEditorListener;->OnSheetChart(I)V

    :cond_9
    return-void
.end method

.method private OnSheetEdit(II)V
    .registers 4
    .parameter "EEV_SHEET_EDIT"
    .parameter "EEV_SHEET_EDITOR_RESULT"

    .prologue
    .line 409
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvSheetListener:Lcom/infraware/office/evengine/EvListener$SheetEditorListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvSheetListener:Lcom/infraware/office/evengine/EvListener$SheetEditorListener;

    invoke-interface {v0, p1, p2}, Lcom/infraware/office/evengine/EvListener$SheetEditorListener;->OnSheetEdit(II)V

    :cond_9
    return-void
.end method

.method private OnSheetFocus()V
    .registers 2

    .prologue
    .line 412
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvSheetListener:Lcom/infraware/office/evengine/EvListener$SheetEditorListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvSheetListener:Lcom/infraware/office/evengine/EvListener$SheetEditorListener;

    invoke-interface {v0}, Lcom/infraware/office/evengine/EvListener$SheetEditorListener;->OnSheetFocus()V

    :cond_9
    return-void
.end method

.method private OnSheetFunction(III)V
    .registers 5
    .parameter "EEV_SHEET_EDITOR_STATUS"
    .parameter "EEV_SHEET_FUNCTION_ERROR"
    .parameter "EEV_SHEET_FUNCTION_ERROR_CODE"

    .prologue
    .line 408
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvSheetListener:Lcom/infraware/office/evengine/EvListener$SheetEditorListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvSheetListener:Lcom/infraware/office/evengine/EvListener$SheetEditorListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/infraware/office/evengine/EvListener$SheetEditorListener;->OnSheetFunction(III)V

    :cond_9
    return-void
.end method

.method private OnSheetInputField(II)V
    .registers 4
    .parameter "EEV_SHEET_EDITOR_RESULT"
    .parameter "EEV_SHEET_IPUTFIELD_RESULT"

    .prologue
    .line 414
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvSheetListener:Lcom/infraware/office/evengine/EvListener$SheetEditorListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvSheetListener:Lcom/infraware/office/evengine/EvListener$SheetEditorListener;

    invoke-interface {v0, p1, p2}, Lcom/infraware/office/evengine/EvListener$SheetEditorListener;->OnSheetInputField(II)V

    :cond_9
    return-void
.end method

.method private OnSheetProtection(I)V
    .registers 3
    .parameter "EEV_SHEET_EDITOR_RESULT"

    .prologue
    .line 410
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvSheetListener:Lcom/infraware/office/evengine/EvListener$SheetEditorListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvSheetListener:Lcom/infraware/office/evengine/EvListener$SheetEditorListener;

    invoke-interface {v0, p1}, Lcom/infraware/office/evengine/EvListener$SheetEditorListener;->OnSheetProtection(I)V

    :cond_9
    return-void
.end method

.method private OnSheetSort(I)V
    .registers 3
    .parameter "EEV_SHEET_EDITOR_RESULT"

    .prologue
    .line 411
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvSheetListener:Lcom/infraware/office/evengine/EvListener$SheetEditorListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvSheetListener:Lcom/infraware/office/evengine/EvListener$SheetEditorListener;

    invoke-interface {v0, p1}, Lcom/infraware/office/evengine/EvListener$SheetEditorListener;->OnSheetSort(I)V

    :cond_9
    return-void
.end method

.method private OnTerminate()V
    .registers 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mDvListener:Lcom/infraware/office/evengine/EvListener$ViewerListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mDvListener:Lcom/infraware/office/evengine/EvListener$ViewerListener;

    invoke-interface {v0}, Lcom/infraware/office/evengine/EvListener$ViewerListener;->OnTerminate()V

    :cond_9
    return-void
.end method

.method private OnTextToSpeachString(Ljava/lang/String;)V
    .registers 3
    .parameter "strTTS"

    .prologue
    .line 337
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mDvListener:Lcom/infraware/office/evengine/EvListener$ViewerListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mDvListener:Lcom/infraware/office/evengine/EvListener$ViewerListener;

    invoke-interface {v0, p1}, Lcom/infraware/office/evengine/EvListener$ViewerListener;->OnTextToSpeachString(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method private OnTimerStart()V
    .registers 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mInterface:Lcom/infraware/office/evengine/EvInterface;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvInterface;->OnTimerStart()V

    :cond_9
    return-void
.end method

.method private OnTimerStop()V
    .registers 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mInterface:Lcom/infraware/office/evengine/EvInterface;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvInterface;->OnTimerStop()V

    :cond_9
    return-void
.end method

.method private OnUndoOrRedo()V
    .registers 2

    .prologue
    .line 398
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvListener:Lcom/infraware/office/evengine/EvListener$EditorListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvListener:Lcom/infraware/office/evengine/EvListener$EditorListener;

    invoke-interface {v0}, Lcom/infraware/office/evengine/EvListener$EditorListener;->OnUndoOrRedo()V

    :cond_9
    return-void
.end method

.method private OnWordCellDeleteMode()V
    .registers 2

    .prologue
    .line 468
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvWordListener:Lcom/infraware/office/evengine/EvListener$WordEditorListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvWordListener:Lcom/infraware/office/evengine/EvListener$WordEditorListener;

    invoke-interface {v0}, Lcom/infraware/office/evengine/EvListener$WordEditorListener;->OnWordCellDeleteMode()V

    :cond_9
    return-void
.end method

.method private OnWordCellInsertMode()V
    .registers 2

    .prologue
    .line 467
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvWordListener:Lcom/infraware/office/evengine/EvListener$WordEditorListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvWordListener:Lcom/infraware/office/evengine/EvListener$WordEditorListener;

    invoke-interface {v0}, Lcom/infraware/office/evengine/EvListener$WordEditorListener;->OnWordCellInsertMode()V

    :cond_9
    return-void
.end method

.method private OnWordCellSeparateMode(I)V
    .registers 3
    .parameter "nResult"

    .prologue
    .line 399
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvListener:Lcom/infraware/office/evengine/EvListener$EditorListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvListener:Lcom/infraware/office/evengine/EvListener$EditorListener;

    invoke-interface {v0, p1}, Lcom/infraware/office/evengine/EvListener$EditorListener;->OnWordCellSeparateMode(I)V

    :cond_9
    return-void
.end method

.method private OnWordMultiSelectCellMode()V
    .registers 2

    .prologue
    .line 470
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvWordListener:Lcom/infraware/office/evengine/EvListener$WordEditorListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvWordListener:Lcom/infraware/office/evengine/EvListener$WordEditorListener;

    invoke-interface {v0}, Lcom/infraware/office/evengine/EvListener$WordEditorListener;->OnWordMultiSelectCellMode()V

    :cond_9
    return-void
.end method

.method private OnWordOneSelectCellMode()V
    .registers 2

    .prologue
    .line 469
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvWordListener:Lcom/infraware/office/evengine/EvListener$WordEditorListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvWordListener:Lcom/infraware/office/evengine/EvListener$WordEditorListener;

    invoke-interface {v0}, Lcom/infraware/office/evengine/EvListener$WordEditorListener;->OnWordOneSelectCellMode()V

    :cond_9
    return-void
.end method

.method private getClipBoardData()Ljava/lang/String;
    .registers 2

    .prologue
    .line 403
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvListener:Lcom/infraware/office/evengine/EvListener$EditorListener;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvListener:Lcom/infraware/office/evengine/EvListener$EditorListener;

    invoke-interface {v0}, Lcom/infraware/office/evengine/EvListener$EditorListener;->getClipBoardData()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private hasClipBoardData()I
    .registers 2

    .prologue
    .line 402
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvListener:Lcom/infraware/office/evengine/EvListener$EditorListener;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvListener:Lcom/infraware/office/evengine/EvListener$EditorListener;

    invoke-interface {v0}, Lcom/infraware/office/evengine/EvListener$EditorListener;->hasClipBoardData()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private setClipBoardData(Ljava/lang/String;)V
    .registers 3
    .parameter "data"

    .prologue
    .line 404
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvListener:Lcom/infraware/office/evengine/EvListener$EditorListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mEvListener:Lcom/infraware/office/evengine/EvListener$EditorListener;

    invoke-interface {v0, p1}, Lcom/infraware/office/evengine/EvListener$EditorListener;->setClipBoardData(Ljava/lang/String;)V

    :cond_9
    return-void
.end method


# virtual methods
.method GetFontFileList()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/infraware/office/evengine/EvNative;->mSystemFontFilePaths:[Ljava/lang/String;

    return-object v0
.end method

.method native IApplyBookClip(Lcom/infraware/office/evengine/EV$BOOK_CLIP;)V
.end method

.method native IApplyBookMark()V
.end method

.method native IBookMarkOnOff(I)V
.end method

.method native IBookmarkEditor(ILjava/lang/String;)V
.end method

.method native IBulletNumbering(III)V
.end method

.method native ICanCellDelete()Z
.end method

.method native ICanExtendSortRange()I
.end method

.method native ICancel()V
.end method

.method native ICaretMark(II)V
.end method

.method native ICaretMove(III)V
.end method

.method native ICaretShow(I)V
.end method

.method native ICellInsertDelete(II)V
.end method

.method native ICellMergeSeparate(III)V
.end method

.method native IChangeDisplay(I)V
.end method

.method native IChangeScreen(IIIII)V
.end method

.method native IChangeViewMode(IIII)V
.end method

.method native ICharInsert(III)V
.end method

.method native IClose()V
.end method

.method native ICreateTable(III)V
.end method

.method native IDeleteBookClip(Lcom/infraware/office/evengine/EV$BOOK_CLIP;)V
.end method

.method native IDeletePenDataForSlideShow()V
.end method

.method native IDocumentModified()Z
.end method

.method native IEditDocument(IIILjava/lang/String;)V
.end method

.method native IEditPageRedrawBitmap()V
.end method

.method native IExitPreview()V
.end method

.method native IFinalize()V
.end method

.method native IFindWordNext(I)V
.end method

.method native IFindWordNextByPos(II)V
.end method

.method native IFindWordStart(II)V
.end method

.method native IFindWordStop()V
.end method

.method native IFlick(II)V
.end method

.method native IGetBWPCellStatusInfo()I
.end method

.method native IGetBWPGrapAttrInfo(Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;)V
.end method

.method native IGetBWPOpInfo(Lcom/infraware/office/evengine/EV$BWP_OP_INFO;)V
.end method

.method native IGetBWPSplitCellMaxNum(Lcom/infraware/office/evengine/EV$BWP_SPLITCELL_MAXNUM;)V
.end method

.method native IGetBookClipCount(Lcom/infraware/office/evengine/EV$BOOK_CLIP;)I
.end method

.method native IGetBookClipName(ILcom/infraware/office/evengine/EV$BOOK_CLIP;)V
.end method

.method native IGetBookmarkCount_Editor()I
.end method

.method native IGetBookmarkInfo()[Ljava/lang/String;
.end method

.method native IGetBookmarkInfo_Editor(I)Ljava/lang/String;
.end method

.method native IGetBookmarkLabel(ILcom/infraware/office/evengine/EV$BOOKMARK_LABEL;)V
.end method

.method native IGetBorderProperty(Lcom/infraware/office/evengine/EV$GUI_BORDER_EVENT;)V
.end method

.method native IGetBulletType(Lcom/infraware/office/evengine/EV$BULLET_TYPE;)V
.end method

.method native IGetCaretAfterString(I)Ljava/lang/String;
.end method

.method native IGetCaretBeforeString(I)Ljava/lang/String;
.end method

.method native IGetCaretInfo(Lcom/infraware/office/evengine/EV$CARET_INFO;)V
.end method

.method native IGetCaretPos(Lcom/infraware/office/evengine/EV$CARET_POS;)V
.end method

.method native IGetCaretPos_Editor()I
.end method

.method native IGetCellInfo(Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;)V
.end method

.method native IGetCellProperty(Lcom/infraware/office/evengine/EV$CELL_PROPERTY;)V
.end method

.method native IGetCellType()I
.end method

.method native IGetChartInfo(Lcom/infraware/office/evengine/EV$GUI_SHEET_CHART_EVENT;)V
.end method

.method native IGetColumn()I
.end method

.method native IGetConfig(Lcom/infraware/office/evengine/EV$CONFIG_INFO;)V
.end method

.method native IGetCurrentSheetIndex()I
.end method

.method native IGetEditStauts()J
.end method

.method native IGetEditorMode()I
.end method

.method native IGetFontAttInfo(Lcom/infraware/office/evengine/EV$FONT_INFO;)V
.end method

.method native IGetFontPreview(Landroid/graphics/Bitmap;Lcom/infraware/office/evengine/EV$FONT_DATA;Ljava/lang/String;)Z
.end method

.method native IGetFormatInfo(Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;)V
.end method

.method native IGetHyperLinkInfo(Lcom/infraware/office/evengine/EV$HYPERLINK_INFO;)Z
.end method

.method native IGetHyperLinkInfoEx(IILcom/infraware/office/evengine/EV$HYPERLINK_INFO;)Z
.end method

.method native IGetImageMaxSize(I)I
.end method

.method native IGetInvalidRect(Lcom/infraware/office/evengine/EV$INVALID_DRAW_INFO;)V
.end method

.method native IGetMarkString()Ljava/lang/String;
.end method

.method native IGetParaAttInfo(Lcom/infraware/office/evengine/EV$SET_PARAATT_INFO;)Z
.end method

.method native IGetProperties(Lcom/infraware/office/evengine/EV$PROPERTIES;)V
.end method

.method native IGetProtectStatus()I
.end method

.method native IGetScreenPos(Lcom/infraware/office/evengine/EV$SCREEN_INFO;)V
.end method

.method native IGetScrollInfo_Editor(Lcom/infraware/office/evengine/EV$SCROLLINFO_EDITOR;)V
.end method

.method native IGetSeparateMarkString_Editor()Ljava/lang/String;
.end method

.method native IGetSheetCount()I
.end method

.method native IGetSheetInfo(Lcom/infraware/office/evengine/EV$SHEET_INFO;I)V
.end method

.method native IGetSheetNameList()[Ljava/lang/String;
.end method

.method native IGetSlideNoteString(I)Ljava/lang/String;
.end method

.method native IGetSortRange(Lcom/infraware/office/evengine/EV$RANGE;I)I
.end method

.method native IGetSystemFontCount()I
.end method

.method native IGetSystemFontNames()[Ljava/lang/String;
.end method

.method native IGetTextToSpeachString(III)V
.end method

.method native IGetTouchString(II)Ljava/lang/String;
.end method

.method native IGetUseFontCount()I
.end method

.method native IGetUseFontNames()[Ljava/lang/String;
.end method

.method native IHIDAction(IIII)V
.end method

.method native IHTCClearAll()V
.end method

.method native IHTCSetPenColor(I)V
.end method

.method native IHTCSetPenMode(I)V
.end method

.method native IHTCSetPenPosition([I[II)V
.end method

.method native IHTCSetPenSize(I)V
.end method

.method native IHyperLink(III)V
.end method

.method native IHyperLinkEnd()V
.end method

.method native IHyperlinkEditor(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method native IImageInsert(Ljava/lang/String;Landroid/graphics/Bitmap;III)V
.end method

.method native IIndentation(I)V
.end method

.method native IInitialize(IIIIIIII)V
.end method

.method native IInputChar(I)V
.end method

.method native IInsertShape(I)V
.end method

.method native IInsertString(Ljava/lang/String;III)V
.end method

.method native IInsertTextBox()V
.end method

.method native IIsComplexColumn()Z
.end method

.method native IIsPenDataForSlideShow()I
.end method

.method native IIsStartOfSentence_Editor()I
.end method

.method native IMovePage(II)V
.end method

.method native INewDocument(Ljava/lang/String;IIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method native IOpen(Ljava/lang/String;IIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method native IOpenEx(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method native IParagraphAlign(I)V
.end method

.method native IPivotScreen(III)V
.end method

.method native IPopupOffset(IIIII)V
.end method

.method native IReDraw()V
.end method

.method native IRedoUndo(I)V
.end method

.method native IReleaseFontPreview()V
.end method

.method native IRemoveAllBookMark()V
.end method

.method native IRemoveBookMark(Ljava/lang/String;)V
.end method

.method native IRotate(II)V
.end method

.method native ISaveBookMark()V
.end method

.method native ISaveDocument(Ljava/lang/String;)V
.end method

.method native ISaveThumbnailAt(IIILjava/lang/String;I)V
.end method

.method native IScroll(IIIII)V
.end method

.method native ISearchStart(Ljava/lang/String;IIII)V
.end method

.method native ISearchStop()V
.end method

.method native ISelectAll()V
.end method

.method native ISellectAll()V
.end method

.method native ISetBookClip(Lcom/infraware/office/evengine/EV$BOOK_CLIP;)I
.end method

.method native ISetBookmarkLabel(Lcom/infraware/office/evengine/EV$BOOKMARK_LABEL;I)V
.end method

.method native ISetBorder(IIIIIIIII)V
.end method

.method native ISetColors(III)V
.end method

.method native ISetColumn(II)V
.end method

.method native ISetCompBackColor(IIIIJJIII)V
.end method

.method native ISetFontAttribute(Ljava/lang/String;IIIIIII)V
.end method

.method native ISetHeapSize(I)V
.end method

.method native ISetLineShape(IIII)V
.end method

.method native ISetLineSpace(I)V
.end method

.method native ISetLocale(I)V
.end method

.method native ISetModeStatus(I)V
.end method

.method native ISetObjDelete()V
.end method

.method native ISetObjPos(I)V
.end method

.method native ISetObjResize(II)V
.end method

.method native ISetObjTextEdit()V
.end method

.method native ISetObjectAttribute(IIIIIIIIII)V
.end method

.method native ISetPageMap(IIIIII)V
.end method

.method native ISetParaAttribute(IIIIIIIIIIII)V
.end method

.method native ISetPreview(IIILjava/lang/String;I)V
.end method

.method native ISetPreviewTimerCB()V
.end method

.method native ISetPrint(IIILjava/lang/String;I)V
.end method

.method native ISetPrintEx(IIILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
.end method

.method native ISetPrintMode()V
.end method

.method native ISetProperties(Lcom/infraware/office/evengine/EV$PROPERTIES;)V
.end method

.method native ISetReplace(Ljava/lang/String;IIILjava/lang/String;I)V
.end method

.method native ISetScreenMode(I)V
.end method

.method native ISetSortRange(Lcom/infraware/office/evengine/EV$RANGE;)V
.end method

.method native ISetTemplateShape(II)V
.end method

.method native ISetThumbnailBackground(Z)V
.end method

.method native ISetThumbnailByPrint(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V
.end method

.method native ISetViewMode(I)V
.end method

.method native ISetWebMode()V
.end method

.method native ISetWritePassword(Ljava/lang/String;)V
.end method

.method native ISetZoom(IIIIIIIIIII)V
.end method

.method native ISheetBorder(Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;)V
.end method

.method native ISheetClear(I)V
.end method

.method native ISheetEdit(ILjava/lang/String;IIII)V
.end method

.method native ISheetFindReplace(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method native ISheetFixFrame()V
.end method

.method native ISheetFocus()V
.end method

.method native ISheetFormat(IIIIIIII)V
.end method

.method native ISheetFunction(I)V
.end method

.method native ISheetInputField(I)V
.end method

.method native ISheetInsertCell(II)V
.end method

.method native ISheetInsertChart(ILcom/infraware/office/evengine/EV$RANGE;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
.end method

.method native ISheetInsertColumns(III)V
.end method

.method native ISheetInsertRows(III)V
.end method

.method native ISheetMerge()V
.end method

.method native ISheetPageBreak()V
.end method

.method native ISheetProtection()V
.end method

.method native ISheetRecalculate()V
.end method

.method native ISheetSetAlignment(II)V
.end method

.method native ISheetSetColor(I)V
.end method

.method native ISheetSetRowColSize(III)V
.end method

.method native ISheetShowHideRowCol(III)V
.end method

.method native ISheetSort(IIII)V
.end method

.method native IShowHideImage(I)V
.end method

.method native ISlideAddMove(III)V
.end method

.method native ISlideNote(III)V
.end method

.method native ISlideNoteInput(ILjava/lang/String;I)V
.end method

.method native ISlideObjInsert(III)V
.end method

.method native ISlideObjMasterLayout(II)V
.end method

.method native ISlideObjStart(III)V
.end method

.method native ISlideObjStartEx(III)V
.end method

.method native ISlideShow(III)V
.end method

.method native IThreadSuspend(I)V
.end method

.method native IThumbnail(IIIII)V
.end method

.method native ITimer()V
.end method

.method native IZoomInOut(II)V
.end method

.method SetListener(Lcom/infraware/office/evengine/EvListener$ViewerListener;Lcom/infraware/office/evengine/EvListener$EditorListener;Lcom/infraware/office/evengine/EvListener$WordEditorListener;Lcom/infraware/office/evengine/EvListener$PptEditorListener;Lcom/infraware/office/evengine/EvListener$SheetEditorListener;Lcom/infraware/office/evengine/EvListener$PreviewListener;)V
    .registers 7
    .parameter "DvL"
    .parameter "EvL"
    .parameter "EvWL"
    .parameter "EvPL"
    .parameter "EvSL"
    .parameter "previewListener"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/infraware/office/evengine/EvNative;->mDvListener:Lcom/infraware/office/evengine/EvListener$ViewerListener;

    .line 82
    iput-object p2, p0, Lcom/infraware/office/evengine/EvNative;->mEvListener:Lcom/infraware/office/evengine/EvListener$EditorListener;

    .line 83
    iput-object p3, p0, Lcom/infraware/office/evengine/EvNative;->mEvWordListener:Lcom/infraware/office/evengine/EvListener$WordEditorListener;

    .line 84
    iput-object p4, p0, Lcom/infraware/office/evengine/EvNative;->mEvPptListener:Lcom/infraware/office/evengine/EvListener$PptEditorListener;

    .line 85
    iput-object p5, p0, Lcom/infraware/office/evengine/EvNative;->mEvSheetListener:Lcom/infraware/office/evengine/EvListener$SheetEditorListener;

    .line 86
    iput-object p6, p0, Lcom/infraware/office/evengine/EvNative;->mPreviewListener:Lcom/infraware/office/evengine/EvListener$PreviewListener;

    .line 87
    return-void
.end method
