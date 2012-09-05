.class public Lcom/google/android/apps/books/widget/BooksCarouselHomeView;
.super Lcom/google/android/apps/books/widget/BaseBooksHomeView;
.source "BooksCarouselHomeView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;
    }
.end annotation


# static fields
.field private static final LOGD:Z


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private final mAtlasRenderer:Lcom/google/android/apps/books/widget/AtlasRenderer;

.field private final mCarouselView:Lcom/google/android/apps/books/widget/BooksCarouselView;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/books/model/CarouselVolumeData;",
            ">;"
        }
    .end annotation
.end field

.field private final mDataLock:Ljava/lang/Object;

.field private final mHelper:Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;

.field private final mHomeController:Lcom/google/android/apps/books/widget/BooksHomeController;

.field private mLoadedVolumes:[Ljava/lang/String;

.field private mLongPressedVolumeId:Ljava/lang/String;

.field private final mUiThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 50
    const-string v0, "BooksCarouselHomeView"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->LOGD:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/books/widget/BooksHomeController;Landroid/view/View;Ljava/util/List;Z)V
    .registers 15
    .parameter "homeController"
    .parameter "view"
    .parameter
    .parameter "isDeviceConnected"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/books/widget/BooksHomeController;",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/books/model/CarouselVolumeData;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p3, data:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/books/model/CarouselVolumeData;>;"
    const/4 v2, 0x0

    const/16 v5, 0x100

    const/16 v9, 0x80

    const/4 v3, 0x0

    .line 75
    invoke-interface {p1}, Lcom/google/android/apps/books/widget/BooksHomeController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p4}, Lcom/google/android/apps/books/widget/BaseBooksHomeView;-><init>(Landroid/content/Context;Z)V

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mDataLock:Ljava/lang/Object;

    .line 77
    iput-object p1, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mHomeController:Lcom/google/android/apps/books/widget/BooksHomeController;

    .line 78
    if-eqz p3, :cond_28

    .line 79
    iget-object v4, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mDataLock:Ljava/lang/Object;

    monitor-enter v4

    .line 80
    :try_start_1b
    iput-object p3, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mData:Ljava/util/List;

    .line 81
    iget-object v0, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mLoadedVolumes:[Ljava/lang/String;

    .line 82
    monitor-exit v4
    :try_end_28
    .catchall {:try_start_1b .. :try_end_28} :catchall_7f

    .line 85
    :cond_28
    iget-object v0, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 87
    .local v7, res:Landroid/content/res/Resources;
    new-instance v0, Lcom/google/android/apps/books/widget/AtlasRenderer;

    invoke-direct {v0, v7, v5, v5}, Lcom/google/android/apps/books/widget/AtlasRenderer;-><init>(Landroid/content/res/Resources;II)V

    iput-object v0, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mAtlasRenderer:Lcom/google/android/apps/books/widget/AtlasRenderer;

    .line 89
    check-cast p2, Lcom/google/android/apps/books/widget/BooksCarouselView;

    .end local p2
    iput-object p2, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mCarouselView:Lcom/google/android/apps/books/widget/BooksCarouselView;

    .line 90
    new-instance v0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;

    iget-object v4, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mCarouselView:Lcom/google/android/apps/books/widget/BooksCarouselView;

    iget-object v8, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mAtlasRenderer:Lcom/google/android/apps/books/widget/AtlasRenderer;

    invoke-direct {v0, p0, v4, v5, v8}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;-><init>(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;Landroid/content/Context;Lcom/google/android/opengl/carousel/CarouselView;Lcom/google/android/apps/books/widget/AtlasRenderer;)V

    iput-object v0, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mHelper:Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;

    .line 92
    const v0, 0x7f020070

    invoke-static {v7, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 94
    .local v1, placeholder:Landroid/graphics/Bitmap;
    iget-object v8, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mCarouselView:Lcom/google/android/apps/books/widget/BooksCarouselView;

    iget-object v0, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mAtlasRenderer:Lcom/google/android/apps/books/widget/AtlasRenderer;

    move v4, v3

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/books/widget/AtlasRenderer;->render(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;ZZLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/google/android/apps/books/widget/BooksCarouselView;->setLoadingBitmap(Landroid/graphics/Bitmap;)V

    .line 98
    const v0, 0x7f020026

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, v9, v9}, Lcom/google/android/opengl/carousel/GL2Helper;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 100
    .local v6, glowingBorder:Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mCarouselView:Lcom/google/android/apps/books/widget/BooksCarouselView;

    invoke-virtual {v0, v6}, Lcom/google/android/apps/books/widget/BooksCarouselView;->setGlowingBitmap(Landroid/graphics/Bitmap;)V

    .line 102
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 104
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mUiThreadHandler:Landroid/os/Handler;

    .line 106
    iget-object v0, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mCarouselView:Lcom/google/android/apps/books/widget/BooksCarouselView;

    new-instance v2, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$1;

    invoke-direct {v2, p0}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$1;-><init>(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;)V

    invoke-virtual {v0, v2}, Lcom/google/android/apps/books/widget/BooksCarouselView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 114
    return-void

    .line 82
    .end local v1           #placeholder:Landroid/graphics/Bitmap;
    .end local v6           #glowingBorder:Landroid/graphics/Bitmap;
    .end local v7           #res:Landroid/content/res/Resources;
    .restart local p2
    :catchall_7f
    move-exception v0

    :try_start_80
    monitor-exit v4
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_7f

    throw v0
.end method

.method static synthetic access$000(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mLongPressedVolumeId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mLongPressedVolumeId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;)Lcom/google/android/apps/books/widget/BooksHomeController;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mHomeController:Lcom/google/android/apps/books/widget/BooksHomeController;

    return-object v0
.end method

.method static synthetic access$200()Z
    .registers 1

    .prologue
    .line 48
    sget-boolean v0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->LOGD:Z

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mDataLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mData:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;)[Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mLoadedVolumes:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;)Lcom/google/android/apps/books/widget/BooksCarouselView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mCarouselView:Lcom/google/android/apps/books/widget/BooksCarouselView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;)Landroid/accounts/Account;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mUiThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;)Lcom/google/android/apps/books/widget/AtlasRenderer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mAtlasRenderer:Lcom/google/android/apps/books/widget/AtlasRenderer;

    return-object v0
.end method

.method private invalidateDetailTexture(IZ)V
    .registers 4
    .parameter "slot"
    .parameter "eraseCurrent"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mCarouselView:Lcom/google/android/apps/books/widget/BooksCarouselView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/books/widget/BooksCarouselView;->invalidateDetailTexture(IZ)V

    .line 231
    return-void
.end method

.method private invalidateDetailTextures()V
    .registers 3

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mCarouselView:Lcom/google/android/apps/books/widget/BooksCarouselView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/widget/BooksCarouselView;->invalidateDetailTextures(Z)V

    .line 239
    return-void
.end method

.method private invalidateTexture(IZ)V
    .registers 4
    .parameter "slot"
    .parameter "eraseCurrent"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mCarouselView:Lcom/google/android/apps/books/widget/BooksCarouselView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/books/widget/BooksCarouselView;->invalidateTexture(IZ)V

    .line 227
    return-void
.end method

.method private invalidateTextures()V
    .registers 3

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mCarouselView:Lcom/google/android/apps/books/widget/BooksCarouselView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/widget/BooksCarouselView;->invalidateTextures(Z)V

    .line 235
    return-void
.end method


# virtual methods
.method public hide()V
    .registers 3

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mCarouselView:Lcom/google/android/apps/books/widget/BooksCarouselView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/apps/books/app/BooksActivity;->setViewOffscreen(Landroid/view/View;Z)V

    .line 124
    iget-object v0, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mCarouselView:Lcom/google/android/apps/books/widget/BooksCarouselView;

    invoke-virtual {v0}, Lcom/google/android/apps/books/widget/BooksCarouselView;->clearCoverCache()V

    .line 127
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->invalidateTextures()V

    .line 128
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->invalidateDetailTextures()V

    .line 129
    return-void
.end method

.method public moveToHome()V
    .registers 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mCarouselView:Lcom/google/android/apps/books/widget/BooksCarouselView;

    invoke-virtual {v0}, Lcom/google/android/apps/books/widget/BooksCarouselView;->rotateCarouselBackToOrigin()V

    .line 223
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mHelper:Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;

    invoke-virtual {v0}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->onDestroy()V

    .line 218
    return-void
.end method

.method public onDestroyView()V
    .registers 3

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mCarouselView:Lcom/google/android/apps/books/widget/BooksCarouselView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/widget/BooksCarouselView;->setCallback(Lcom/google/android/opengl/carousel/CarouselCallback;)V

    .line 212
    iget-object v0, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mHelper:Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;

    invoke-virtual {v0}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->onDestroy()V

    .line 213
    return-void
.end method

.method public onDeviceConnectionChanged(Z)V
    .registers 3
    .parameter "connected"

    .prologue
    .line 180
    invoke-super {p0, p1}, Lcom/google/android/apps/books/widget/BaseBooksHomeView;->onDeviceConnectionChanged(Z)V

    .line 181
    iget-object v0, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mCarouselView:Lcom/google/android/apps/books/widget/BooksCarouselView;

    invoke-virtual {v0}, Lcom/google/android/apps/books/widget/BooksCarouselView;->clearCoverCache()V

    .line 182
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->invalidateTextures()V

    .line 183
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mHelper:Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;

    invoke-virtual {v0}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->onPause()V

    .line 198
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mHelper:Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;

    invoke-virtual {v0}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->onResume()V

    .line 203
    return-void
.end method

.method public refreshManageOfflineUi()V
    .registers 1

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->invalidateDetailTextures()V

    .line 188
    return-void
.end method

.method public setAccount(Landroid/accounts/Account;)V
    .registers 2
    .parameter "account"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mAccount:Landroid/accounts/Account;

    .line 134
    return-void
.end method

.method public setVolumeData(Ljava/util/List;)V
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/books/model/CarouselVolumeData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p1, data:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/books/model/CarouselVolumeData;>;"
    iget-object v4, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mDataLock:Ljava/lang/Object;

    monitor-enter v4

    .line 139
    :try_start_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 140
    .local v2, updatedSize:I
    iget-object v3, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mLoadedVolumes:[Ljava/lang/String;

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mLoadedVolumes:[Ljava/lang/String;

    array-length v3, v3

    if-eq v3, v2, :cond_14

    .line 141
    :cond_10
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mLoadedVolumes:[Ljava/lang/String;

    .line 147
    :cond_14
    iget-object v3, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mData:Ljava/util/List;

    if-eqz v3, :cond_45

    .line 148
    iget-object v3, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 149
    .local v0, commonSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_23
    if-ge v1, v0, :cond_46

    .line 150
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/books/model/CarouselVolumeData;

    iget-object v5, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mLoadedVolumes:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_42

    .line 151
    iget-object v3, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mLoadedVolumes:[Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v5, v3, v1

    .line 152
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->invalidateTexture(IZ)V

    .line 153
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->invalidateDetailTexture(IZ)V

    .line 149
    :cond_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 157
    .end local v0           #commonSize:I
    .end local v1           #i:I
    :cond_45
    const/4 v0, 0x0

    .line 160
    .restart local v0       #commonSize:I
    :cond_46
    iput-object p1, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mData:Ljava/util/List;

    .line 161
    iget-object v3, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mCarouselView:Lcom/google/android/apps/books/widget/BooksCarouselView;

    invoke-virtual {v3}, Lcom/google/android/apps/books/widget/BooksCarouselView;->getCardCount()I

    move-result v3

    if-eq v3, v2, :cond_55

    .line 166
    iget-object v3, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mCarouselView:Lcom/google/android/apps/books/widget/BooksCarouselView;

    invoke-virtual {v3, v2}, Lcom/google/android/apps/books/widget/BooksCarouselView;->createCards(I)V

    .line 170
    :cond_55
    move v1, v0

    .restart local v1       #i:I
    :goto_56
    if-ge v1, v2, :cond_68

    .line 171
    iget-object v3, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mLoadedVolumes:[Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v5, v3, v1

    .line 172
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->invalidateTexture(IZ)V

    .line 173
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->invalidateDetailTexture(IZ)V

    .line 170
    add-int/lit8 v1, v1, 0x1

    goto :goto_56

    .line 175
    :cond_68
    monitor-exit v4

    .line 176
    return-void

    .line 175
    .end local v0           #commonSize:I
    .end local v1           #i:I
    .end local v2           #updatedSize:I
    :catchall_6a
    move-exception v3

    monitor-exit v4
    :try_end_6c
    .catchall {:try_start_3 .. :try_end_6c} :catchall_6a

    throw v3
.end method

.method public show()V
    .registers 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mCarouselView:Lcom/google/android/apps/books/widget/BooksCarouselView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/apps/books/app/BooksActivity;->setViewOffscreen(Landroid/view/View;Z)V

    .line 119
    return-void
.end method

.method public toggleMakeAvailableOffline(I)V
    .registers 3
    .parameter "slot"

    .prologue
    .line 192
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->invalidateDetailTexture(IZ)V

    .line 193
    return-void
.end method
