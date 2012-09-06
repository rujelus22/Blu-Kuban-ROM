.class public Lcom/cooliris/media/CropImage;
.super Lcom/cooliris/media/MonitoredActivity;
.source "CropImage.java"


# static fields
.field protected static final LCD_HEIGHT:I

.field protected static final LCD_WIDTH:I

.field private static final mConnectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Landroid/media/MediaScannerConnection;",
            ">;"
        }
    .end annotation
.end field

.field private static mToast:Landroid/widget/Toast;

.field private static mToast_Unable_Crop:Landroid/widget/Toast;


# instance fields
.field private bLockScreen:Z

.field private bLockScreenDialogOff:Z

.field private mApp:Lcom/cooliris/app/App;

.field private mAspectX:I

.field private mAspectY:I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCircleCrop:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field mCrop:Lcom/cooliris/media/HighlightView;

.field private final mDecodingThreads:Lcom/cooliris/media/BitmapManager$ThreadSet;

.field private mDialog:Landroid/app/AlertDialog;

.field private mDoFaceDetection:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mImageLoadHandler:Landroid/os/Handler;

.field private mImageView:Lcom/cooliris/media/CropImageView;

.field private mIsClick:Z

.field private mIsMultiBtnSelected:Z

.field private mItem:Lcom/cooliris/media/MediaItem;

.field private final mLocaleReceiver:Landroid/content/BroadcastReceiver;

.field private mOutputFormat:Landroid/graphics/Bitmap$CompressFormat;

.field private mOutputX:I

.field private mOutputY:I

.field mRunFaceDetection:Ljava/lang/Runnable;

.field private mSaveUri:Landroid/net/Uri;

.field mSaving:Z

.field private mScale:Z

.field private mScaleUp:Z

.field mWaitingToPick:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 167
    invoke-static {}, Lcom/cooliris/media/Utils;->getScreenHeight()I

    move-result v0

    sput v0, Lcom/cooliris/media/CropImage;->LCD_HEIGHT:I

    .line 169
    invoke-static {}, Lcom/cooliris/media/Utils;->getScreenWidth()I

    move-result v0

    sput v0, Lcom/cooliris/media/CropImage;->LCD_WIDTH:I

    .line 180
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/cooliris/media/CropImage;->mConnectionMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 97
    invoke-direct {p0}, Lcom/cooliris/media/MonitoredActivity;-><init>()V

    .line 112
    iput-object v3, p0, Lcom/cooliris/media/CropImage;->mApp:Lcom/cooliris/app/App;

    .line 115
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcom/cooliris/media/CropImage;->mOutputFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 120
    iput-object v3, p0, Lcom/cooliris/media/CropImage;->mSaveUri:Landroid/net/Uri;

    .line 125
    iput-boolean v2, p0, Lcom/cooliris/media/CropImage;->mDoFaceDetection:Z

    .line 127
    iput-boolean v1, p0, Lcom/cooliris/media/CropImage;->mCircleCrop:Z

    .line 129
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/cooliris/media/CropImage;->mHandler:Landroid/os/Handler;

    .line 137
    iput-boolean v2, p0, Lcom/cooliris/media/CropImage;->mScaleUp:Z

    .line 151
    new-instance v0, Lcom/cooliris/media/BitmapManager$ThreadSet;

    invoke-direct {v0}, Lcom/cooliris/media/BitmapManager$ThreadSet;-><init>()V

    iput-object v0, p0, Lcom/cooliris/media/CropImage;->mDecodingThreads:Lcom/cooliris/media/BitmapManager$ThreadSet;

    .line 155
    iput-boolean v1, p0, Lcom/cooliris/media/CropImage;->mIsClick:Z

    .line 161
    iput-boolean v1, p0, Lcom/cooliris/media/CropImage;->bLockScreen:Z

    .line 163
    iput-boolean v1, p0, Lcom/cooliris/media/CropImage;->bLockScreenDialogOff:Z

    .line 165
    iput-boolean v2, p0, Lcom/cooliris/media/CropImage;->mIsMultiBtnSelected:Z

    .line 171
    iput-object v3, p0, Lcom/cooliris/media/CropImage;->mDialog:Landroid/app/AlertDialog;

    .line 173
    new-instance v0, Lcom/cooliris/media/CropImage$1;

    invoke-direct {v0, p0}, Lcom/cooliris/media/CropImage$1;-><init>(Lcom/cooliris/media/CropImage;)V

    iput-object v0, p0, Lcom/cooliris/media/CropImage;->mImageLoadHandler:Landroid/os/Handler;

    .line 353
    new-instance v0, Lcom/cooliris/media/CropImage$3;

    invoke-direct {v0, p0}, Lcom/cooliris/media/CropImage$3;-><init>(Lcom/cooliris/media/CropImage;)V

    iput-object v0, p0, Lcom/cooliris/media/CropImage;->mLocaleReceiver:Landroid/content/BroadcastReceiver;

    .line 1193
    new-instance v0, Lcom/cooliris/media/CropImage$24;

    invoke-direct {v0, p0}, Lcom/cooliris/media/CropImage$24;-><init>(Lcom/cooliris/media/CropImage;)V

    iput-object v0, p0, Lcom/cooliris/media/CropImage;->mRunFaceDetection:Ljava/lang/Runnable;

    return-void
.end method

.method private SetWallpaperPopupView()Landroid/view/View;
    .registers 7

    .prologue
    const/16 v5, 0x11

    const/4 v4, -0x2

    .line 857
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 858
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 859
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 861
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 862
    const v2, 0x7f060085

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 863
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 864
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 865
    const/high16 v2, 0x418c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 866
    new-instance v2, Landroid/widget/CheckBox;

    invoke-direct {v2, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 867
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 868
    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setGravity(I)V

    .line 869
    const v3, 0x7f060086

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setText(I)V

    .line 870
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 871
    new-instance v3, Lcom/cooliris/media/CropImage$21;

    invoke-direct {v3, p0}, Lcom/cooliris/media/CropImage$21;-><init>(Lcom/cooliris/media/CropImage;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 882
    new-instance v3, Lcom/cooliris/media/CropImage$22;

    invoke-direct {v3, p0}, Lcom/cooliris/media/CropImage$22;-><init>(Lcom/cooliris/media/CropImage;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 888
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 889
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 890
    return-object v0
.end method

.method static synthetic access$000(Lcom/cooliris/media/CropImage;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/cooliris/media/CropImage;->startFaceDetection()V

    return-void
.end method

.method static synthetic access$100()Ljava/util/HashMap;
    .registers 1

    .prologue
    .line 97
    sget-object v0, Lcom/cooliris/media/CropImage;->mConnectionMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/cooliris/media/CropImage;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/cooliris/media/CropImage;->mAspectY:I

    return v0
.end method

.method static synthetic access$1002(Lcom/cooliris/media/CropImage;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput p1, p0, Lcom/cooliris/media/CropImage;->mAspectY:I

    return p1
.end method

.method static synthetic access$1102(Lcom/cooliris/media/CropImage;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput p1, p0, Lcom/cooliris/media/CropImage;->mOutputX:I

    return p1
.end method

.method static synthetic access$1202(Lcom/cooliris/media/CropImage;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput p1, p0, Lcom/cooliris/media/CropImage;->mOutputY:I

    return p1
.end method

.method static synthetic access$1300(Lcom/cooliris/media/CropImage;)Lcom/cooliris/media/CropImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/cooliris/media/CropImage;->mImageView:Lcom/cooliris/media/CropImageView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/cooliris/media/CropImage;Landroid/widget/Button;Landroid/widget/Button;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lcom/cooliris/media/CropImage;->updateMultiBtnImgToSelected(Landroid/widget/Button;Landroid/widget/Button;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/cooliris/media/CropImage;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/cooliris/media/CropImage;->mIsClick:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/cooliris/media/CropImage;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/cooliris/media/CropImage;->mIsClick:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/cooliris/media/CropImage;Landroid/widget/Button;Landroid/widget/Button;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lcom/cooliris/media/CropImage;->updateSingleBtnImgToSelected(Landroid/widget/Button;Landroid/widget/Button;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/cooliris/media/CropImage;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/cooliris/media/CropImage;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/cooliris/media/CropImage;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/cooliris/media/CropImage;->checkLowStorageFinished()V

    return-void
.end method

.method static synthetic access$1900(Lcom/cooliris/media/CropImage;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/cooliris/media/CropImage;->bLockScreen:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/cooliris/media/CropImage;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/cooliris/media/CropImage;->bLockScreen:Z

    return p1
.end method

.method static synthetic access$200(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 97
    invoke-static {p0, p1, p2}, Lcom/cooliris/media/CropImage;->performReturn(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/cooliris/media/CropImage;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/cooliris/media/CropImage;->wallpaperSave()V

    return-void
.end method

.method static synthetic access$2100(Lcom/cooliris/media/CropImage;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/cooliris/media/CropImage;->bLockScreenDialogOff:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/cooliris/media/CropImage;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/cooliris/media/CropImage;->bLockScreenDialogOff:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/cooliris/media/CropImage;Landroid/graphics/Bitmap;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/cooliris/media/CropImage;->saveOutput(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/cooliris/media/CropImage;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/cooliris/media/CropImage;->mCircleCrop:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/cooliris/media/CropImage;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/cooliris/media/CropImage;->isHomeScreen()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/cooliris/media/CropImage;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/cooliris/media/CropImage;->isLockScreen()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/cooliris/media/CropImage;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/cooliris/media/CropImage;->mDoFaceDetection:Z

    return v0
.end method

.method static synthetic access$300(Lcom/cooliris/media/CropImage;)Lcom/cooliris/media/MediaItem;
    .registers 2
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/cooliris/media/CropImage;->mItem:Lcom/cooliris/media/MediaItem;

    return-object v0
.end method

.method static synthetic access$400(Lcom/cooliris/media/CropImage;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/cooliris/media/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$402(Lcom/cooliris/media/CropImage;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/cooliris/media/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$500()Landroid/widget/Toast;
    .registers 1

    .prologue
    .line 97
    sget-object v0, Lcom/cooliris/media/CropImage;->mToast_Unable_Crop:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$600(Lcom/cooliris/media/CropImage;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/cooliris/media/CropImage;->mImageLoadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/cooliris/media/CropImage;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/cooliris/media/CropImage;->onSaveClicked()V

    return-void
.end method

.method static synthetic access$800(Lcom/cooliris/media/CropImage;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/cooliris/media/CropImage;->mIsMultiBtnSelected:Z

    return v0
.end method

.method static synthetic access$802(Lcom/cooliris/media/CropImage;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/cooliris/media/CropImage;->mIsMultiBtnSelected:Z

    return p1
.end method

.method static synthetic access$900(Lcom/cooliris/media/CropImage;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/cooliris/media/CropImage;->mAspectX:I

    return v0
.end method

.method static synthetic access$902(Lcom/cooliris/media/CropImage;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput p1, p0, Lcom/cooliris/media/CropImage;->mAspectX:I

    return p1
.end method

.method private checkLowStorage()Z
    .registers 9

    .prologue
    .line 778
    invoke-static {}, Lcom/cooliris/media/ImageManager;->hasStorage()Z

    move-result v4

    if-eqz v4, :cond_32

    .line 779
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    .line 780
    .local v3, storageDirectory:Ljava/lang/String;
    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 781
    .local v2, stat:Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v6, v6

    mul-long v0, v4, v6

    .line 782
    .local v0, remaining:J
    const-wide/32 v4, 0x200000

    cmp-long v4, v0, v4

    if-gez v4, :cond_32

    .line 783
    iget-object v4, p0, Lcom/cooliris/media/CropImage;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/cooliris/media/CropImage$18;

    invoke-direct {v5, p0}, Lcom/cooliris/media/CropImage$18;-><init>(Lcom/cooliris/media/CropImage;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 788
    const/4 v4, 0x1

    .line 791
    .end local v0           #remaining:J
    .end local v2           #stat:Landroid/os/StatFs;
    .end local v3           #storageDirectory:Ljava/lang/String;
    :goto_31
    return v4

    :cond_32
    const/4 v4, 0x0

    goto :goto_31
.end method

.method private checkLowStorageFinished()V
    .registers 3

    .prologue
    .line 795
    const v0, 0x7f06004c

    const/16 v1, 0x1388

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 796
    return-void
.end method

.method private getMultiButtonResource(Z)I
    .registers 3
    .parameter

    .prologue
    .line 1424
    if-eqz p1, :cond_6

    .line 1425
    const v0, 0x7f020020

    .line 1427
    :goto_5
    return v0

    :cond_6
    const v0, 0x7f02001f

    goto :goto_5
.end method

.method private getSingleButtonResource(Z)I
    .registers 3
    .parameter

    .prologue
    .line 1417
    if-eqz p1, :cond_6

    .line 1418
    const v0, 0x7f020026

    .line 1420
    :goto_5
    return v0

    :cond_6
    const v0, 0x7f020025

    goto :goto_5
.end method

.method private initHomeScreenUI()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 571
    const v3, 0x7f08000b

    invoke-virtual {p0, v3}, Lcom/cooliris/media/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 572
    .local v0, multiButton:Landroid/widget/Button;
    const v3, 0x7f08000d

    invoke-virtual {p0, v3}, Lcom/cooliris/media/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 574
    .local v1, singleButton:Landroid/widget/Button;
    iget-boolean v3, p0, Lcom/cooliris/media/CropImage;->mIsMultiBtnSelected:Z

    if-eqz v3, :cond_5b

    .line 575
    invoke-direct {p0, v1, v0}, Lcom/cooliris/media/CropImage;->updateMultiBtnImgToSelected(Landroid/widget/Button;Landroid/widget/Button;)V

    .line 580
    :goto_1a
    const v3, 0x7f080009

    invoke-virtual {p0, v3}, Lcom/cooliris/media/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 582
    .local v2, sizeButtonsLayout:Landroid/widget/RelativeLayout;
    sget-boolean v3, Lcom/cooliris/media/Utils;->mUseWallpaperSizeLayout:Z

    if-eqz v3, :cond_5f

    .line 583
    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 591
    :goto_2a
    new-instance v3, Lcom/cooliris/media/CropImage$11;

    invoke-direct {v3, p0, v1, v0}, Lcom/cooliris/media/CropImage$11;-><init>(Lcom/cooliris/media/CropImage;Landroid/widget/Button;Landroid/widget/Button;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 618
    new-instance v3, Lcom/cooliris/media/CropImage$12;

    invoke-direct {v3, p0}, Lcom/cooliris/media/CropImage$12;-><init>(Lcom/cooliris/media/CropImage;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 633
    new-instance v3, Lcom/cooliris/media/CropImage$13;

    invoke-direct {v3, p0, v1, v0}, Lcom/cooliris/media/CropImage$13;-><init>(Lcom/cooliris/media/CropImage;Landroid/widget/Button;Landroid/widget/Button;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 660
    new-instance v3, Lcom/cooliris/media/CropImage$14;

    invoke-direct {v3, p0, v1, v0}, Lcom/cooliris/media/CropImage$14;-><init>(Lcom/cooliris/media/CropImage;Landroid/widget/Button;Landroid/widget/Button;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 687
    new-instance v3, Lcom/cooliris/media/CropImage$15;

    invoke-direct {v3, p0, v1, v0}, Lcom/cooliris/media/CropImage$15;-><init>(Lcom/cooliris/media/CropImage;Landroid/widget/Button;Landroid/widget/Button;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 713
    new-instance v3, Lcom/cooliris/media/CropImage$16;

    invoke-direct {v3, p0}, Lcom/cooliris/media/CropImage$16;-><init>(Lcom/cooliris/media/CropImage;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 728
    return-void

    .line 577
    .end local v2           #sizeButtonsLayout:Landroid/widget/RelativeLayout;
    :cond_5b
    invoke-direct {p0, v1, v0}, Lcom/cooliris/media/CropImage;->updateSingleBtnImgToSelected(Landroid/widget/Button;Landroid/widget/Button;)V

    goto :goto_1a

    .line 587
    .restart local v2       #sizeButtonsLayout:Landroid/widget/RelativeLayout;
    :cond_5f
    iput-boolean v4, p0, Lcom/cooliris/media/CropImage;->mIsMultiBtnSelected:Z

    goto :goto_2a
.end method

.method private isHomeScreen()Z
    .registers 4

    .prologue
    .line 731
    invoke-virtual {p0}, Lcom/cooliris/media/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "set_homescreen"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isLockScreen()Z
    .registers 4

    .prologue
    .line 735
    invoke-virtual {p0}, Lcom/cooliris/media/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "set_lockscreen"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static launchCropperOrFinish(Landroid/content/Context;Lcom/cooliris/media/MediaItem;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x0

    .line 183
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 184
    if-eqz v5, :cond_1c

    const-string v0, "crop"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 185
    :goto_17
    iget-object v2, p1, Lcom/cooliris/media/MediaItem;->mContentUri:Ljava/lang/String;

    .line 186
    if-nez v2, :cond_1f

    .line 305
    :cond_1b
    :goto_1b
    return-void

    .line 184
    :cond_1c
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_17

    :cond_1f
    move-object v0, p0

    .line 189
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "set_wallpaper"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    move-object v0, p0

    .line 191
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "set_homescreen"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 194
    if-eqz v1, :cond_70

    if-eqz v3, :cond_70

    if-eqz v0, :cond_70

    .line 195
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 196
    const-string v3, "circle"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 197
    const-string v1, "circleCrop"

    const-string v3, "true"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_53
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 200
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 201
    const-class v2, Lcom/cooliris/media/CropImage;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 202
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 204
    invoke-virtual {v1, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 205
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0, v1, v7}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1b

    .line 208
    :cond_70
    if-eqz v1, :cond_a8

    if-eqz v3, :cond_a8

    if-nez v0, :cond_a8

    .line 209
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 210
    const-string v3, "circle"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 211
    const-string v1, "circleCrop"

    const-string v3, "true"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_8a
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 214
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 215
    const-class v2, Lcom/cooliris/media/CropImage;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 216
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 218
    invoke-virtual {v1, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 219
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0, v1, v7}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1b

    .line 220
    :cond_a8
    if-eqz v1, :cond_de

    if-nez v3, :cond_de

    .line 221
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 222
    const-string v3, "circle"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c0

    .line 223
    const-string v1, "circleCrop"

    const-string v3, "true"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :cond_c0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 226
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 227
    const-class v2, Lcom/cooliris/media/CropImage;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 228
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 230
    invoke-virtual {v1, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 231
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0, v1, v7}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1b

    .line 235
    :cond_de
    const-string v0, "http://"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_ee

    const-string v0, "https://"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_125

    .line 239
    :cond_ee
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/cooliris/app/Res;->string:Lcom/cooliris/media/R$string;

    const v1, 0x7f06001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v3, Lcom/cooliris/app/Res;->string:Lcom/cooliris/media/R$string;

    const v3, 0x7f060012

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {p0, v0, v1, v3, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v4

    .line 243
    if-eqz v2, :cond_1b

    .line 244
    new-instance v0, Lcom/cooliris/media/CropImage$2;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/cooliris/media/CropImage$2;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/cooliris/media/MediaItem;Landroid/app/ProgressDialog;Landroid/os/Bundle;)V

    .line 297
    new-instance v1, Landroid/media/MediaScannerConnection;

    invoke-direct {v1, p0, v0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    .line 298
    sget-object v0, Lcom/cooliris/media/CropImage;->mConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    invoke-virtual {v1}, Landroid/media/MediaScannerConnection;->connect()V

    goto/16 :goto_1b

    .line 302
    :cond_125
    invoke-static {p0, v5, v2}, Lcom/cooliris/media/CropImage;->performReturn(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V

    goto/16 :goto_1b
.end method

.method private loadBitmap(Landroid/content/Intent;)V
    .registers 6
    .parameter "intent"

    .prologue
    .line 449
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 450
    .local v0, target:Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 452
    .local v1, targetScheme:Ljava/lang/String;
    const-string v2, "content"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 453
    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Lcom/cooliris/media/LocalDataSource;->createMediaItemFromUri(Landroid/content/Context;Landroid/net/Uri;I)Lcom/cooliris/media/MediaItem;

    move-result-object v2

    iput-object v2, p0, Lcom/cooliris/media/CropImage;->mItem:Lcom/cooliris/media/MediaItem;

    .line 457
    :cond_17
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/cooliris/media/CropImage$4;

    invoke-direct {v3, p0, v0, v1}, Lcom/cooliris/media/CropImage$4;-><init>(Lcom/cooliris/media/CropImage;Landroid/net/Uri;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 497
    return-void
.end method

.method private onSaveClicked()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 799
    invoke-direct {p0}, Lcom/cooliris/media/CropImage;->checkLowStorage()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 854
    :cond_7
    :goto_7
    return-void

    .line 803
    :cond_8
    iget-object v0, p0, Lcom/cooliris/media/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1f

    .line 804
    invoke-virtual {p0}, Lcom/cooliris/media/CropImage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06007b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_7

    .line 813
    :cond_1f
    iget-boolean v0, p0, Lcom/cooliris/media/CropImage;->mSaving:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/cooliris/media/CropImage;->mCrop:Lcom/cooliris/media/HighlightView;

    if-eqz v0, :cond_7

    .line 816
    iget-boolean v0, p0, Lcom/cooliris/media/CropImage;->mIsMultiBtnSelected:Z

    if-nez v0, :cond_80

    .line 817
    const-string v0, "com.cooliris.media"

    invoke-virtual {p0, v0, v2}, Lcom/cooliris/media/CropImage;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 818
    const-string v1, "LockScreenDialogUse"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cooliris/media/CropImage;->bLockScreenDialogOff:Z

    .line 820
    iget-boolean v0, p0, Lcom/cooliris/media/CropImage;->bLockScreenDialogOff:Z

    if-nez v0, :cond_7c

    .line 821
    iget-object v0, p0, Lcom/cooliris/media/CropImage;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/cooliris/media/CropImage;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_7

    .line 822
    :cond_49
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f060084

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/cooliris/media/CropImage;->SetWallpaperPopupView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060087

    new-instance v2, Lcom/cooliris/media/CropImage$20;

    invoke-direct {v2, p0}, Lcom/cooliris/media/CropImage$20;-><init>(Lcom/cooliris/media/CropImage;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060088

    new-instance v2, Lcom/cooliris/media/CropImage$19;

    invoke-direct {v2, p0}, Lcom/cooliris/media/CropImage$19;-><init>(Lcom/cooliris/media/CropImage;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/cooliris/media/CropImage;->mDialog:Landroid/app/AlertDialog;

    goto :goto_7

    .line 848
    :cond_7c
    invoke-direct {p0}, Lcom/cooliris/media/CropImage;->wallpaperSave()V

    goto :goto_7

    .line 851
    :cond_80
    iput-boolean v2, p0, Lcom/cooliris/media/CropImage;->bLockScreen:Z

    .line 852
    invoke-direct {p0}, Lcom/cooliris/media/CropImage;->wallpaperSave()V

    goto :goto_7
.end method

.method private static performReturn(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 20
    .parameter "context"
    .parameter "myExtras"
    .parameter "contentUri"

    .prologue
    .line 308
    new-instance v15, Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v15, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 309
    .local v15, result:Landroid/content/Intent;
    const/16 v16, 0x0

    .line 310
    .local v16, resultSet:Z
    if-eqz p1, :cond_58

    .line 311
    const-string v1, "output"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v14

    check-cast v14, Landroid/net/Uri;

    .line 312
    .local v14, outputUri:Landroid/net/Uri;
    if-eqz v14, :cond_58

    .line 313
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 314
    .local v11, extras:Landroid/os/Bundle;
    const/4 v13, 0x0

    .line 315
    .local v13, outputStream:Ljava/io/OutputStream;
    const/4 v12, 0x0

    .line 317
    .local v12, inputStream:Ljava/io/InputStream;
    :try_start_21
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v14}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v13

    .line 318
    if-eqz v13, :cond_3a

    .line 319
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v12

    .line 321
    invoke-static {v12, v13}, Lcom/cooliris/media/Utils;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 323
    :cond_3a
    move-object/from16 v0, p0

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    const/4 v2, -0x1

    new-instance v3, Landroid/content/Intent;

    invoke-virtual {v14}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V
    :try_end_50
    .catchall {:try_start_21 .. :try_end_50} :catchall_b1
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_50} :catch_8d

    .line 325
    const/16 v16, 0x1

    .line 329
    invoke-static {v12}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 330
    invoke-static {v13}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 334
    .end local v11           #extras:Landroid/os/Bundle;
    .end local v12           #inputStream:Ljava/io/InputStream;
    .end local v13           #outputStream:Ljava/io/OutputStream;
    .end local v14           #outputUri:Landroid/net/Uri;
    :cond_58
    :goto_58
    if-nez v16, :cond_7d

    if-eqz p1, :cond_7d

    const-string v1, "return-data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 336
    const/4 v8, 0x0

    .line 338
    .local v8, bitmap:Landroid/graphics/Bitmap;
    const/16 v3, 0x100

    const/16 v4, 0x100

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    :try_start_72
    invoke-static/range {v1 .. v7}, Lcom/cooliris/media/UriTexture;->createFromUri(Landroid/content/Context;Ljava/lang/String;IIJLorg/apache/http/conn/ClientConnectionManager;)Landroid/graphics/Bitmap;
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_75} :catch_b9
    .catch Ljava/net/URISyntaxException; {:try_start_72 .. :try_end_75} :catch_be

    move-result-object v8

    .line 344
    :goto_76
    if-eqz v8, :cond_7d

    .line 345
    const-string v1, "data"

    invoke-virtual {v15, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 348
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    :cond_7d
    if-nez v16, :cond_87

    move-object/from16 v1, p0

    .line 349
    check-cast v1, Landroid/app/Activity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v15}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 350
    :cond_87
    check-cast p0, Landroid/app/Activity;

    .end local p0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    .line 351
    return-void

    .line 326
    .restart local v11       #extras:Landroid/os/Bundle;
    .restart local v12       #inputStream:Ljava/io/InputStream;
    .restart local v13       #outputStream:Ljava/io/OutputStream;
    .restart local v14       #outputUri:Landroid/net/Uri;
    .restart local p0
    :catch_8d
    move-exception v10

    .line 327
    .local v10, ex:Ljava/lang/Exception;
    :try_start_8e
    const-string v1, "CropImage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot save to uri "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v14}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_aa
    .catchall {:try_start_8e .. :try_end_aa} :catchall_b1

    .line 329
    invoke-static {v12}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 330
    invoke-static {v13}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_58

    .line 329
    .end local v10           #ex:Ljava/lang/Exception;
    :catchall_b1
    move-exception v1

    invoke-static {v12}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 330
    invoke-static {v13}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v1

    .line 339
    .end local v11           #extras:Landroid/os/Bundle;
    .end local v12           #inputStream:Ljava/io/InputStream;
    .end local v13           #outputStream:Ljava/io/OutputStream;
    .end local v14           #outputUri:Landroid/net/Uri;
    .restart local v8       #bitmap:Landroid/graphics/Bitmap;
    :catch_b9
    move-exception v9

    .line 340
    .local v9, e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_76

    .line 341
    .end local v9           #e:Ljava/io/IOException;
    :catch_be
    move-exception v9

    .line 342
    .local v9, e:Ljava/net/URISyntaxException;
    invoke-virtual {v9}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_76
.end method

.method private saveOutput(Landroid/graphics/Bitmap;)V
    .registers 20
    .parameter

    .prologue
    .line 1012
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cooliris/media/CropImage;->mSaveUri:Landroid/net/Uri;

    if-eqz v1, :cond_90

    .line 1013
    const/4 v2, 0x0

    .line 1015
    :try_start_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cooliris/media/CropImage;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/CropImage;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v2

    .line 1016
    if-eqz v2, :cond_20

    .line 1017
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cooliris/media/CropImage;->mOutputFormat:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_8b
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_20} :catch_6a

    .line 1023
    :cond_20
    invoke-static {v2}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 1025
    :goto_23
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1026
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cooliris/media/CropImage;->mItem:Lcom/cooliris/media/MediaItem;

    .line 1027
    if-eqz v2, :cond_43

    .line 1028
    const-string v3, "takenTime"

    iget-wide v4, v2, Lcom/cooliris/media/MediaItem;->mDateTakenInMs:J

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1029
    const-string v3, "latitude"

    iget-wide v4, v2, Lcom/cooliris/media/MediaItem;->mLatitude:D

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 1030
    const-string v3, "longitude"

    iget-wide v4, v2, Lcom/cooliris/media/MediaItem;->mLongitude:D

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 1032
    :cond_43
    const-string v2, "lockscreen_ok"

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/cooliris/media/CropImage;->bLockScreen:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1033
    const/4 v2, -0x1

    new-instance v3, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/CropImage;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v1}, Lcom/cooliris/media/CropImage;->setResult(ILandroid/content/Intent;)V

    .line 1169
    :cond_63
    :goto_63
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1170
    invoke-virtual/range {p0 .. p0}, Lcom/cooliris/media/CropImage;->finish()V

    .line 1171
    return-void

    .line 1020
    :catch_6a
    move-exception v1

    .line 1021
    :try_start_6b
    const-string v3, "CropImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot open file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cooliris/media/CropImage;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_87
    .catchall {:try_start_6b .. :try_end_87} :catchall_8b

    .line 1023
    invoke-static {v2}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_23

    :catchall_8b
    move-exception v1

    invoke-static {v2}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v1

    .line 1035
    :cond_90
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 1036
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cooliris/media/CropImage;->mItem:Lcom/cooliris/media/MediaItem;

    .line 1037
    if-eqz v1, :cond_b0

    .line 1038
    const-string v2, "takenTime"

    iget-wide v3, v1, Lcom/cooliris/media/MediaItem;->mDateTakenInMs:J

    invoke-virtual {v14, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1039
    const-string v2, "latitude"

    iget-wide v3, v1, Lcom/cooliris/media/MediaItem;->mLatitude:D

    invoke-virtual {v14, v2, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 1040
    const-string v2, "longitude"

    iget-wide v3, v1, Lcom/cooliris/media/MediaItem;->mLongitude:D

    invoke-virtual {v14, v2, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 1042
    :cond_b0
    const-string v1, "rect"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cooliris/media/CropImage;->mCrop:Lcom/cooliris/media/HighlightView;

    invoke-virtual {v2}, Lcom/cooliris/media/HighlightView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cooliris/media/CropImage;->mItem:Lcom/cooliris/media/MediaItem;

    if-eqz v1, :cond_63

    .line 1048
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cooliris/media/CropImage;->mItem:Lcom/cooliris/media/MediaItem;

    iget-object v1, v1, Lcom/cooliris/media/MediaItem;->mFilePath:Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1049
    new-instance v9, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1051
    const/4 v1, 0x0

    .line 1052
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1053
    const/4 v3, 0x0

    const/16 v4, 0x2e

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1059
    :cond_eb
    add-int/lit8 v1, v1, 0x1

    .line 1063
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 1065
    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1066
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    .line 1067
    if-nez v3, :cond_eb

    .line 1073
    :try_start_11f
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cooliris/media/CropImage;->mItem:Lcom/cooliris/media/MediaItem;

    .line 1074
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1075
    const/4 v1, 0x1

    new-array v13, v1, [I
    :try_end_143
    .catch Ljava/lang/Exception; {:try_start_11f .. :try_end_143} :catch_1e2

    .line 1077
    const-wide/16 v11, 0x0

    .line 1078
    const/4 v8, 0x0

    .line 1079
    const/4 v7, 0x0

    .line 1081
    const/4 v1, 0x1

    :try_start_148
    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "MAX(datetaken)"

    aput-object v2, v3, v1

    .line 1084
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cooliris/media/CropImage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_15b
    .catchall {:try_start_148 .. :try_end_15b} :catchall_20c
    .catch Ljava/lang/Exception; {:try_start_148 .. :try_end_15b} :catch_1ec

    move-result-object v8

    .line 1086
    :try_start_15c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cooliris/media/CropImage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_168
    .catchall {:try_start_15c .. :try_end_168} :catchall_20c
    .catch Ljava/lang/Exception; {:try_start_15c .. :try_end_168} :catch_2fe

    move-result-object v2

    .line 1088
    if-eqz v8, :cond_317

    :try_start_16b
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_317

    .line 1089
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_175
    .catchall {:try_start_16b .. :try_end_175} :catchall_2ef
    .catch Ljava/lang/Exception; {:try_start_16b .. :try_end_175} :catch_304

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    add-long v11, v3, v5

    move-wide v3, v11

    .line 1091
    :goto_17b
    if-eqz v2, :cond_314

    :try_start_17d
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_314

    .line 1092
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const-wide/16 v11, 0x3e8

    add-long/2addr v5, v11

    cmp-long v1, v3, v5

    if-gtz v1, :cond_314

    .line 1093
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_193
    .catchall {:try_start_17d .. :try_end_193} :catchall_2f3
    .catch Ljava/lang/Exception; {:try_start_17d .. :try_end_193} :catch_309

    move-result-wide v3

    const-wide/16 v5, 0x3e9

    add-long/2addr v3, v5

    move-wide v5, v3

    .line 1099
    :goto_198
    if-eqz v8, :cond_19d

    .line 1100
    :try_start_19a
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1102
    :cond_19d
    if-eqz v2, :cond_1a2

    .line 1103
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1105
    :cond_1a2
    const-wide/16 v1, 0x0

    cmp-long v1, v5, v1

    if-nez v1, :cond_1b0

    .line 1106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    add-long v5, v1, v3

    .line 1109
    :cond_1b0
    :goto_1b0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cooliris/media/CropImage;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {v10, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    div-long v3, v5, v3

    iget-wide v7, v15, Lcom/cooliris/media/MediaItem;->mLatitude:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    iget-wide v11, v15, Lcom/cooliris/media/MediaItem;->mLongitude:D

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x0

    move-object/from16 v11, p1

    invoke-static/range {v1 .. v13}, Lcom/cooliris/media/ImageManager;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JJLjava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[B[I)Landroid/net/Uri;

    move-result-object v2

    .line 1113
    if-nez v2, :cond_225

    .line 1114
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1
    :try_end_1e2
    .catch Ljava/lang/Exception; {:try_start_19a .. :try_end_1e2} :catch_1e2

    .line 1163
    :catch_1e2
    move-exception v1

    .line 1165
    const-string v2, "CropImage"

    const-string v3, "Store image fail, continue anyway"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_63

    .line 1096
    :catch_1ec
    move-exception v1

    move-object v2, v7

    move-object v3, v8

    move-wide v4, v11

    .line 1097
    :goto_1f0
    :try_start_1f0
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1f3
    .catchall {:try_start_1f0 .. :try_end_1f3} :catchall_2f8

    .line 1099
    if-eqz v3, :cond_1f8

    .line 1100
    :try_start_1f5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1102
    :cond_1f8
    if-eqz v2, :cond_1fd

    .line 1103
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1105
    :cond_1fd
    const-wide/16 v1, 0x0

    cmp-long v1, v4, v1

    if-nez v1, :cond_311

    .line 1106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    add-long v5, v1, v3

    goto :goto_1b0

    .line 1099
    :catchall_20c
    move-exception v1

    :goto_20d
    if-eqz v8, :cond_212

    .line 1100
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1102
    :cond_212
    if-eqz v7, :cond_217

    .line 1103
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1105
    :cond_217
    const-wide/16 v2, 0x0

    cmp-long v2, v11, v2

    if-nez v2, :cond_224

    .line 1106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    :cond_224
    throw v1
    :try_end_225
    .catch Ljava/lang/Exception; {:try_start_1f5 .. :try_end_225} :catch_1e2

    .line 1118
    :cond_225
    const/4 v1, 0x2

    :try_start_226
    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v3, v1

    const/4 v1, 0x1

    const-string v4, "mini_thumb_magic"

    aput-object v4, v3, v1

    .line 1121
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cooliris/media/CropImage;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_23c
    .catchall {:try_start_226 .. :try_end_23c} :catchall_2bd
    .catch Ljava/lang/Exception; {:try_start_226 .. :try_end_23c} :catch_293

    move-result-object v1

    .line 1123
    const/4 v3, 0x0

    :try_start_23e
    invoke-interface {v1, v3}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_241
    .catchall {:try_start_23e .. :try_end_241} :catchall_28e

    .line 1125
    :try_start_241
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1127
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1128
    const-string v3, "mini_thumb_magic"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_253
    .catchall {:try_start_241 .. :try_end_253} :catchall_2bd
    .catch Ljava/lang/Exception; {:try_start_241 .. :try_end_253} :catch_293

    .line 1130
    :try_start_253
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/CropImage;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_25c
    .catchall {:try_start_253 .. :try_end_25c} :catchall_2bd
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_253 .. :try_end_25c} :catch_2a6
    .catch Ljava/lang/Exception; {:try_start_253 .. :try_end_25c} :catch_293

    .line 1136
    :goto_25c
    const/4 v3, 0x0

    .line 1138
    :try_start_25d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cooliris/media/CropImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v3

    .line 1139
    if-eqz v3, :cond_272

    .line 1140
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cooliris/media/CropImage;->mOutputFormat:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x4b

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v4, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_272
    .catchall {:try_start_25d .. :try_end_272} :catchall_2e5
    .catch Ljava/io/IOException; {:try_start_25d .. :try_end_272} :catch_2c8

    .line 1146
    :cond_272
    :try_start_272
    invoke-static {v3}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V
    :try_end_275
    .catchall {:try_start_272 .. :try_end_275} :catchall_2bd
    .catch Ljava/lang/Exception; {:try_start_272 .. :try_end_275} :catch_293

    .line 1161
    :goto_275
    const/4 v1, -0x1

    :try_start_276
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v14}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/cooliris/media/CropImage;->setResult(ILandroid/content/Intent;)V
    :try_end_28c
    .catch Ljava/lang/Exception; {:try_start_276 .. :try_end_28c} :catch_1e2

    goto/16 :goto_63

    .line 1125
    :catchall_28e
    move-exception v3

    :try_start_28f
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v3
    :try_end_293
    .catchall {:try_start_28f .. :try_end_293} :catchall_2bd
    .catch Ljava/lang/Exception; {:try_start_28f .. :try_end_293} :catch_293

    .line 1149
    :catch_293
    move-exception v1

    .line 1150
    :try_start_294
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_297
    .catchall {:try_start_294 .. :try_end_297} :catchall_2bd

    .line 1154
    :try_start_297
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cooliris/media/CropImage;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2a0
    .catch Ljava/lang/Exception; {:try_start_297 .. :try_end_2a0} :catch_2a1

    goto :goto_275

    .line 1155
    :catch_2a1
    move-exception v1

    .line 1157
    :try_start_2a2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2a5
    .catch Ljava/lang/Exception; {:try_start_2a2 .. :try_end_2a5} :catch_1e2

    goto :goto_275

    .line 1131
    :catch_2a6
    move-exception v1

    .line 1132
    :try_start_2a7
    invoke-virtual/range {p0 .. p0}, Lcom/cooliris/media/CropImage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f060078

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_2bc
    .catchall {:try_start_2a7 .. :try_end_2bc} :catchall_2bd
    .catch Ljava/lang/Exception; {:try_start_2a7 .. :try_end_2bc} :catch_293

    goto :goto_25c

    .line 1152
    :catchall_2bd
    move-exception v1

    .line 1154
    :try_start_2be
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/CropImage;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2c7
    .catch Ljava/lang/Exception; {:try_start_2be .. :try_end_2c7} :catch_2ea

    .line 1158
    :goto_2c7
    :try_start_2c7
    throw v1
    :try_end_2c8
    .catch Ljava/lang/Exception; {:try_start_2c7 .. :try_end_2c8} :catch_1e2

    .line 1142
    :catch_2c8
    move-exception v1

    .line 1144
    :try_start_2c9
    const-string v4, "CropImage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot open file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2e1
    .catchall {:try_start_2c9 .. :try_end_2e1} :catchall_2e5

    .line 1146
    :try_start_2e1
    invoke-static {v3}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_275

    :catchall_2e5
    move-exception v1

    invoke-static {v3}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v1
    :try_end_2ea
    .catchall {:try_start_2e1 .. :try_end_2ea} :catchall_2bd
    .catch Ljava/lang/Exception; {:try_start_2e1 .. :try_end_2ea} :catch_293

    .line 1155
    :catch_2ea
    move-exception v2

    .line 1157
    :try_start_2eb
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2ee
    .catch Ljava/lang/Exception; {:try_start_2eb .. :try_end_2ee} :catch_1e2

    goto :goto_2c7

    .line 1099
    :catchall_2ef
    move-exception v1

    move-object v7, v2

    goto/16 :goto_20d

    :catchall_2f3
    move-exception v1

    move-object v7, v2

    move-wide v11, v3

    goto/16 :goto_20d

    :catchall_2f8
    move-exception v1

    move-object v7, v2

    move-object v8, v3

    move-wide v11, v4

    goto/16 :goto_20d

    .line 1096
    :catch_2fe
    move-exception v1

    move-object v2, v7

    move-object v3, v8

    move-wide v4, v11

    goto/16 :goto_1f0

    :catch_304
    move-exception v1

    move-object v3, v8

    move-wide v4, v11

    goto/16 :goto_1f0

    :catch_309
    move-exception v1

    move-wide/from16 v16, v3

    move-wide/from16 v4, v16

    move-object v3, v8

    goto/16 :goto_1f0

    :cond_311
    move-wide v5, v4

    goto/16 :goto_1b0

    :cond_314
    move-wide v5, v3

    goto/16 :goto_198

    :cond_317
    move-wide v3, v11

    goto/16 :goto_17b
.end method

.method private setDiscardBtnListener()V
    .registers 3

    .prologue
    .line 500
    const v1, 0x7f080010

    invoke-virtual {p0, v1}, Lcom/cooliris/media/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 502
    .local v0, discardButton:Landroid/widget/Button;
    new-instance v1, Lcom/cooliris/media/CropImage$5;

    invoke-direct {v1, p0}, Lcom/cooliris/media/CropImage$5;-><init>(Lcom/cooliris/media/CropImage;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 509
    new-instance v1, Lcom/cooliris/media/CropImage$6;

    invoke-direct {v1, p0}, Lcom/cooliris/media/CropImage$6;-><init>(Lcom/cooliris/media/CropImage;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 522
    new-instance v1, Lcom/cooliris/media/CropImage$7;

    invoke-direct {v1, p0, v0}, Lcom/cooliris/media/CropImage$7;-><init>(Lcom/cooliris/media/CropImage;Landroid/widget/Button;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 533
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 534
    return-void
.end method

.method private setSaveBtnListener()V
    .registers 3

    .prologue
    .line 537
    const v1, 0x7f08000f

    invoke-virtual {p0, v1}, Lcom/cooliris/media/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 539
    .local v0, saveButton:Landroid/widget/Button;
    new-instance v1, Lcom/cooliris/media/CropImage$8;

    invoke-direct {v1, p0}, Lcom/cooliris/media/CropImage$8;-><init>(Lcom/cooliris/media/CropImage;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 545
    new-instance v1, Lcom/cooliris/media/CropImage$9;

    invoke-direct {v1, p0}, Lcom/cooliris/media/CropImage$9;-><init>(Lcom/cooliris/media/CropImage;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 557
    new-instance v1, Lcom/cooliris/media/CropImage$10;

    invoke-direct {v1, p0, v0}, Lcom/cooliris/media/CropImage$10;-><init>(Lcom/cooliris/media/CropImage;Landroid/widget/Button;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 566
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 567
    return-void
.end method

.method private startFaceDetection()V
    .registers 5

    .prologue
    .line 740
    invoke-virtual {p0}, Lcom/cooliris/media/CropImage;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 772
    :goto_6
    return-void

    .line 744
    :cond_7
    iget-object v0, p0, Lcom/cooliris/media/CropImage;->mImageView:Lcom/cooliris/media/CropImageView;

    iget-object v1, p0, Lcom/cooliris/media/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/cooliris/media/CropImageView;->setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V

    .line 746
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/cooliris/media/CropImage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/cooliris/app/Res;->string:Lcom/cooliris/media/R$string;

    const v2, 0x7f060012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cooliris/media/CropImage$17;

    invoke-direct {v2, p0}, Lcom/cooliris/media/CropImage$17;-><init>(Lcom/cooliris/media/CropImage;)V

    iget-object v3, p0, Lcom/cooliris/media/CropImage;->mHandler:Landroid/os/Handler;

    invoke-static {p0, v0, v1, v2, v3}, Lcom/cooliris/media/Util;->startBackgroundJob(Lcom/cooliris/media/MonitoredActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V

    goto :goto_6
.end method

.method private updateMultiBtnImgToSelected(Landroid/widget/Button;Landroid/widget/Button;)V
    .registers 4
    .parameter "single"
    .parameter "multi"

    .prologue
    .line 1412
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/cooliris/media/CropImage;->getSingleButtonResource(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1413
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/cooliris/media/CropImage;->getMultiButtonResource(Z)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1414
    return-void
.end method

.method private updateSingleBtnImgToSelected(Landroid/widget/Button;Landroid/widget/Button;)V
    .registers 4
    .parameter "single"
    .parameter "multi"

    .prologue
    .line 1407
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/cooliris/media/CropImage;->getSingleButtonResource(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1408
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/cooliris/media/CropImage;->getMultiButtonResource(Z)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1409
    return-void
.end method

.method private wallpaperSave()V
    .registers 12

    .prologue
    const/4 v6, 0x3

    const/4 v10, 0x0

    const v8, 0xeaab6a

    const/4 v9, 0x0

    .line 897
    iget-object v0, p0, Lcom/cooliris/media/CropImage;->mCrop:Lcom/cooliris/media/HighlightView;

    invoke-virtual {v0}, Lcom/cooliris/media/HighlightView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 898
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 899
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 901
    const-string v1, "CropImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CropImage width = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "   height = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    if-lt v2, v6, :cond_3a

    if-ge v3, v6, :cond_40

    .line 904
    :cond_3a
    sget-object v0, Lcom/cooliris/media/CropImage;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1009
    :goto_3f
    return-void

    .line 908
    :cond_40
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/cooliris/media/CropImage;->mSaving:Z

    .line 914
    :try_start_43
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 915
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 916
    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 917
    iget-object v6, p0, Lcom/cooliris/media/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v0, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_5b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_43 .. :try_end_5b} :catch_f9

    .line 923
    iget-boolean v0, p0, Lcom/cooliris/media/CropImage;->mCircleCrop:Z

    if-eqz v0, :cond_7e

    .line 929
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 930
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 931
    int-to-float v5, v2

    div-float/2addr v5, v8

    int-to-float v3, v3

    div-float/2addr v3, v8

    int-to-float v2, v2

    div-float/2addr v2, v8

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v5, v3, v2, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 933
    :try_start_74
    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v4, v0, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_79} :catch_103

    .line 937
    :goto_79
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v9, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 941
    :cond_7e
    iget v0, p0, Lcom/cooliris/media/CropImage;->mOutputX:I

    if-eqz v0, :cond_178

    iget v0, p0, Lcom/cooliris/media/CropImage;->mOutputY:I

    if-eqz v0, :cond_178

    .line 942
    iget-boolean v0, p0, Lcom/cooliris/media/CropImage;->mScale:Z

    if-eqz v0, :cond_109

    .line 945
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iget v2, p0, Lcom/cooliris/media/CropImage;->mOutputX:I

    iget v3, p0, Lcom/cooliris/media/CropImage;->mOutputY:I

    iget-boolean v4, p0, Lcom/cooliris/media/CropImage;->mScaleUp:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/cooliris/media/Util;->transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 947
    if-eqz v1, :cond_a4

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a4

    .line 948
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 985
    :cond_a4
    :goto_a4
    invoke-virtual {p0}, Lcom/cooliris/media/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 986
    if-eqz v1, :cond_15f

    const-string v2, "data"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    if-nez v2, :cond_be

    const-string v2, "return-data"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15f

    .line 989
    :cond_be
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 990
    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 991
    iget-object v0, p0, Lcom/cooliris/media/CropImage;->mItem:Lcom/cooliris/media/MediaItem;

    .line 992
    if-eqz v0, :cond_e1

    .line 993
    const-string v2, "takenTime"

    iget-wide v3, v0, Lcom/cooliris/media/MediaItem;->mDateTakenInMs:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 994
    const-string v2, "latitude"

    iget-wide v3, v0, Lcom/cooliris/media/MediaItem;->mLatitude:D

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 995
    const-string v2, "longitude"

    iget-wide v3, v0, Lcom/cooliris/media/MediaItem;->mLongitude:D

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 997
    :cond_e1
    const/4 v0, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "inline-data"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/cooliris/media/CropImage;->setResult(ILandroid/content/Intent;)V

    .line 998
    invoke-virtual {p0}, Lcom/cooliris/media/CropImage;->finish()V

    goto/16 :goto_3f

    .line 918
    :catch_f9
    move-exception v0

    .line 919
    const-string v0, "CropImage"

    const-string v1, "onSaveClicked() IllegalArgumentException from createBitmap()..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3f

    .line 934
    :catch_103
    move-exception v0

    .line 935
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_79

    .line 960
    :cond_109
    iget v0, p0, Lcom/cooliris/media/CropImage;->mOutputX:I

    iget v2, p0, Lcom/cooliris/media/CropImage;->mOutputY:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 961
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 963
    iget-object v3, p0, Lcom/cooliris/media/CropImage;->mCrop:Lcom/cooliris/media/HighlightView;

    invoke-virtual {v3}, Lcom/cooliris/media/HighlightView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 964
    new-instance v4, Landroid/graphics/Rect;

    iget v5, p0, Lcom/cooliris/media/CropImage;->mOutputX:I

    iget v6, p0, Lcom/cooliris/media/CropImage;->mOutputY:I

    invoke-direct {v4, v9, v9, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 966
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    .line 967
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    .line 970
    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {v3, v7, v8}, Landroid/graphics/Rect;->inset(II)V

    .line 973
    neg-int v5, v5

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    neg-int v6, v6

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->inset(II)V

    .line 976
    iget-object v5, p0, Lcom/cooliris/media/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v5, v3, v4, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 979
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_a4

    .line 1001
    :cond_15f
    new-instance v1, Lcom/cooliris/media/CropImage$23;

    invoke-direct {v1, p0, v0}, Lcom/cooliris/media/CropImage$23;-><init>(Lcom/cooliris/media/CropImage;Landroid/graphics/Bitmap;)V

    .line 1006
    invoke-virtual {p0}, Lcom/cooliris/media/CropImage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v2, Lcom/cooliris/app/Res;->string:Lcom/cooliris/media/R$string;

    const v2, 0x7f060010

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/cooliris/media/CropImage;->mHandler:Landroid/os/Handler;

    invoke-static {p0, v10, v0, v1, v2}, Lcom/cooliris/media/Util;->startBackgroundJob(Lcom/cooliris/media/MonitoredActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V

    goto/16 :goto_3f

    :cond_178
    move-object v0, v1

    goto/16 :goto_a4
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .parameter "newConfig"

    .prologue
    .line 1387
    invoke-super {p0, p1}, Lcom/cooliris/media/MonitoredActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1392
    const v1, 0x7f030004

    invoke-virtual {p0, v1}, Lcom/cooliris/media/CropImage;->setContentView(I)V

    .line 1393
    const v1, 0x7f080008

    invoke-virtual {p0, v1}, Lcom/cooliris/media/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/cooliris/media/CropImageView;

    iput-object v1, p0, Lcom/cooliris/media/CropImage;->mImageView:Lcom/cooliris/media/CropImageView;

    .line 1394
    iget-object v1, p0, Lcom/cooliris/media/CropImage;->mImageView:Lcom/cooliris/media/CropImageView;

    const v2, 0x7f08000e

    invoke-virtual {p0, v2}, Lcom/cooliris/media/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cooliris/media/CropImageView;->setButtonsLayout(Landroid/view/View;)V

    .line 1396
    invoke-direct {p0}, Lcom/cooliris/media/CropImage;->isHomeScreen()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1397
    invoke-direct {p0}, Lcom/cooliris/media/CropImage;->initHomeScreenUI()V

    .line 1399
    :cond_29
    invoke-direct {p0}, Lcom/cooliris/media/CropImage;->setSaveBtnListener()V

    .line 1400
    invoke-direct {p0}, Lcom/cooliris/media/CropImage;->setDiscardBtnListener()V

    .line 1402
    iget-object v1, p0, Lcom/cooliris/media/CropImage;->mImageLoadHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1403
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/cooliris/media/CropImage;->mImageLoadHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1404
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 13
    .parameter "icicle"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 365
    invoke-super {p0, p1}, Lcom/cooliris/media/MonitoredActivity;->onCreate(Landroid/os/Bundle;)V

    .line 366
    new-instance v7, Lcom/cooliris/app/App;

    invoke-direct {v7, p0}, Lcom/cooliris/app/App;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/cooliris/media/CropImage;->mApp:Lcom/cooliris/app/App;

    .line 367
    invoke-virtual {p0}, Lcom/cooliris/media/CropImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iput-object v7, p0, Lcom/cooliris/media/CropImage;->mContentResolver:Landroid/content/ContentResolver;

    .line 368
    invoke-virtual {p0, v8}, Lcom/cooliris/media/CropImage;->requestWindowFeature(I)Z

    .line 370
    invoke-virtual {p0}, Lcom/cooliris/media/CropImage;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v10, 0x400

    invoke-virtual {v7, v10}, Landroid/view/Window;->addFlags(I)V

    .line 371
    const v7, 0x7f030004

    invoke-virtual {p0, v7}, Lcom/cooliris/media/CropImage;->setContentView(I)V

    .line 373
    new-instance v3, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v3, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 374
    .local v3, intentMediaStateFilter:Landroid/content/IntentFilter;
    iget-object v7, p0, Lcom/cooliris/media/CropImage;->mLocaleReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7, v3}, Lcom/cooliris/media/CropImage;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 377
    invoke-virtual {p0}, Lcom/cooliris/media/CropImage;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/cooliris/drm/DrmChecker;->init(Landroid/content/Context;)V

    .line 380
    invoke-static {p0}, Lcom/cooliris/media/Gallery;->setStorageVolume(Landroid/content/Context;)V

    .line 382
    new-instance v1, Landroid/content/Intent;

    const-string v7, "android.intent.action.MEDIA_THUMBWORKER_SUSPEND"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 383
    .local v1, i:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/cooliris/media/CropImage;->sendBroadcast(Landroid/content/Intent;)V

    .line 384
    const-string v7, "CropImage"

    const-string v10, "Broadcast MEDIA_THUMBWORKER_SUSPEND"

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    const v7, 0x7f080008

    invoke-virtual {p0, v7}, Lcom/cooliris/media/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/cooliris/media/CropImageView;

    iput-object v7, p0, Lcom/cooliris/media/CropImage;->mImageView:Lcom/cooliris/media/CropImageView;

    .line 387
    iget-object v7, p0, Lcom/cooliris/media/CropImage;->mImageView:Lcom/cooliris/media/CropImageView;

    const v10, 0x7f08000e

    invoke-virtual {p0, v10}, Lcom/cooliris/media/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/cooliris/media/CropImageView;->setButtonsLayout(Landroid/view/View;)V

    .line 389
    invoke-virtual {p0}, Lcom/cooliris/media/CropImage;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f060079

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    sput-object v7, Lcom/cooliris/media/CropImage;->mToast:Landroid/widget/Toast;

    .line 392
    invoke-virtual {p0}, Lcom/cooliris/media/CropImage;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f0600a1

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    sput-object v7, Lcom/cooliris/media/CropImage;->mToast_Unable_Crop:Landroid/widget/Toast;

    .line 395
    const-string v7, "com.cooliris.media"

    invoke-virtual {p0, v7, v9}, Lcom/cooliris/media/CropImage;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 396
    .local v6, settings:Landroid/content/SharedPreferences;
    const-string v7, "LockScreenSave"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/cooliris/media/CropImage;->bLockScreen:Z

    .line 398
    invoke-direct {p0}, Lcom/cooliris/media/CropImage;->setSaveBtnListener()V

    .line 399
    invoke-direct {p0}, Lcom/cooliris/media/CropImage;->setDiscardBtnListener()V

    .line 401
    invoke-virtual {p0}, Lcom/cooliris/media/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 402
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 404
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_12c

    .line 405
    const-string v7, "circleCrop"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_b0

    .line 406
    iput-boolean v8, p0, Lcom/cooliris/media/CropImage;->mCircleCrop:Z

    .line 407
    iput v8, p0, Lcom/cooliris/media/CropImage;->mAspectX:I

    .line 408
    iput v8, p0, Lcom/cooliris/media/CropImage;->mAspectY:I

    .line 410
    :cond_b0
    const-string v7, "output"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    iput-object v7, p0, Lcom/cooliris/media/CropImage;->mSaveUri:Landroid/net/Uri;

    .line 411
    iget-object v7, p0, Lcom/cooliris/media/CropImage;->mSaveUri:Landroid/net/Uri;

    if-eqz v7, :cond_cc

    .line 412
    const-string v7, "outputFormat"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 413
    .local v5, outputFormatString:Ljava/lang/String;
    if-eqz v5, :cond_cc

    .line 414
    invoke-static {v5}, Landroid/graphics/Bitmap$CompressFormat;->valueOf(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v7

    iput-object v7, p0, Lcom/cooliris/media/CropImage;->mOutputFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 417
    .end local v5           #outputFormatString:Ljava/lang/String;
    :cond_cc
    const-string v7, "data"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    iput-object v7, p0, Lcom/cooliris/media/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 418
    const-string v7, "aspectX"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/cooliris/media/CropImage;->mAspectX:I

    .line 419
    const-string v7, "aspectY"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/cooliris/media/CropImage;->mAspectY:I

    .line 420
    const-string v7, "outputX"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/cooliris/media/CropImage;->mOutputX:I

    .line 421
    const-string v7, "outputY"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/cooliris/media/CropImage;->mOutputY:I

    .line 422
    const-string v7, "scale"

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/cooliris/media/CropImage;->mScale:Z

    .line 423
    const-string v7, "scaleUpIfNeeded"

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/cooliris/media/CropImage;->mScaleUp:Z

    .line 424
    const-string v7, "noFaceDetection"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_13f

    const-string v7, "noFaceDetection"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_13d

    move v7, v8

    :goto_117
    iput-boolean v7, p0, Lcom/cooliris/media/CropImage;->mDoFaceDetection:Z

    .line 428
    iget-boolean v7, p0, Lcom/cooliris/media/CropImage;->mDoFaceDetection:Z

    if-ne v7, v8, :cond_12c

    iget v7, p0, Lcom/cooliris/media/CropImage;->mAspectX:I

    iget v10, p0, Lcom/cooliris/media/CropImage;->mAspectY:I

    if-eq v7, v10, :cond_12c

    .line 429
    iget v7, p0, Lcom/cooliris/media/CropImage;->mAspectX:I

    iget v10, p0, Lcom/cooliris/media/CropImage;->mAspectY:I

    div-int/2addr v7, v10

    if-eq v7, v8, :cond_141

    :goto_12a
    iput-boolean v8, p0, Lcom/cooliris/media/CropImage;->mDoFaceDetection:Z

    .line 432
    :cond_12c
    iget-object v7, p0, Lcom/cooliris/media/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v7, :cond_143

    .line 433
    invoke-direct {p0, v2}, Lcom/cooliris/media/CropImage;->loadBitmap(Landroid/content/Intent;)V

    .line 439
    :goto_133
    invoke-direct {p0}, Lcom/cooliris/media/CropImage;->isHomeScreen()Z

    move-result v7

    if-eqz v7, :cond_13c

    .line 440
    invoke-direct {p0}, Lcom/cooliris/media/CropImage;->initHomeScreenUI()V

    .line 445
    :cond_13c
    return-void

    :cond_13d
    move v7, v9

    .line 424
    goto :goto_117

    :cond_13f
    move v7, v8

    goto :goto_117

    :cond_141
    move v8, v9

    .line 429
    goto :goto_12a

    .line 435
    :cond_143
    iget-object v7, p0, Lcom/cooliris/media/CropImage;->mImageLoadHandler:Landroid/os/Handler;

    invoke-virtual {v7}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    .line 436
    .local v4, msg:Landroid/os/Message;
    iget-object v7, p0, Lcom/cooliris/media/CropImage;->mImageLoadHandler:Landroid/os/Handler;

    invoke-virtual {v7, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_133
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 1188
    iget-object v0, p0, Lcom/cooliris/media/CropImage;->mApp:Lcom/cooliris/app/App;

    invoke-virtual {v0}, Lcom/cooliris/app/App;->shutdown()V

    .line 1189
    iget-object v0, p0, Lcom/cooliris/media/CropImage;->mLocaleReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/cooliris/media/CropImage;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1190
    invoke-super {p0}, Lcom/cooliris/media/MonitoredActivity;->onDestroy()V

    .line 1191
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 1181
    invoke-super {p0}, Lcom/cooliris/media/MonitoredActivity;->onPause()V

    .line 1182
    invoke-static {}, Lcom/cooliris/media/BitmapManager;->instance()Lcom/cooliris/media/BitmapManager;

    move-result-object v0

    iget-object v1, p0, Lcom/cooliris/media/CropImage;->mDecodingThreads:Lcom/cooliris/media/BitmapManager$ThreadSet;

    invoke-virtual {v0, v1}, Lcom/cooliris/media/BitmapManager;->cancelThreadDecoding(Lcom/cooliris/media/BitmapManager$ThreadSet;)V

    .line 1183
    iget-object v0, p0, Lcom/cooliris/media/CropImage;->mApp:Lcom/cooliris/app/App;

    invoke-virtual {v0}, Lcom/cooliris/app/App;->onPause()V

    .line 1184
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 1175
    invoke-super {p0}, Lcom/cooliris/media/MonitoredActivity;->onResume()V

    .line 1176
    iget-object v0, p0, Lcom/cooliris/media/CropImage;->mApp:Lcom/cooliris/app/App;

    invoke-virtual {v0}, Lcom/cooliris/app/App;->onResume()V

    .line 1177
    return-void
.end method
