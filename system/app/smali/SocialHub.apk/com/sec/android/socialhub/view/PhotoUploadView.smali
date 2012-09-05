.class public Lcom/sec/android/socialhub/view/PhotoUploadView;
.super Landroid/widget/LinearLayout;
.source "PhotoUploadView.java"

# interfaces
.implements Lcom/sec/android/socialhub/image/RemoteImageLoadTask$ILoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/view/PhotoUploadView$PhotoUploadViewWrapper;
    }
.end annotation


# static fields
.field public static PHOTO_CONTENT_TEXT:Ljava/lang/String;

.field public static PHOTO_REQUEST_CODE:Ljava/lang/String;

.field public static PHOTO_RESIZE_BITMAP_PATH:Ljava/lang/String;

.field public static PHOTO_VIEW_MODE:Ljava/lang/String;

.field public static VIDEO_FILE_PATH:Ljava/lang/String;

.field public static VIDEO_THUMB_NAIL:Ljava/lang/String;


# instance fields
.field public ResizeBitmapfile:Ljava/io/File;

.field private bIsSelectedImage:Z

.field private mContext:Landroid/content/Context;

.field private mDialog:Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog;

.field private mFileName:Ljava/lang/String;

.field private mFilePath:Ljava/io/File;

.field private mImageLoadListener:Lcom/sec/android/socialhub/image/RemoteImageLoadTask$ILoadCompleteListener;

.field private mLoading:Ljava/lang/Runnable;

.field private mRequestCode:I

.field public mViewWrapper:Lcom/sec/android/socialhub/view/PhotoUploadView$PhotoUploadViewWrapper;

.field private uriGalleryImage:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    const-string v0, "PhotoViewMode"

    sput-object v0, Lcom/sec/android/socialhub/view/PhotoUploadView;->PHOTO_VIEW_MODE:Ljava/lang/String;

    .line 61
    const-string v0, "PhotoContent"

    sput-object v0, Lcom/sec/android/socialhub/view/PhotoUploadView;->PHOTO_CONTENT_TEXT:Ljava/lang/String;

    .line 66
    const-string v0, "PhotoRequestCode"

    sput-object v0, Lcom/sec/android/socialhub/view/PhotoUploadView;->PHOTO_REQUEST_CODE:Ljava/lang/String;

    .line 71
    const-string v0, "PhotoResizeBitmap"

    sput-object v0, Lcom/sec/android/socialhub/view/PhotoUploadView;->PHOTO_RESIZE_BITMAP_PATH:Ljava/lang/String;

    .line 76
    const-string v0, "VideoThumbNail"

    sput-object v0, Lcom/sec/android/socialhub/view/PhotoUploadView;->VIDEO_THUMB_NAIL:Ljava/lang/String;

    .line 81
    const-string v0, "VideoFilePath"

    sput-object v0, Lcom/sec/android/socialhub/view/PhotoUploadView;->VIDEO_FILE_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 36
    iput-object v1, p0, Lcom/sec/android/socialhub/view/PhotoUploadView;->ResizeBitmapfile:Ljava/io/File;

    .line 37
    iput-object v1, p0, Lcom/sec/android/socialhub/view/PhotoUploadView;->uriGalleryImage:Landroid/net/Uri;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/view/PhotoUploadView;->bIsSelectedImage:Z

    .line 49
    iput-object v1, p0, Lcom/sec/android/socialhub/view/PhotoUploadView;->mImageLoadListener:Lcom/sec/android/socialhub/image/RemoteImageLoadTask$ILoadCompleteListener;

    .line 605
    new-instance v0, Lcom/sec/android/socialhub/view/PhotoUploadView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/view/PhotoUploadView$2;-><init>(Lcom/sec/android/socialhub/view/PhotoUploadView;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/view/PhotoUploadView;->mLoading:Ljava/lang/Runnable;

    .line 93
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/view/PhotoUploadView;->initialize(Landroid/content/Context;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    iput-object v1, p0, Lcom/sec/android/socialhub/view/PhotoUploadView;->ResizeBitmapfile:Ljava/io/File;

    .line 37
    iput-object v1, p0, Lcom/sec/android/socialhub/view/PhotoUploadView;->uriGalleryImage:Landroid/net/Uri;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/view/PhotoUploadView;->bIsSelectedImage:Z

    .line 49
    iput-object v1, p0, Lcom/sec/android/socialhub/view/PhotoUploadView;->mImageLoadListener:Lcom/sec/android/socialhub/image/RemoteImageLoadTask$ILoadCompleteListener;

    .line 605
    new-instance v0, Lcom/sec/android/socialhub/view/PhotoUploadView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/view/PhotoUploadView$2;-><init>(Lcom/sec/android/socialhub/view/PhotoUploadView;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/view/PhotoUploadView;->mLoading:Ljava/lang/Runnable;

    .line 99
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/view/PhotoUploadView;->initialize(Landroid/content/Context;)V

    .line 100
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/socialhub/view/PhotoUploadView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/sec/android/socialhub/view/PhotoUploadView;->bIsSelectedImage:Z

    return v0
.end method

.method static synthetic access$102(Lcom/sec/android/socialhub/view/PhotoUploadView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/sec/android/socialhub/view/PhotoUploadView;->bIsSelectedImage:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/socialhub/view/PhotoUploadView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/socialhub/view/PhotoUploadView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/socialhub/view/PhotoUploadView;)Lcom/sec/android/socialhub/image/RemoteImageLoadTask$ILoadCompleteListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/socialhub/view/PhotoUploadView;->mImageLoadListener:Lcom/sec/android/socialhub/image/RemoteImageLoadTask$ILoadCompleteListener;

    return-object v0
.end method

.method private initialize(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    const/4 v4, -0x1

    .line 194
    iput-object p1, p0, Lcom/sec/android/socialhub/view/PhotoUploadView;->mContext:Landroid/content/Context;

    .line 195
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 196
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030035

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 197
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0, v0, v4, v4}, Lcom/sec/android/socialhub/view/PhotoUploadView;->addView(Landroid/view/View;II)V

    .line 198
    new-instance v2, Lcom/sec/android/socialhub/view/PhotoUploadView$PhotoUploadViewWrapper;

    invoke-direct {v2, p0, p0}, Lcom/sec/android/socialhub/view/PhotoUploadView$PhotoUploadViewWrapper;-><init>(Lcom/sec/android/socialhub/view/PhotoUploadView;Landroid/view/View;)V

    iput-object v2, p0, Lcom/sec/android/socialhub/view/PhotoUploadView;->mViewWrapper:Lcom/sec/android/socialhub/view/PhotoUploadView$PhotoUploadViewWrapper;

    .line 199
    return-void
.end method


# virtual methods
.method protected createNewFile(Ljava/lang/String;)Ljava/io/File;
    .registers 5
    .parameter "path"

    .prologue
    .line 463
    const/4 v0, 0x0

    .line 465
    .local v0, file:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    .end local v0           #file:Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/socialhub/view/PhotoUploadView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/socialhub/util/SocialHubFile;->getApplicationFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/sec/android/socialhub/view/PhotoUploadView;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 467
    .restart local v0       #file:Ljava/io/File;
    return-object v0
.end method

.method public getContentText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/sec/android/socialhub/view/PhotoUploadView;->mViewWrapper:Lcom/sec/android/socialhub/view/PhotoUploadView$PhotoUploadViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/view/PhotoUploadView$PhotoUploadViewWrapper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDialog()Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog;
    .registers 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/sec/android/socialhub/view/PhotoUploadView;->mDialog:Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog;

    return-object v0
.end method

.method public getEditText()Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/sec/android/socialhub/view/PhotoUploadView;->mViewWrapper:Lcom/sec/android/socialhub/view/PhotoUploadView$PhotoUploadViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/view/PhotoUploadView$PhotoUploadViewWrapper;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/sec/android/socialhub/view/PhotoUploadView;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method protected getFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "path"

    .prologue
    .line 472
    invoke-static {p1}, Lcom/sec/android/socialhub/util/SocialHubTextUtil;->getFileNameByString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 474
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_f

    .line 476
    const-string v1, "capture_picture.jpg"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 480
    .end local v0           #str:Ljava/lang/String;
    :goto_e
    return-object v0

    .restart local v0       #str:Ljava/lang/String;
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "upload_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public getFilePath()Ljava/io/File;
    .registers 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/sec/android/socialhub/view/PhotoUploadView;->mFilePath:Ljava/io/File;

    return-object v0
.end method

.method public getUploadMode()I
    .registers 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/sec/android/socialhub/view/PhotoUploadView;->mViewWrapper:Lcom/sec/android/socialhub/view/PhotoUploadView$PhotoUploadViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/view/PhotoUploadView$PhotoUploadViewWrapper;->mVideoIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_d

    .line 210
    const/16 v0, 0x11

    .line 214
    :goto_c
    return v0

    :cond_d
    const/16 v0, 0x10

    goto :goto_c
.end method

.method public isImageLoading()Z
    .registers 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/sec/android/socialhub/view/PhotoUploadView;->mViewWrapper:Lcom/sec/android/socialhub/view/PhotoUploadView$PhotoUploadViewWrapper;

    #getter for: Lcom/sec/android/socialhub/view/PhotoUploadView$PhotoUploadViewWrapper;->bIsLoading:Z
    invoke-static {v0}, Lcom/sec/android/socialhub/view/PhotoUploadView$PhotoUploadViewWrapper;->access$000(Lcom/sec/android/socialhub/view/PhotoUploadView$PhotoUploadViewWrapper;)Z

    move-result v0

    return v0
.end method

.method public isSelectedImage()Z
    .registers 2

    .prologue
    .line 264
    iget-boolean v0, p0, Lcom/sec/android/socialhub/view/PhotoUploadView;->bIsSelectedImage:Z

    return v0
.end method

.method public onChangeViewMode(Z)V
    .registers 3
    .parameter "bImage"

    .prologue
    .line 620
    iget-object v0, p0, Lcom/sec/android/socialhub/view/PhotoUploadView;->mImageLoadListener:Lcom/sec/android/socialhub/image/RemoteImageLoadTask$ILoadCompleteListener;

    if-eqz v0, :cond_9

    .line 622
    iget-object v0, p0, Lcom/sec/android/socialhub/view/PhotoUploadView;->mImageLoadListener:Lcom/sec/android/socialhub/image/RemoteImageLoadTask$ILoadCompleteListener;

    invoke-interface {v0, p1}, Lcom/sec/android/socialhub/image/RemoteImageLoadTask$ILoadCompleteListener;->onChangeViewMode(Z)V

    .line 624
    :cond_9
    return-void
.end method

.method public onLoadCompleted(Lcom/sec/android/socialhub/image/RemoteImageInfo;ZI)V
    .registers 10
    .parameter "info"
    .parameter "bSuccess"
    .parameter "errorResource"

    .prologue
    .line 558
    const-string v3, "PhotoUploadView"

    const-string v4, "onLoadCompleted()"

    const-string v5, ""

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    move-object v2, p1

    .line 561
    .local v2, t_info:Lcom/sec/android/socialhub/image/RemoteImageInfo;
    move v0, p2

    .line 562
    .local v0, t_bSuccess:Z
    move v1, p3

    .line 564
    .local v1, t_errorResource:I
    new-instance v3, Lcom/sec/android/socialhub/view/PhotoUploadView$1;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/sec/android/socialhub/view/PhotoUploadView$1;-><init>(Lcom/sec/android/socialhub/view/PhotoUploadView;ZILcom/sec/android/socialhub/image/RemoteImageInfo;)V

    invoke-virtual {p0, v3}, Lcom/sec/android/socialhub/view/PhotoUploadView;->post(Ljava/lang/Runnable;)Z

    .line 586
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/sec/android/socialhub/view/PhotoUploadView;->bIsSelectedImage:Z

    if-eqz v0, :cond_42

    .line 106
    sget-object v0, Lcom/sec/android/socialhub/view/PhotoUploadView;->PHOTO_VIEW_MODE:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 107
    sget-object v0, Lcom/sec/android/socialhub/view/PhotoUploadView;->PHOTO_CONTENT_TEXT:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/socialhub/view/PhotoUploadView;->getContentText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    sget-object v0, Lcom/sec/android/socialhub/view/PhotoUploadView;->PHOTO_REQUEST_CODE:Ljava/lang/String;

    iget v1, p0, Lcom/sec/android/socialhub/view/PhotoUploadView;->mRequestCode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 110
    iget v0, p0, Lcom/sec/android/socialhub/view/PhotoUploadView;->mRequestCode:I

    packed-switch v0, :pswitch_data_4a

    .line 122
    sget-object v0, Lcom/sec/android/socialhub/view/PhotoUploadView;->PHOTO_RESIZE_BITMAP_PATH:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/socialhub/view/PhotoUploadView;->ResizeBitmapfile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :goto_2a
    return-void

    .line 118
    :pswitch_2b
    sget-object v0, Lcom/sec/android/socialhub/view/PhotoUploadView;->VIDEO_THUMB_NAIL:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/socialhub/view/PhotoUploadView;->mViewWrapper:Lcom/sec/android/socialhub/view/PhotoUploadView$PhotoUploadViewWrapper;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/view/PhotoUploadView$PhotoUploadViewWrapper;->getThumbnailImage()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 119
    sget-object v0, Lcom/sec/android/socialhub/view/PhotoUploadView;->VIDEO_FILE_PATH:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/socialhub/view/PhotoUploadView;->mFilePath:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2a

    .line 129
    :cond_42
    sget-object v0, Lcom/sec/android/socialhub/view/PhotoUploadView;->PHOTO_VIEW_MODE:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_2a

    .line 110
    nop

    :pswitch_data_4a
    .packed-switch 0xc
        :pswitch_2b
        :pswitch_2b
    .end packed-switch
.end method

.method public onStartLoad()V
    .registers 4

    .prologue
    .line 591
    const-string v0, "PhotoUploadView"

    const-string v1, "onStartLoad()"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    iget-object v0, p0, Lcom/sec/android/socialhub/view/PhotoUploadView;->uriGalleryImage:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 598
    iget-object v0, p0, Lcom/sec/android/socialhub/view/PhotoUploadView;->ResizeBitmapfile:Ljava/io/File;

    if-eqz v0, :cond_20

    .line 599
    iget-object v0, p0, Lcom/sec/android/socialhub/view/PhotoUploadView;->ResizeBitmapfile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 602
    :cond_20
    iget-object v0, p0, Lcom/sec/android/socialhub/view/PhotoUploadView;->mLoading:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/view/PhotoUploadView;->post(Ljava/lang/Runnable;)Z

    .line 603
    return-void
.end method

.method public setContentText(Ljava/lang/String;)V
    .registers 3
    .parameter "str"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/sec/android/socialhub/view/PhotoUploadView;->mViewWrapper:Lcom/sec/android/socialhub/view/PhotoUploadView$PhotoUploadViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/view/PhotoUploadView$PhotoUploadViewWrapper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 226
    return-void
.end method

.method public setDialog(Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog;)V
    .registers 2
    .parameter "dialog"

    .prologue
    .line 244
    iput-object p1, p0, Lcom/sec/android/socialhub/view/PhotoUploadView;->mDialog:Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog;

    .line 245
    return-void
.end method

.method public setHintText(Ljava/lang/String;)V
    .registers 3
    .parameter "str"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/sec/android/socialhub/view/PhotoUploadView;->mViewWrapper:Lcom/sec/android/socialhub/view/PhotoUploadView$PhotoUploadViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/view/PhotoUploadView$PhotoUploadViewWrapper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 235
    return-void
.end method

.method public setImageFromIntent(ILandroid/content/Intent;Landroid/content/ContentResolver;)V
    .registers 24
    .parameter "reqCode"
    .parameter "data"
    .parameter "cr"

    .prologue
    .line 290
    const/4 v2, 0x1

    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/socialhub/view/PhotoUploadView;->setSelectedImageState(Z)V

    .line 292
    const/4 v11, 0x0

    .line 294
    .local v11, bImage:Z
    const/4 v9, 0x0

    .line 295
    .local v9, SizeFile:Ljava/io/File;
    const/4 v8, 0x0

    .line 296
    .local v8, filesize:Ljava/lang/Long;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/socialhub/view/PhotoUploadView;->uriGalleryImage:Landroid/net/Uri;

    .line 297
    const/4 v15, 0x0

    .line 298
    .local v15, extras:Landroid/os/Bundle;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/socialhub/view/PhotoUploadView;->ResizeBitmapfile:Ljava/io/File;

    .line 299
    const/4 v10, 0x0

    .line 301
    .local v10, absoultePath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/view/PhotoUploadView;->mViewWrapper:Lcom/sec/android/socialhub/view/PhotoUploadView$PhotoUploadViewWrapper;

    invoke-virtual {v2}, Lcom/sec/android/socialhub/view/PhotoUploadView$PhotoUploadViewWrapper;->setImageMode()V

    .line 302
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/socialhub/view/PhotoUploadView;->mRequestCode:I

    .line 304
    packed-switch p1, :pswitch_data_2f2

    .line 425
    :cond_25
    :goto_25
    if-eqz v11, :cond_6a

    .line 427
    if-eqz v9, :cond_2df

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    :goto_2d
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/socialhub/view/PhotoUploadView;->createNewFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/socialhub/view/PhotoUploadView;->ResizeBitmapfile:Ljava/io/File;

    .line 429
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/view/PhotoUploadView;->uriGalleryImage:Landroid/net/Uri;

    if-eqz v2, :cond_2e2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/view/PhotoUploadView;->ResizeBitmapfile:Ljava/io/File;

    if-eqz v2, :cond_2e2

    .line 431
    new-instance v2, Lcom/sec/android/socialhub/image/RemoteImageLoadTask;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/socialhub/view/PhotoUploadView;->mContext:Landroid/content/Context;

    const/16 v5, 0x64

    const/16 v6, 0x64

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/socialhub/view/PhotoUploadView;->ResizeBitmapfile:Ljava/io/File;

    move-object/from16 v4, p0

    invoke-direct/range {v2 .. v8}, Lcom/sec/android/socialhub/image/RemoteImageLoadTask;-><init>(Landroid/content/Context;Lcom/sec/android/socialhub/image/RemoteImageLoadTask$ILoadCompleteListener;IILjava/io/File;Ljava/lang/Long;)V

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/net/Uri;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/socialhub/view/PhotoUploadView;->uriGalleryImage:Landroid/net/Uri;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/sec/android/socialhub/image/RemoteImageLoadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 432
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/view/PhotoUploadView;->mViewWrapper:Lcom/sec/android/socialhub/view/PhotoUploadView$PhotoUploadViewWrapper;

    invoke-virtual {v2}, Lcom/sec/android/socialhub/view/PhotoUploadView$PhotoUploadViewWrapper;->setImageMode()V

    .line 444
    :cond_6a
    :goto_6a
    const-string v2, "PhotoUploadView"

    const-string v3, "setImageFromIntent()"

    const-string v4, "=============<SelectedMediaInfo>============"

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    const-string v2, "PhotoUploadView"

    const-string v3, "setImageFromIntent()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reqCode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    const-string v2, "PhotoUploadView"

    const-string v3, "setImageFromIntent()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "galleryUri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/socialhub/view/PhotoUploadView;->uriGalleryImage:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    const-string v2, "PhotoUploadView"

    const-string v3, "setImageFromIntent()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "absolutePath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    const-string v2, "PhotoUploadView"

    const-string v3, "setImageFromIntent()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fileName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/socialhub/view/PhotoUploadView;->mFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    const-string v3, "PhotoUploadView"

    const-string v4, "setImageFromIntent()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fileSize = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/view/PhotoUploadView;->mFilePath:Ljava/io/File;

    if-eqz v2, :cond_2ee

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/view/PhotoUploadView;->mFilePath:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_106
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    const-string v2, "PhotoUploadView"

    const-string v3, "setImageFromIntent()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "filePath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/socialhub/view/PhotoUploadView;->mFilePath:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    const-string v2, "PhotoUploadView"

    const-string v3, "setImageFromIntent()"

    const-string v4, "============================================"

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    .end local v8           #filesize:Ljava/lang/Long;
    .end local v9           #SizeFile:Ljava/io/File;
    .end local v10           #absoultePath:Ljava/lang/String;
    .end local v11           #bImage:Z
    .end local v15           #extras:Landroid/os/Bundle;
    :goto_138
    return-void

    .line 308
    .restart local v8       #filesize:Ljava/lang/Long;
    .restart local v9       #SizeFile:Ljava/io/File;
    .restart local v10       #absoultePath:Ljava/lang/String;
    .restart local v11       #bImage:Z
    .restart local v15       #extras:Landroid/os/Bundle;
    :pswitch_139
    const/4 v11, 0x1

    .line 310
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/socialhub/view/PhotoUploadView;->uriGalleryImage:Landroid/net/Uri;

    .line 312
    new-instance v9, Ljava/io/File;

    .end local v9           #SizeFile:Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/view/PhotoUploadView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/socialhub/view/PhotoUploadView;->uriGalleryImage:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/sec/android/socialhub/util/SocialHubUtil;->getImagePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 313
    .restart local v9       #SizeFile:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 316
    goto/16 :goto_25

    .line 319
    :pswitch_15d
    const/4 v11, 0x1

    .line 321
    invoke-static {}, Lcom/sec/android/socialhub/dialog/PhotoDialogFactory$FacebookPhotoUploadDialog;->getTempFileUri()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/socialhub/view/PhotoUploadView;->uriGalleryImage:Landroid/net/Uri;

    .line 323
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/view/PhotoUploadView;->uriGalleryImage:Landroid/net/Uri;

    if-eqz v2, :cond_25

    .line 325
    new-instance v9, Ljava/io/File;

    .end local v9           #SizeFile:Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/view/PhotoUploadView;->uriGalleryImage:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 326
    .restart local v9       #SizeFile:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    goto/16 :goto_25

    .line 333
    :pswitch_183
    const/4 v11, 0x1

    .line 335
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v15

    .line 337
    if-eqz v15, :cond_25

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v15, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 339
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v15, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/socialhub/view/PhotoUploadView;->uriGalleryImage:Landroid/net/Uri;

    .line 344
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/view/PhotoUploadView;->uriGalleryImage:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1c5

    .line 345
    new-instance v9, Ljava/io/File;

    .end local v9           #SizeFile:Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/view/PhotoUploadView;->uriGalleryImage:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 349
    .restart local v9       #SizeFile:Ljava/io/File;
    :goto_1bb
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    goto/16 :goto_25

    .line 347
    :cond_1c5
    new-instance v9, Ljava/io/File;

    .end local v9           #SizeFile:Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/view/PhotoUploadView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/socialhub/view/PhotoUploadView;->uriGalleryImage:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/sec/android/socialhub/util/SocialHubUtil;->getImagePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v9       #SizeFile:Ljava/io/File;
    goto :goto_1bb

    .line 354
    :pswitch_1d7
    const/4 v11, 0x1

    .line 356
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v15

    .line 358
    if-eqz v15, :cond_25

    .line 360
    const-string v2, "uri"

    invoke-virtual {v15, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/socialhub/view/PhotoUploadView;->uriGalleryImage:Landroid/net/Uri;

    .line 361
    new-instance v9, Ljava/io/File;

    .end local v9           #SizeFile:Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/view/PhotoUploadView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/socialhub/view/PhotoUploadView;->uriGalleryImage:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/sec/android/socialhub/util/SocialHubUtil;->getImagePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 362
    .restart local v9       #SizeFile:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_204
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_204} :catch_287

    move-result-object v8

    goto/16 :goto_25

    .line 371
    :pswitch_207
    const/4 v11, 0x0

    .line 372
    const/4 v12, 0x0

    .line 373
    .local v12, bSuccess:Z
    const/4 v14, 0x0

    .line 375
    .local v14, errorCode:I
    const/16 v19, 0x0

    .line 379
    .local v19, thumbnail:Landroid/graphics/Bitmap;
    if-nez p2, :cond_297

    .line 381
    :try_start_20e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/view/PhotoUploadView;->mDialog:Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog;

    invoke-virtual {v2}, Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog;->getTakenUri()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/socialhub/view/PhotoUploadView;->uriGalleryImage:Landroid/net/Uri;

    .line 388
    :goto_21a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/view/PhotoUploadView;->uriGalleryImage:Landroid/net/Uri;

    if-eqz v2, :cond_26b

    .line 390
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/view/PhotoUploadView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/socialhub/view/PhotoUploadView;->uriGalleryImage:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/sec/android/socialhub/util/SocialHubUtil;->getVideoPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v10

    .line 392
    if-eqz v10, :cond_237

    .line 394
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/socialhub/view/PhotoUploadView;->mFilePath:Ljava/io/File;

    .line 396
    :cond_237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/view/PhotoUploadView;->mFilePath:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/socialhub/view/PhotoUploadView;->mFileName:Ljava/lang/String;

    .line 398
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/view/PhotoUploadView;->uriGalleryImage:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 399
    .local v16, file:I
    new-instance v18, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 400
    .local v18, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    move-object/from16 v0, v18

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 401
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/view/PhotoUploadView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move/from16 v0, v16

    int-to-long v3, v0

    const/4 v5, 0x1

    move-object/from16 v0, v18

    invoke-static {v2, v3, v4, v5, v0}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_26a
    .catchall {:try_start_20e .. :try_end_26a} :catchall_2c4
    .catch Ljava/lang/Exception; {:try_start_20e .. :try_end_26a} :catch_2a1

    move-result-object v19

    .line 403
    .end local v16           #file:I
    .end local v18           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_26b
    const/4 v12, 0x1

    .line 413
    :try_start_26c
    new-instance v17, Lcom/sec/android/socialhub/image/RemoteImageInfo;

    invoke-direct/range {v17 .. v17}, Lcom/sec/android/socialhub/image/RemoteImageInfo;-><init>()V

    .line 414
    .local v17, info:Lcom/sec/android/socialhub/image/RemoteImageInfo;
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/sec/android/socialhub/image/RemoteImageInfo;->previewImage:Landroid/graphics/Bitmap;

    .line 415
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/view/PhotoUploadView;->mViewWrapper:Lcom/sec/android/socialhub/view/PhotoUploadView$PhotoUploadViewWrapper;

    invoke-virtual {v2}, Lcom/sec/android/socialhub/view/PhotoUploadView$PhotoUploadViewWrapper;->setVideoMode()V

    .line 416
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v12, v14}, Lcom/sec/android/socialhub/view/PhotoUploadView;->onLoadCompleted(Lcom/sec/android/socialhub/image/RemoteImageInfo;ZI)V
    :try_end_285
    .catch Ljava/lang/Exception; {:try_start_26c .. :try_end_285} :catch_287

    goto/16 :goto_25

    .line 453
    .end local v8           #filesize:Ljava/lang/Long;
    .end local v9           #SizeFile:Ljava/io/File;
    .end local v10           #absoultePath:Ljava/lang/String;
    .end local v11           #bImage:Z
    .end local v12           #bSuccess:Z
    .end local v14           #errorCode:I
    .end local v15           #extras:Landroid/os/Bundle;
    .end local v17           #info:Lcom/sec/android/socialhub/image/RemoteImageInfo;
    .end local v19           #thumbnail:Landroid/graphics/Bitmap;
    :catch_287
    move-exception v13

    .line 455
    .local v13, e:Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    .line 456
    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0800c5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/android/socialhub/view/PhotoUploadView;->onLoadCompleted(Lcom/sec/android/socialhub/image/RemoteImageInfo;ZI)V

    goto/16 :goto_138

    .line 385
    .end local v13           #e:Ljava/lang/Exception;
    .restart local v8       #filesize:Ljava/lang/Long;
    .restart local v9       #SizeFile:Ljava/io/File;
    .restart local v10       #absoultePath:Ljava/lang/String;
    .restart local v11       #bImage:Z
    .restart local v12       #bSuccess:Z
    .restart local v14       #errorCode:I
    .restart local v15       #extras:Landroid/os/Bundle;
    .restart local v19       #thumbnail:Landroid/graphics/Bitmap;
    :cond_297
    :try_start_297
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/socialhub/view/PhotoUploadView;->uriGalleryImage:Landroid/net/Uri;
    :try_end_29f
    .catchall {:try_start_297 .. :try_end_29f} :catchall_2c4
    .catch Ljava/lang/Exception; {:try_start_297 .. :try_end_29f} :catch_2a1

    goto/16 :goto_21a

    .line 405
    :catch_2a1
    move-exception v13

    .line 407
    .restart local v13       #e:Ljava/lang/Exception;
    :try_start_2a2
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2a5
    .catchall {:try_start_2a2 .. :try_end_2a5} :catchall_2c4

    .line 408
    const/4 v12, 0x0

    .line 409
    const v14, 0x7f0800c5

    .line 413
    :try_start_2a9
    new-instance v17, Lcom/sec/android/socialhub/image/RemoteImageInfo;

    invoke-direct/range {v17 .. v17}, Lcom/sec/android/socialhub/image/RemoteImageInfo;-><init>()V

    .line 414
    .restart local v17       #info:Lcom/sec/android/socialhub/image/RemoteImageInfo;
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/sec/android/socialhub/image/RemoteImageInfo;->previewImage:Landroid/graphics/Bitmap;

    .line 415
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/view/PhotoUploadView;->mViewWrapper:Lcom/sec/android/socialhub/view/PhotoUploadView$PhotoUploadViewWrapper;

    invoke-virtual {v2}, Lcom/sec/android/socialhub/view/PhotoUploadView$PhotoUploadViewWrapper;->setVideoMode()V

    .line 416
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v12, v14}, Lcom/sec/android/socialhub/view/PhotoUploadView;->onLoadCompleted(Lcom/sec/android/socialhub/image/RemoteImageInfo;ZI)V

    goto/16 :goto_25

    .line 413
    .end local v13           #e:Ljava/lang/Exception;
    .end local v17           #info:Lcom/sec/android/socialhub/image/RemoteImageInfo;
    :catchall_2c4
    move-exception v2

    new-instance v17, Lcom/sec/android/socialhub/image/RemoteImageInfo;

    invoke-direct/range {v17 .. v17}, Lcom/sec/android/socialhub/image/RemoteImageInfo;-><init>()V

    .line 414
    .restart local v17       #info:Lcom/sec/android/socialhub/image/RemoteImageInfo;
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/sec/android/socialhub/image/RemoteImageInfo;->previewImage:Landroid/graphics/Bitmap;

    .line 415
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/socialhub/view/PhotoUploadView;->mViewWrapper:Lcom/sec/android/socialhub/view/PhotoUploadView$PhotoUploadViewWrapper;

    invoke-virtual {v3}, Lcom/sec/android/socialhub/view/PhotoUploadView$PhotoUploadViewWrapper;->setVideoMode()V

    .line 416
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v12, v14}, Lcom/sec/android/socialhub/view/PhotoUploadView;->onLoadCompleted(Lcom/sec/android/socialhub/image/RemoteImageInfo;ZI)V

    .line 417
    throw v2

    .line 427
    .end local v12           #bSuccess:Z
    .end local v14           #errorCode:I
    .end local v17           #info:Lcom/sec/android/socialhub/image/RemoteImageInfo;
    .end local v19           #thumbnail:Landroid/graphics/Bitmap;
    :cond_2df
    const/4 v2, 0x0

    goto/16 :goto_2d

    .line 436
    :cond_2e2
    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0800c5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/android/socialhub/view/PhotoUploadView;->onLoadCompleted(Lcom/sec/android/socialhub/image/RemoteImageInfo;ZI)V
    :try_end_2ec
    .catch Ljava/lang/Exception; {:try_start_2a9 .. :try_end_2ec} :catch_287

    goto/16 :goto_6a

    .line 449
    :cond_2ee
    const/4 v2, 0x0

    goto/16 :goto_106

    .line 304
    nop

    :pswitch_data_2f2
    .packed-switch 0xa
        :pswitch_139
        :pswitch_15d
        :pswitch_207
        :pswitch_207
        :pswitch_183
        :pswitch_1d7
    .end packed-switch
.end method

.method public setOnImageLoadCompleteListener(Lcom/sec/android/socialhub/image/RemoteImageLoadTask$ILoadCompleteListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 189
    iput-object p1, p0, Lcom/sec/android/socialhub/view/PhotoUploadView;->mImageLoadListener:Lcom/sec/android/socialhub/image/RemoteImageLoadTask$ILoadCompleteListener;

    .line 190
    return-void
.end method

.method public setSavedInstanceState(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    .line 135
    sget-object v3, Lcom/sec/android/socialhub/view/PhotoUploadView;->PHOTO_CONTENT_TEXT:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/android/socialhub/view/PhotoUploadView;->setContentText(Ljava/lang/String;)V

    .line 136
    sget-object v3, Lcom/sec/android/socialhub/view/PhotoUploadView;->PHOTO_REQUEST_CODE:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 138
    .local v2, reqCode:I
    new-instance v1, Lcom/sec/android/socialhub/image/RemoteImageInfo;

    invoke-direct {v1}, Lcom/sec/android/socialhub/image/RemoteImageInfo;-><init>()V

    .line 139
    .local v1, info:Lcom/sec/android/socialhub/image/RemoteImageInfo;
    const/4 v0, 0x0

    .line 141
    .local v0, file_path:Ljava/lang/String;
    packed-switch v2, :pswitch_data_c2

    .line 166
    iget-object v3, p0, Lcom/sec/android/socialhub/view/PhotoUploadView;->mViewWrapper:Lcom/sec/android/socialhub/view/PhotoUploadView$PhotoUploadViewWrapper;

    invoke-virtual {v3}, Lcom/sec/android/socialhub/view/PhotoUploadView$PhotoUploadViewWrapper;->setImageMode()V

    .line 172
    sget-object v3, Lcom/sec/android/socialhub/view/PhotoUploadView;->PHOTO_RESIZE_BITMAP_PATH:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/sec/android/socialhub/view/PhotoUploadView;->ResizeBitmapfile:Ljava/io/File;

    .line 175
    sget-object v3, Lcom/sec/android/socialhub/view/PhotoUploadView;->PHOTO_RESIZE_BITMAP_PATH:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v1, Lcom/sec/android/socialhub/image/RemoteImageInfo;->previewImage:Landroid/graphics/Bitmap;

    .line 180
    :cond_36
    :goto_36
    const-string v3, "PhotoUploadView"

    const-string v4, "setSavedInstanceState()"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reqCode - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v3, "PhotoUploadView"

    const-string v4, "setSavedInstanceState()"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v3, v4}, Lcom/sec/android/socialhub/view/PhotoUploadView;->onLoadCompleted(Lcom/sec/android/socialhub/image/RemoteImageInfo;ZI)V

    .line 184
    return-void

    .line 145
    :pswitch_70
    iget-object v3, p0, Lcom/sec/android/socialhub/view/PhotoUploadView;->mViewWrapper:Lcom/sec/android/socialhub/view/PhotoUploadView$PhotoUploadViewWrapper;

    invoke-virtual {v3}, Lcom/sec/android/socialhub/view/PhotoUploadView$PhotoUploadViewWrapper;->setVideoMode()V

    .line 147
    sget-object v3, Lcom/sec/android/socialhub/view/PhotoUploadView;->VIDEO_FILE_PATH:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/sec/android/socialhub/view/PhotoUploadView;->mFilePath:Ljava/io/File;

    .line 149
    iget-object v3, p0, Lcom/sec/android/socialhub/view/PhotoUploadView;->mFilePath:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/socialhub/view/PhotoUploadView;->mFileName:Ljava/lang/String;

    .line 151
    sget-object v3, Lcom/sec/android/socialhub/view/PhotoUploadView;->VIDEO_THUMB_NAIL:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    iput-object v3, v1, Lcom/sec/android/socialhub/image/RemoteImageInfo;->previewImage:Landroid/graphics/Bitmap;

    .line 153
    iget-object v3, v1, Lcom/sec/android/socialhub/image/RemoteImageInfo;->previewImage:Landroid/graphics/Bitmap;

    if-nez v3, :cond_36

    .line 155
    iget-object v3, p0, Lcom/sec/android/socialhub/view/PhotoUploadView;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/sec/android/socialhub/util/PictureUtil;->getVideoThumbnailFromPath(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v1, Lcom/sec/android/socialhub/image/RemoteImageInfo;->previewImage:Landroid/graphics/Bitmap;

    .line 157
    iget-object v3, v1, Lcom/sec/android/socialhub/image/RemoteImageInfo;->previewImage:Landroid/graphics/Bitmap;

    if-nez v3, :cond_36

    .line 159
    iget-object v3, p0, Lcom/sec/android/socialhub/view/PhotoUploadView;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/sec/android/socialhub/util/PictureUtil;->getVideoThumbnailFromPath(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v1, Lcom/sec/android/socialhub/image/RemoteImageInfo;->previewImage:Landroid/graphics/Bitmap;

    goto/16 :goto_36

    .line 141
    :pswitch_data_c2
    .packed-switch 0xc
        :pswitch_70
        :pswitch_70
    .end packed-switch
.end method

.method public setSelectedImageState(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 269
    iput-boolean p1, p0, Lcom/sec/android/socialhub/view/PhotoUploadView;->bIsSelectedImage:Z

    .line 270
    return-void
.end method
