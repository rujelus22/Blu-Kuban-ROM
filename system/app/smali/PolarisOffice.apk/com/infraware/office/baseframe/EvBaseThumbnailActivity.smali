.class public Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;
.super Landroid/app/Activity;
.source "EvBaseThumbnailActivity.java"

# interfaces
.implements Lcom/infraware/office/evengine/EvListener$ViewerListener;
.implements Lcom/infraware/office/evengine/E$EV_DOCEXTENSION_TYPE;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/office/baseframe/EvBaseThumbnailActivity$RequestHandler;
    }
.end annotation


# instance fields
.field private final LOG_CAT:Ljava/lang/String;

.field private final REQUEST_MSG_NONE:I

.field private final REQUEST_MSG_RECV:I

.field private final REQUEST_MSG_SEND:I

.field private final THUMBNAIL_HEIGHT:I

.field private final THUMBNAIL_WIDTH:I

.field private mEvInterface:Lcom/infraware/office/evengine/EvInterface;

.field private mFinish:Z

.field private mHandler:Lcom/infraware/office/baseframe/EvBaseThumbnailActivity$RequestHandler;

.field private mReqeustThread:Ljava/lang/Thread;

.field private mRequest:Z

.field private mRequestList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mThumbnailAdapter:Lcom/infraware/polarisoffice/common/ThumbnailAdapter;

.field private mTotalPageNum:I

.field private m_vThumbGrid:Landroid/widget/GridView;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/16 v3, 0x64

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 24
    const-string v0, "EvBaseThumbnailActivity"

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->LOG_CAT:Ljava/lang/String;

    .line 26
    iput v1, p0, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->REQUEST_MSG_NONE:I

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->REQUEST_MSG_SEND:I

    .line 28
    const/4 v0, 0x2

    iput v0, p0, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->REQUEST_MSG_RECV:I

    .line 30
    iput v3, p0, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->THUMBNAIL_WIDTH:I

    .line 31
    iput v3, p0, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->THUMBNAIL_HEIGHT:I

    .line 33
    iput-object v2, p0, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    .line 34
    iput-object v2, p0, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->mThumbnailAdapter:Lcom/infraware/polarisoffice/common/ThumbnailAdapter;

    .line 35
    iput-object v2, p0, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->m_vThumbGrid:Landroid/widget/GridView;

    .line 37
    iput v1, p0, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->mTotalPageNum:I

    .line 39
    iput-boolean v1, p0, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->mRequest:Z

    .line 40
    iput-boolean v1, p0, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->mFinish:Z

    .line 42
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity$1;

    invoke-direct {v1, p0}, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity$1;-><init>(Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->mReqeustThread:Ljava/lang/Thread;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->mRequestList:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity$RequestHandler;

    invoke-direct {v0, p0}, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity$RequestHandler;-><init>(Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;)V

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->mHandler:Lcom/infraware/office/baseframe/EvBaseThumbnailActivity$RequestHandler;

    .line 23
    return-void
.end method

.method static synthetic access$0(Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;)Z
    .registers 2
    .parameter

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->mFinish:Z

    return v0
.end method

.method static synthetic access$1(Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;)Z
    .registers 2
    .parameter

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->mRequest:Z

    return v0
.end method

.method static synthetic access$2(Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;)Ljava/util/ArrayList;
    .registers 2
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->mRequestList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3(Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->mRequest:Z

    return-void
.end method

.method static synthetic access$4(Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;)Lcom/infraware/office/baseframe/EvBaseThumbnailActivity$RequestHandler;
    .registers 2
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->mHandler:Lcom/infraware/office/baseframe/EvBaseThumbnailActivity$RequestHandler;

    return-object v0
.end method

.method static synthetic access$5(Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;)Lcom/infraware/office/evengine/EvInterface;
    .registers 2
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    return-object v0
.end method

.method static synthetic access$6(Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;)Lcom/infraware/polarisoffice/common/ThumbnailAdapter;
    .registers 2
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->mThumbnailAdapter:Lcom/infraware/polarisoffice/common/ThumbnailAdapter;

    return-object v0
.end method


# virtual methods
.method public GetBitmap(II)Landroid/graphics/Bitmap;
    .registers 4
    .parameter "w"
    .parameter "h"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 215
    const/4 v0, 0x0

    return-object v0
.end method

.method public GetThumbnailBitmap(III)Landroid/graphics/Bitmap;
    .registers 8
    .parameter "nPageNum"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 164
    if-eqz p2, :cond_4

    if-nez p3, :cond_6

    .line 165
    :cond_4
    const/4 v0, 0x0

    .line 170
    :goto_5
    return-object v0

    .line 167
    :cond_6
    const-string v1, "EvBaseThumbnailActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GetThumbnailBitmap Page = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 169
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->mThumbnailAdapter:Lcom/infraware/polarisoffice/common/ThumbnailAdapter;

    invoke-virtual {v1, p1, v0}, Lcom/infraware/polarisoffice/common/ThumbnailAdapter;->setBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_5
.end method

.method public OnCloseDoc()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 219
    return-void
.end method

.method public OnDrawBitmap(II)V
    .registers 3
    .parameter "nCallId"
    .parameter "bShowAutomap"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 217
    return-void
.end method

.method public OnDrawThumbnailBitmap(I)V
    .registers 5
    .parameter "nPageNum"

    .prologue
    .line 175
    const-string v0, "EvBaseThumbnailActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OnDrawThumbnailBitmap nRet PageNum = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    new-instance v0, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity$3;-><init>(Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;I)V

    invoke-virtual {p0, v0}, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 212
    return-void
.end method

.method public OnFinalizeComplete()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 221
    return-void
.end method

.method public OnGetResID(I)Ljava/lang/String;
    .registers 3
    .parameter "nStrID"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 244
    const/4 v0, 0x0

    return-object v0
.end method

.method public OnImagePlaceHolderDefaultImage()Landroid/graphics/Bitmap;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 248
    const/4 v0, 0x0

    return-object v0
.end method

.method public OnLoadComplete(Ljava/lang/String;)V
    .registers 2
    .parameter "strWritePassword"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 223
    return-void
.end method

.method public OnLoadFail(I)V
    .registers 2
    .parameter "EEV_ERROR_CODE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 225
    return-void
.end method

.method public OnPageMove(III)V
    .registers 4
    .parameter "nCurrentPage"
    .parameter "nTotalPage"
    .parameter "nErrorCode"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 227
    return-void
.end method

.method public OnPrintMode(Ljava/lang/String;)V
    .registers 2
    .parameter "strPrintFile"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 237
    return-void
.end method

.method public OnPrintedCount(I)V
    .registers 2
    .parameter "nTotalCount"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 241
    return-void
.end method

.method public OnProgress(II)V
    .registers 3
    .parameter "EV_PROGRESS_TYPE"
    .parameter "nProgressValue"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 229
    return-void
.end method

.method public OnProgressStart(I)V
    .registers 2
    .parameter "EV_PROGRESS_TYPE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 231
    return-void
.end method

.method public OnSearchMode(IIII)V
    .registers 5
    .parameter "EEV_SEARCH_TYPE"
    .parameter "nCurrentPage"
    .parameter "nTotalPage"
    .parameter "nReplaceAllCount"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 233
    return-void
.end method

.method public OnTerminate()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 235
    return-void
.end method

.method public OnTextToSpeachString(Ljava/lang/String;)V
    .registers 2
    .parameter "strTTS"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 239
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 13
    .parameter "savedInstanceState"

    .prologue
    const/16 v3, 0x64

    const/4 v2, 0x0

    .line 102
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    const v0, 0x7f03001d

    invoke-virtual {p0, v0}, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->setContentView(I)V

    .line 105
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 107
    .local v10, intent:Landroid/content/Intent;
    const v0, 0x7f0c0083

    invoke-virtual {p0, v0}, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->m_vThumbGrid:Landroid/widget/GridView;

    .line 109
    const-string v0, "THUMBNAIL_TYPE"

    const/16 v1, 0xff

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 110
    .local v8, documentType:I
    sparse-switch v8, :sswitch_data_8c

    .line 121
    :goto_26
    const-string v0, "THUMBNAIL_PAGE"

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 123
    .local v7, currentPage:I
    new-instance v0, Lcom/infraware/polarisoffice/common/ThumbnailAdapter;

    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->mHandler:Lcom/infraware/office/baseframe/EvBaseThumbnailActivity$RequestHandler;

    invoke-direct {v0, p0, v1, v3, v3}, Lcom/infraware/polarisoffice/common/ThumbnailAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;II)V

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->mThumbnailAdapter:Lcom/infraware/polarisoffice/common/ThumbnailAdapter;

    .line 124
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->mThumbnailAdapter:Lcom/infraware/polarisoffice/common/ThumbnailAdapter;

    invoke-virtual {v0, v7}, Lcom/infraware/polarisoffice/common/ThumbnailAdapter;->setCurrentPage(I)V

    .line 126
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->m_vThumbGrid:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->mThumbnailAdapter:Lcom/infraware/polarisoffice/common/ThumbnailAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 128
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->m_vThumbGrid:Landroid/widget/GridView;

    new-instance v1, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity$2;

    invoke-direct {v1, p0}, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity$2;-><init>(Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 139
    invoke-static {}, Lcom/infraware/office/evengine/EvInterface;->getInterface()Lcom/infraware/office/evengine/EvInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    .line 140
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    move-object v1, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/infraware/office/evengine/EvInterface;->ISetListener(Lcom/infraware/office/evengine/EvListener$ViewerListener;Lcom/infraware/office/evengine/EvListener$EditorListener;Lcom/infraware/office/evengine/EvListener$WordEditorListener;Lcom/infraware/office/evengine/EvListener$PptEditorListener;Lcom/infraware/office/evengine/EvListener$SheetEditorListener;Lcom/infraware/office/evengine/EvListener$PreviewListener;)V

    .line 143
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvInterface;->IGetConfig()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v0

    iget v0, v0, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nTotalPages:I

    iput v0, p0, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->mTotalPageNum:I

    .line 145
    const/4 v9, 0x0

    .local v9, i:I
    :goto_67
    iget v0, p0, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->mTotalPageNum:I

    if-lt v9, v0, :cond_84

    .line 148
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->m_vThumbGrid:Landroid/widget/GridView;

    add-int/lit8 v1, v7, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelection(I)V

    .line 149
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->mThumbnailAdapter:Lcom/infraware/polarisoffice/common/ThumbnailAdapter;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/ThumbnailAdapter;->notifyDataSetChanged()V

    .line 151
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->mReqeustThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 152
    return-void

    .line 114
    .end local v7           #currentPage:I
    .end local v9           #i:I
    :sswitch_7d
    const v0, 0x7f0801d9

    invoke-virtual {p0, v0}, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->setTitle(I)V

    goto :goto_26

    .line 146
    .restart local v7       #currentPage:I
    .restart local v9       #i:I
    :cond_84
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->mThumbnailAdapter:Lcom/infraware/polarisoffice/common/ThumbnailAdapter;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/ThumbnailAdapter;->addPage()I

    .line 145
    add-int/lit8 v9, v9, 0x1

    goto :goto_67

    .line 110
    :sswitch_data_8c
    .sparse-switch
        0x1 -> :sswitch_7d
        0x13 -> :sswitch_7d
    .end sparse-switch
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 156
    const-string v0, "EvBaseThumbnailActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->mFinish:Z

    .line 158
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 160
    return-void
.end method
