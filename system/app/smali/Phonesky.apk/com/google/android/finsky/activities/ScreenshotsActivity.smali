.class public Lcom/google/android/finsky/activities/ScreenshotsActivity;
.super Landroid/app/Activity;
.source "ScreenshotsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/activities/ScreenshotsActivity$ImagePagerAdapter;,
        Lcom/google/android/finsky/activities/ScreenshotsActivity$ImageEntry;
    }
.end annotation


# instance fields
.field private final mAdapter:Lcom/google/android/finsky/activities/ScreenshotsActivity$ImagePagerAdapter;

.field private mContext:Landroid/content/Context;

.field private mDocument:Lcom/google/android/finsky/api/model/Document;

.field private final mImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/activities/ScreenshotsActivity$ImageEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxImageSize:I

.field private mPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 141
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/ScreenshotsActivity;->mImages:Ljava/util/List;

    .line 142
    new-instance v0, Lcom/google/android/finsky/activities/ScreenshotsActivity$ImagePagerAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/finsky/activities/ScreenshotsActivity$ImagePagerAdapter;-><init>(Lcom/google/android/finsky/activities/ScreenshotsActivity;Lcom/google/android/finsky/activities/ScreenshotsActivity$1;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/ScreenshotsActivity;->mAdapter:Lcom/google/android/finsky/activities/ScreenshotsActivity$ImagePagerAdapter;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/ScreenshotsActivity;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/finsky/activities/ScreenshotsActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/activities/ScreenshotsActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/google/android/finsky/activities/ScreenshotsActivity;->mMaxImageSize:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/activities/ScreenshotsActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ScreenshotsActivity;->rotateActivityForVisibleImage()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/finsky/activities/ScreenshotsActivity;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/finsky/activities/ScreenshotsActivity;->mImages:Ljava/util/List;

    return-object v0
.end method

.method private buildImageList(Ljava/util/List;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$Image;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 204
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Doc$Image;>;"
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ScreenshotsActivity;->cleanupImageEntries()V

    .line 207
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ScreenshotsActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 208
    .local v3, retained:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/activities/ScreenshotsActivity$ImageEntry;>;"
    if-eqz v3, :cond_17

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_17

    .line 210
    iget-object v4, p0, Lcom/google/android/finsky/activities/ScreenshotsActivity;->mImages:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 218
    :cond_16
    return-void

    .line 214
    :cond_17
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/Doc$Image;

    .line 215
    .local v1, image:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    new-instance v2, Lcom/google/android/finsky/activities/ScreenshotsActivity$ImageEntry;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v4}, Lcom/google/android/finsky/activities/ScreenshotsActivity$ImageEntry;-><init>(Lcom/google/android/finsky/activities/ScreenshotsActivity;Ljava/lang/String;)V

    .line 216
    .local v2, newEntry:Lcom/google/android/finsky/activities/ScreenshotsActivity$ImageEntry;
    iget-object v4, p0, Lcom/google/android/finsky/activities/ScreenshotsActivity;->mImages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b
.end method

.method private cleanupImageEntries()V
    .registers 4

    .prologue
    .line 228
    iget-object v2, p0, Lcom/google/android/finsky/activities/ScreenshotsActivity;->mImages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/activities/ScreenshotsActivity$ImageEntry;

    .line 229
    .local v0, entry:Lcom/google/android/finsky/activities/ScreenshotsActivity$ImageEntry;
    invoke-virtual {v0}, Lcom/google/android/finsky/activities/ScreenshotsActivity$ImageEntry;->unload()V

    goto :goto_6

    .line 231
    .end local v0           #entry:Lcom/google/android/finsky/activities/ScreenshotsActivity$ImageEntry;
    :cond_16
    iget-object v2, p0, Lcom/google/android/finsky/activities/ScreenshotsActivity;->mImages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 232
    return-void
.end method

.method private moveCurrentPosition(I)V
    .registers 4
    .parameter "offset"

    .prologue
    .line 221
    if-ltz p1, :cond_a

    iget-object v0, p0, Lcom/google/android/finsky/activities/ScreenshotsActivity;->mImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_b

    .line 225
    :cond_a
    :goto_a
    return-void

    .line 224
    :cond_b
    iget-object v0, p0, Lcom/google/android/finsky/activities/ScreenshotsActivity;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/google/android/finsky/activities/ScreenshotsActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_a
.end method

.method private rotateActivityForVisibleImage()V
    .registers 8

    .prologue
    .line 235
    iget-object v5, p0, Lcom/google/android/finsky/activities/ScreenshotsActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v3

    .line 236
    .local v3, item:I
    if-ltz v3, :cond_10

    iget-object v5, p0, Lcom/google/android/finsky/activities/ScreenshotsActivity;->mImages:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v3, v5, :cond_11

    .line 255
    :cond_10
    :goto_10
    return-void

    .line 240
    :cond_11
    iget-object v5, p0, Lcom/google/android/finsky/activities/ScreenshotsActivity;->mImages:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/activities/ScreenshotsActivity$ImageEntry;

    .line 241
    .local v2, entry:Lcom/google/android/finsky/activities/ScreenshotsActivity$ImageEntry;
    #calls: Lcom/google/android/finsky/activities/ScreenshotsActivity$ImageEntry;->getBitmap()Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/google/android/finsky/activities/ScreenshotsActivity$ImageEntry;->access$600(Lcom/google/android/finsky/activities/ScreenshotsActivity$ImageEntry;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 243
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_10

    .line 247
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-le v5, v6, :cond_34

    const/4 v1, 0x0

    .line 250
    .local v1, bitmapOrientation:I
    :goto_2a
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ScreenshotsActivity;->getRequestedOrientation()I

    move-result v4

    .line 252
    .local v4, screenOrientation:I
    if-eq v1, v4, :cond_10

    .line 253
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/ScreenshotsActivity;->setRequestedOrientation(I)V

    goto :goto_10

    .line 247
    .end local v1           #bitmapOrientation:I
    .end local v4           #screenOrientation:I
    :cond_34
    const/4 v1, 0x1

    goto :goto_2a
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 151
    const v0, 0x7f0400b3

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/ScreenshotsActivity;->setContentView(I)V

    .line 152
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 153
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/ScreenshotsActivity;->mContext:Landroid/content/Context;

    .line 154
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ScreenshotsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "finsky.ScreenshotsFragment.document"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    iput-object v0, p0, Lcom/google/android/finsky/activities/ScreenshotsActivity;->mDocument:Lcom/google/android/finsky/api/model/Document;

    .line 155
    const v0, 0x7f080182

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/ScreenshotsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/google/android/finsky/activities/ScreenshotsActivity;->mPager:Landroid/support/v4/view/ViewPager;

    .line 156
    iget-object v0, p0, Lcom/google/android/finsky/activities/ScreenshotsActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/ScreenshotsActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/activities/ScreenshotsActivity;->mMaxImageSize:I

    .line 157
    iget-object v0, p0, Lcom/google/android/finsky/activities/ScreenshotsActivity;->mDocument:Lcom/google/android/finsky/api/model/Document;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/Document;->getImages(I)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/ScreenshotsActivity;->buildImageList(Ljava/util/List;)V

    .line 158
    iget-object v0, p0, Lcom/google/android/finsky/activities/ScreenshotsActivity;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/google/android/finsky/activities/ScreenshotsActivity;->mAdapter:Lcom/google/android/finsky/activities/ScreenshotsActivity$ImagePagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 160
    iget-object v0, p0, Lcom/google/android/finsky/activities/ScreenshotsActivity;->mPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/google/android/finsky/activities/ScreenshotsActivity$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/ScreenshotsActivity$1;-><init>(Lcom/google/android/finsky/activities/ScreenshotsActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 176
    if-nez p1, :cond_67

    .line 179
    iget-object v0, p0, Lcom/google/android/finsky/activities/ScreenshotsActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ScreenshotsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "finsky.ScreenshotsFragment.selectedIndex"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 182
    :cond_67
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ScreenshotsActivity;->rotateActivityForVisibleImage()V

    .line 183
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 259
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ScreenshotsActivity;->cleanupImageEntries()V

    .line 260
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 261
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 192
    packed-switch p1, :pswitch_data_12

    .line 200
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_8
    return v0

    .line 194
    :pswitch_9
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/google/android/finsky/activities/ScreenshotsActivity;->moveCurrentPosition(I)V

    goto :goto_8

    .line 197
    :pswitch_e
    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/ScreenshotsActivity;->moveCurrentPosition(I)V

    goto :goto_8

    .line 192
    :pswitch_data_12
    .packed-switch 0x15
        :pswitch_9
        :pswitch_e
    .end packed-switch
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/android/finsky/activities/ScreenshotsActivity;->mImages:Ljava/util/List;

    return-object v0
.end method
