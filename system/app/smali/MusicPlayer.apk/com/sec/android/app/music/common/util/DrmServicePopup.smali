.class public Lcom/sec/android/app/music/common/util/DrmServicePopup;
.super Landroid/app/AlertDialog;
.source "DrmServicePopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field drmManager:Lcom/sec/android/app/music/common/manager/MusicDrmManager;

.field private fileName:Ljava/lang/String;

.field private filePath:Ljava/lang/String;

.field leftButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mBuyListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mCancelListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mConnectListener:Landroid/content/DialogInterface$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private final mDeleteListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mDrmPopupData:Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;

.field private final mOkListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mPlayListener:Landroid/content/DialogInterface$OnClickListener;

.field private popupFrom:I

.field private popupString:Ljava/lang/String;

.field private popupStrings:[I

.field private popupType:I

.field private remainedCounts:I

.field rightButtonListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const-class v0, Lcom/sec/android/app/music/common/util/DrmServicePopup;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;)V
    .registers 7
    .parameter "context"
    .parameter "data"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 78
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 49
    iput-object v2, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    .line 51
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->popupStrings:[I

    .line 53
    iput-object v2, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->popupString:Ljava/lang/String;

    .line 55
    iput v3, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->popupType:I

    .line 59
    iput-object v2, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->filePath:Ljava/lang/String;

    .line 61
    iput-object v2, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->fileName:Ljava/lang/String;

    .line 63
    iput v3, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->remainedCounts:I

    .line 65
    iput v3, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->popupFrom:I

    .line 71
    iput-object v2, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->leftButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 73
    iput-object v2, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->rightButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 75
    iput-object v2, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->drmManager:Lcom/sec/android/app/music/common/manager/MusicDrmManager;

    .line 243
    new-instance v1, Lcom/sec/android/app/music/common/util/DrmServicePopup$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/music/common/util/DrmServicePopup$1;-><init>(Lcom/sec/android/app/music/common/util/DrmServicePopup;)V

    iput-object v1, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->mBuyListener:Landroid/content/DialogInterface$OnClickListener;

    .line 256
    new-instance v1, Lcom/sec/android/app/music/common/util/DrmServicePopup$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/music/common/util/DrmServicePopup$2;-><init>(Lcom/sec/android/app/music/common/util/DrmServicePopup;)V

    iput-object v1, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->mDeleteListener:Landroid/content/DialogInterface$OnClickListener;

    .line 268
    new-instance v1, Lcom/sec/android/app/music/common/util/DrmServicePopup$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/music/common/util/DrmServicePopup$3;-><init>(Lcom/sec/android/app/music/common/util/DrmServicePopup;)V

    iput-object v1, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->mPlayListener:Landroid/content/DialogInterface$OnClickListener;

    .line 316
    new-instance v1, Lcom/sec/android/app/music/common/util/DrmServicePopup$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/music/common/util/DrmServicePopup$4;-><init>(Lcom/sec/android/app/music/common/util/DrmServicePopup;)V

    iput-object v1, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    .line 346
    new-instance v1, Lcom/sec/android/app/music/common/util/DrmServicePopup$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/music/common/util/DrmServicePopup$5;-><init>(Lcom/sec/android/app/music/common/util/DrmServicePopup;)V

    iput-object v1, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->mOkListener:Landroid/content/DialogInterface$OnClickListener;

    .line 360
    new-instance v1, Lcom/sec/android/app/music/common/util/DrmServicePopup$6;

    invoke-direct {v1, p0}, Lcom/sec/android/app/music/common/util/DrmServicePopup$6;-><init>(Lcom/sec/android/app/music/common/util/DrmServicePopup;)V

    iput-object v1, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->mConnectListener:Landroid/content/DialogInterface$OnClickListener;

    .line 80
    iput-object p1, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    .line 81
    iput-object p2, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->mDrmPopupData:Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;

    .line 83
    iget-object v1, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->mDrmPopupData:Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;

    iget-object v1, v1, Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;->popupStrings:[I

    iput-object v1, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->popupStrings:[I

    .line 84
    iget-object v1, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->mDrmPopupData:Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;

    iget v1, v1, Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;->popupType:I

    iput v1, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->popupType:I

    .line 89
    iget-object v1, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->mDrmPopupData:Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;

    iget-object v1, v1, Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;->popupFilePath:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->filePath:Ljava/lang/String;

    .line 90
    iget-object v1, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->mDrmPopupData:Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;

    iget v1, v1, Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;->remainCount:I

    iput v1, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->remainedCounts:I

    .line 92
    iget-object v1, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->mDrmPopupData:Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;

    iget v1, v1, Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;->popupFrom:I

    iput v1, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->popupFrom:I

    .line 95
    new-instance v1, Lcom/sec/android/app/music/common/manager/MusicDrmManager;

    invoke-direct {v1, p1}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->drmManager:Lcom/sec/android/app/music/common/manager/MusicDrmManager;

    .line 97
    iput-object v2, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->popupString:Ljava/lang/String;

    .line 99
    iget-object v1, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->filePath:Ljava/lang/String;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 101
    .local v0, lastIndex:I
    iget-object v1, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->filePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_93

    .line 102
    iget-object v1, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->filePath:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->fileName:Ljava/lang/String;

    .line 106
    :goto_8f
    invoke-direct {p0}, Lcom/sec/android/app/music/common/util/DrmServicePopup;->createDialog()V

    .line 108
    return-void

    .line 104
    :cond_93
    iget-object v1, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    const v2, 0x7f0900a9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->fileName:Ljava/lang/String;

    goto :goto_8f
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 22
    sget-object v0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/music/common/util/DrmServicePopup;)Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->mDrmPopupData:Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/music/common/util/DrmServicePopup;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/music/common/util/DrmServicePopup;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->popupFrom:I

    return v0
.end method

.method private createDialog()V
    .registers 8

    .prologue
    const/4 v6, -0x1

    const/4 v5, -0x2

    const v3, 0x7f0900ed

    const/4 v2, -0x3

    const/4 v4, 0x0

    .line 120
    sget-object v0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->TAG:Ljava/lang/String;

    const-string v1, "createDialog() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->fileName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/common/util/DrmServicePopup;->setTitle(Ljava/lang/CharSequence;)V

    .line 122
    const v0, 0x1080027

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/common/util/DrmServicePopup;->setIcon(I)V

    .line 124
    iget v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->popupType:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_36

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->filePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->isWMdrmFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 127
    const/16 v0, 0xc

    iput v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->popupType:I

    .line 131
    :cond_2b
    iget-object v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    const v1, 0x7f0900bb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->popupString:Ljava/lang/String;

    .line 134
    :cond_36
    iget v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->popupType:I

    sparse-switch v0, :sswitch_data_242

    .line 231
    :goto_3b
    return-void

    .line 136
    :sswitch_3c
    iget-object v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->popupStrings:[I

    aget v1, v1, v4

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->fileName:Ljava/lang/String;

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget v4, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->remainedCounts:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->popupString:Ljava/lang/String;

    .line 137
    iget-object v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->popupString:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    const v2, 0x7f0900ac

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->popupString:Ljava/lang/String;

    .line 138
    iget-object v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->popupString:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->popupStrings:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->popupString:Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    const v1, 0x7f0900ef

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->mPlayListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v6, v0, v1}, Lcom/sec/android/app/music/common/util/DrmServicePopup;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 141
    iget-object v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    const v1, 0x7f0900f0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v5, v0, v1}, Lcom/sec/android/app/music/common/util/DrmServicePopup;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 228
    :goto_98
    iget-object v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->popupString:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/common/util/DrmServicePopup;->setMessage(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->drmManager:Lcom/sec/android/app/music/common/manager/MusicDrmManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->setDrmPopupShown(Z)V

    goto :goto_3b

    .line 146
    :sswitch_a4
    iget-object v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->popupStrings:[I

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->popupString:Ljava/lang/String;

    .line 147
    iget-object v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->popupString:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    const v2, 0x7f0900ac

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->popupString:Ljava/lang/String;

    .line 148
    iget-object v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->popupString:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->popupStrings:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->popupString:Ljava/lang/String;

    .line 149
    iget-object v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    const v1, 0x7f0900ef

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->mPlayListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v6, v0, v1}, Lcom/sec/android/app/music/common/util/DrmServicePopup;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 151
    iget-object v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    const v1, 0x7f0900f0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v5, v0, v1}, Lcom/sec/android/app/music/common/util/DrmServicePopup;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_98

    .line 156
    :sswitch_f1
    iget-object v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->popupStrings:[I

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->popupString:Ljava/lang/String;

    .line 157
    iget-object v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v2, v0, v1}, Lcom/sec/android/app/music/common/util/DrmServicePopup;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_98

    .line 162
    :sswitch_109
    iget-object v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->popupStrings:[I

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->popupString:Ljava/lang/String;

    .line 163
    iget-object v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v2, v0, v1}, Lcom/sec/android/app/music/common/util/DrmServicePopup;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_98

    .line 168
    :sswitch_122
    iget-object v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->popupStrings:[I

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->popupString:Ljava/lang/String;

    .line 169
    iget-object v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->popupString:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    const v2, 0x7f0900ac

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->popupString:Ljava/lang/String;

    .line 170
    iget-object v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->popupString:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->popupStrings:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->popupString:Ljava/lang/String;

    .line 171
    iget-object v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    const v1, 0x7f0900ef

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->mDeleteListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v6, v0, v1}, Lcom/sec/android/app/music/common/util/DrmServicePopup;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 173
    iget-object v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    const v1, 0x7f0900f0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v5, v0, v1}, Lcom/sec/android/app/music/common/util/DrmServicePopup;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_98

    .line 178
    :sswitch_170
    iget-object v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->popupStrings:[I

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->popupString:Ljava/lang/String;

    .line 179
    iget-object v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v2, v0, v1}, Lcom/sec/android/app/music/common/util/DrmServicePopup;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_98

    .line 184
    :sswitch_189
    iget-object v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->popupStrings:[I

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->popupString:Ljava/lang/String;

    .line 185
    iget-object v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    const v1, 0x7f0900ef

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->mBuyListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v6, v0, v1}, Lcom/sec/android/app/music/common/util/DrmServicePopup;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 187
    iget-object v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    const v1, 0x7f0900f0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v5, v0, v1}, Lcom/sec/android/app/music/common/util/DrmServicePopup;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_98

    .line 192
    :sswitch_1b3
    iget-object v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->popupStrings:[I

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->popupString:Ljava/lang/String;

    .line 193
    iget-object v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v2, v0, v1}, Lcom/sec/android/app/music/common/util/DrmServicePopup;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_98

    .line 198
    :sswitch_1cc
    iget-object v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->popupStrings:[I

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->popupString:Ljava/lang/String;

    .line 199
    iget-object v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v2, v0, v1}, Lcom/sec/android/app/music/common/util/DrmServicePopup;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_98

    .line 206
    :sswitch_1e5
    iget-object v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->popupStrings:[I

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->popupString:Ljava/lang/String;

    .line 207
    iget-object v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v2, v0, v1}, Lcom/sec/android/app/music/common/util/DrmServicePopup;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_98

    .line 212
    :sswitch_1fe
    iget-object v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->popupStrings:[I

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->popupString:Ljava/lang/String;

    .line 213
    iget-object v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v2, v0, v1}, Lcom/sec/android/app/music/common/util/DrmServicePopup;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_98

    .line 218
    :sswitch_217
    iget-object v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->popupStrings:[I

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->popupString:Ljava/lang/String;

    .line 219
    iget-object v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    const v1, 0x7f0900ef

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->mConnectListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v6, v0, v1}, Lcom/sec/android/app/music/common/util/DrmServicePopup;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 221
    iget-object v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    const v1, 0x7f0900f0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v5, v0, v1}, Lcom/sec/android/app/music/common/util/DrmServicePopup;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_98

    .line 134
    nop

    :sswitch_data_242
    .sparse-switch
        0x1 -> :sswitch_3c
        0x2 -> :sswitch_a4
        0xb -> :sswitch_1b3
        0xc -> :sswitch_f1
        0xd -> :sswitch_109
        0xe -> :sswitch_122
        0xf -> :sswitch_170
        0x10 -> :sswitch_189
        0x14 -> :sswitch_1cc
        0x1e -> :sswitch_1e5
        0x1f -> :sswitch_1fe
        0x20 -> :sswitch_217
    .end sparse-switch
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .prologue
    .line 372
    invoke-super {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 374
    iget-object v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/sec/android/app/music/common/util/DrmPopupActivity;

    if-eqz v0, :cond_14

    .line 375
    iget-object v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/music/common/util/DrmPopupActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/music/common/util/DrmPopupActivity;->finish()V

    .line 376
    :cond_14
    return-void
.end method

.method public launchBrowser(Ljava/lang/String;)Z
    .registers 8
    .parameter "mLicense_url"

    .prologue
    const/4 v3, 0x0

    .line 380
    if-nez p1, :cond_4

    .line 401
    :goto_3
    return v3

    .line 384
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 385
    .local v0, browserIntent:Landroid/content/Intent;
    const/high16 v4, 0x1000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 386
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 387
    .local v2, mUri:Landroid/net/Uri;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 389
    iget-object v4, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/high16 v5, 0x1

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_2a

    .line 394
    :try_start_25
    iget-object v4, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_25 .. :try_end_2a} :catch_2c

    .line 401
    :cond_2a
    const/4 v3, 0x1

    goto :goto_3

    .line 395
    :catch_2c
    move-exception v1

    .line 396
    .local v1, ex:Landroid/content/ActivityNotFoundException;
    sget-object v4, Lcom/sec/android/app/music/common/util/DrmServicePopup;->TAG:Ljava/lang/String;

    const-string v5, "could not find a suitable activity for launching license url"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 112
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 113
    sget-object v0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->TAG:Ljava/lang/String;

    const-string v1, "onCreate() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-void
.end method

.method protected onStop()V
    .registers 4

    .prologue
    .line 235
    sget-object v1, Lcom/sec/android/app/music/common/util/DrmServicePopup;->TAG:Ljava/lang/String;

    const-string v2, "onStop() is called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.metachanged"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 238
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 240
    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    .line 241
    return-void
.end method
