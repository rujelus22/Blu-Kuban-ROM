.class public Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;
.super Landroid/app/Activity;
.source "Ui3dMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/samsung/stri/ui3dglobe/MotionDetector$MotionListener;
.implements Lcom/sec/android/app/clockpackage/worldclock/common/Switcher$OnSwitchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$ZoomChangedListener;,
        Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$TouchCityListener;,
        Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$RotationChangedListener;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static CITY_VIEW_COUNT:I

.field private static mTZPresentingCities:[I

.field static refreshcount:I


# instance fields
.field private bt_worldclock_fill_zoom:Landroid/widget/ImageView;

.field private isLandscape:Z

.field private mAlreadySelect:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public mBtnVisilityHandler:Landroid/os/Handler;

.field private mCities:[Lcom/sec/android/app/clockpackage/worldclock/City;

.field mCityCountrySel:Ljava/lang/String;

.field mCitySel:Landroid/graphics/Bitmap;

.field mCitySpot:Landroid/graphics/Bitmap;

.field mCityUniqueID:I

.field mContext:Landroid/content/Context;

.field public mDlgHandler:Landroid/os/Handler;

.field private mIndex:I

.field private mIsApollo:Z

.field private mIsBroadcastReceiverRegistered:Z

.field private mMotionDetector:Lcom/samsung/stri/ui3dglobe/MotionDetector;

.field mPaint:Landroid/graphics/Paint;

.field public mReleaseToast:Landroid/os/Handler;

.field private mShowListView:Landroid/widget/ImageButton;

.field private mStartTime:J

.field mSurfaceFrame:Landroid/widget/FrameLayout;

.field public mSwitcher_Handler:Landroid/os/Handler;

.field private mTmapDlg:Landroid/app/Dialog;

.field private mTzSwitcher:Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;

.field mWhere:Ljava/lang/String;

.field private mZoom_level:I

.field public m_bIsToUpdateTZBar:Z

.field private mbInitOnCreate:Z

.field private mbIsLocaleChanged:Z

.field private mbIsToRefreshContent:Z

.field private numCitiesInMenu:I

.field private zoomBack:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/16 v6, 0xd

    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 83
    const-class v0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_ce

    move v0, v1

    :goto_10
    sput-boolean v0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->$assertionsDisabled:Z

    .line 123
    const/16 v0, 0x19

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mTZPresentingCities:[I

    .line 125
    sget-object v0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mTZPresentingCities:[I

    const/16 v3, 0x2d

    aput v3, v0, v2

    .line 126
    sget-object v0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mTZPresentingCities:[I

    const/16 v3, 0x36

    aput v3, v0, v1

    .line 127
    sget-object v0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mTZPresentingCities:[I

    const/4 v1, 0x2

    const/16 v3, 0x4b

    aput v3, v0, v1

    .line 128
    sget-object v0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mTZPresentingCities:[I

    const/4 v1, 0x3

    const/16 v3, 0xa1

    aput v3, v0, v1

    .line 129
    sget-object v0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mTZPresentingCities:[I

    const/16 v1, 0xf8

    aput v1, v0, v4

    .line 130
    sget-object v0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mTZPresentingCities:[I

    const/4 v1, 0x5

    const/16 v3, 0x61

    aput v3, v0, v1

    .line 132
    sget-object v0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mTZPresentingCities:[I

    const/4 v1, 0x6

    const/16 v3, 0x9e

    aput v3, v0, v1

    .line 134
    sget-object v0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mTZPresentingCities:[I

    const/4 v1, 0x7

    const/16 v3, 0x76

    aput v3, v0, v1

    .line 135
    sget-object v0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mTZPresentingCities:[I

    const/16 v1, 0x11c

    aput v1, v0, v5

    .line 136
    sget-object v0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mTZPresentingCities:[I

    const/16 v1, 0x9

    const/16 v3, 0x101

    aput v3, v0, v1

    .line 137
    sget-object v0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mTZPresentingCities:[I

    const/16 v1, 0xa

    const/16 v3, 0x8a

    aput v3, v0, v1

    .line 139
    sget-object v0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mTZPresentingCities:[I

    const/16 v1, 0xb

    const/16 v3, 0x82

    aput v3, v0, v1

    .line 141
    sget-object v0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mTZPresentingCities:[I

    const/16 v1, 0xc

    const/16 v3, 0x8d

    aput v3, v0, v1

    .line 142
    sget-object v0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mTZPresentingCities:[I

    const/16 v1, 0xff

    aput v1, v0, v6

    .line 143
    sget-object v0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mTZPresentingCities:[I

    const/16 v1, 0xe

    const/16 v3, 0x109

    aput v3, v0, v1

    .line 144
    sget-object v0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mTZPresentingCities:[I

    const/16 v1, 0xf

    const/16 v3, 0x24

    aput v3, v0, v1

    .line 145
    sget-object v0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mTZPresentingCities:[I

    const/16 v1, 0x10

    const/16 v3, 0x23

    aput v3, v0, v1

    .line 146
    sget-object v0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mTZPresentingCities:[I

    const/16 v1, 0x11

    const/16 v3, 0xcf

    aput v3, v0, v1

    .line 147
    sget-object v0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mTZPresentingCities:[I

    const/16 v1, 0x12

    const/16 v3, 0x19

    aput v3, v0, v1

    .line 148
    sget-object v0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mTZPresentingCities:[I

    const/16 v1, 0x13

    const/16 v3, 0xef

    aput v3, v0, v1

    .line 149
    sget-object v0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mTZPresentingCities:[I

    const/16 v1, 0x14

    aput v6, v0, v1

    .line 150
    sget-object v0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mTZPresentingCities:[I

    const/16 v1, 0x15

    aput v5, v0, v1

    .line 151
    sget-object v0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mTZPresentingCities:[I

    const/16 v1, 0x16

    aput v4, v0, v1

    .line 152
    sget-object v0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mTZPresentingCities:[I

    const/16 v1, 0x17

    const/16 v3, 0x121

    aput v3, v0, v1

    .line 153
    sget-object v0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mTZPresentingCities:[I

    const/16 v1, 0x18

    const/16 v3, 0x8f

    aput v3, v0, v1

    .line 828
    sput v2, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->refreshcount:I

    return-void

    :cond_ce
    move v0, v2

    .line 83
    goto/16 :goto_10
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 159
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 109
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mPaint:Landroid/graphics/Paint;

    .line 110
    iput-boolean v1, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mbInitOnCreate:Z

    .line 111
    iput-boolean v1, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mbIsLocaleChanged:Z

    .line 112
    iput-boolean v1, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mbIsToRefreshContent:Z

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->m_bIsToUpdateTZBar:Z

    .line 121
    iput-boolean v1, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mIsBroadcastReceiverRegistered:Z

    .line 185
    iput-boolean v1, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mIsApollo:Z

    .line 520
    new-instance v0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$2;-><init>(Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;)V

    iput-object v0, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mBtnVisilityHandler:Landroid/os/Handler;

    .line 640
    new-instance v0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$3;

    invoke-direct {v0, p0}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$3;-><init>(Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;)V

    iput-object v0, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mSwitcher_Handler:Landroid/os/Handler;

    .line 766
    new-instance v0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$4;

    invoke-direct {v0, p0}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$4;-><init>(Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;)V

    iput-object v0, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mDlgHandler:Landroid/os/Handler;

    .line 1124
    new-instance v0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$8;

    invoke-direct {v0, p0}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$8;-><init>(Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;)V

    iput-object v0, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mReleaseToast:Landroid/os/Handler;

    .line 1384
    new-instance v0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$10;

    invoke-direct {v0, p0}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$10;-><init>(Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;)V

    iput-object v0, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 160
    return-void
.end method

.method private ImagesetZoomBar()V
    .registers 5

    .prologue
    .line 355
    iget-object v1, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->bt_worldclock_fill_zoom:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 358
    .local v0, imgloading:Landroid/widget/RelativeLayout$LayoutParams;
    const-string v1, "Ui3dMainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "======= ImagesetZoomBar() mZoom_level = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mZoom_level:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget v1, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mZoom_level:I

    packed-switch v1, :pswitch_data_50

    .line 397
    sget-boolean v1, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->$assertionsDisabled:Z

    if-nez v1, :cond_35

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 382
    :pswitch_31
    const/16 v1, 0x129

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 402
    :cond_35
    :goto_35
    iget-object v1, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->bt_worldclock_fill_zoom:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 403
    return-void

    .line 385
    :pswitch_3b
    const/16 v1, 0xe8

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_35

    .line 388
    :pswitch_40
    const/16 v1, 0xa7

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_35

    .line 391
    :pswitch_45
    const/16 v1, 0x66

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_35

    .line 394
    :pswitch_4a
    const/16 v1, 0x25

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_35

    .line 380
    nop

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_31
        :pswitch_3b
        :pswitch_40
        :pswitch_45
        :pswitch_4a
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->setBackZoomimg(II)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;)Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mTzSwitcher:Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mAlreadySelect:Z

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mAlreadySelect:Z

    return p1
.end method

.method static synthetic access$302(Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput p1, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mZoom_level:I

    return p1
.end method

.method private getDBAll()Landroid/database/Cursor;
    .registers 9

    .prologue
    const/4 v6, 0x0

    .line 1176
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->DATA_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_e} :catch_10

    move-result-object v6

    .line 1180
    :goto_f
    return-object v6

    .line 1177
    :catch_10
    move-exception v7

    .line 1178
    .local v7, se:Landroid/database/sqlite/SQLiteFullException;
    goto :goto_f
.end method

.method private initCity()V
    .registers 2

    .prologue
    .line 576
    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->cities:Ljava/util/HashMap;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->citiesID:Ljava/util/HashMap;

    if-nez v0, :cond_e

    .line 577
    :cond_8
    invoke-static {p0}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->initCity(Landroid/content/Context;)V

    .line 578
    invoke-direct {p0}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->updateCityChoice()V

    .line 580
    :cond_e
    return-void
.end method

.method private initListButton()V
    .registers 3

    .prologue
    .line 1376
    const v0, 0x7f0e0150

    invoke-virtual {p0, v0}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mShowListView:Landroid/widget/ImageButton;

    .line 1377
    iget-object v0, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mShowListView:Landroid/widget/ImageButton;

    new-instance v1, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$9;

    invoke-direct {v1, p0}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$9;-><init>(Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1382
    return-void
.end method

.method private init_TimiezoneSwitcher()V
    .registers 5

    .prologue
    .line 630
    const v1, 0x7f0e014d

    invoke-virtual {p0, v1}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;

    iput-object v1, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mTzSwitcher:Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;

    .line 631
    iget-object v1, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mTzSwitcher:Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->setOnSwitchListener(Lcom/sec/android/app/clockpackage/worldclock/common/Switcher$OnSwitchListener;)V

    .line 632
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f03002b

    invoke-virtual {p0}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070015

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 634
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mTzSwitcher:Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;

    invoke-virtual {p0}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    if-le v1, v3, :cond_44

    const/4 v1, 0x1

    :goto_40
    invoke-virtual {v2, v0, v1}, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->setAdapter(Landroid/widget/SpinnerAdapter;Z)V

    .line 637
    return-void

    .line 634
    :cond_44
    const/4 v1, 0x0

    goto :goto_40
.end method

.method private init_mapData()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 606
    iget-object v2, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mWhere:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 626
    :cond_5
    :goto_5
    return-void

    .line 610
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 611
    .local v1, i:Landroid/content/Intent;
    const-string v2, "where"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mWhere:Ljava/lang/String;

    .line 612
    const-string v2, "index"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mIndex:I

    .line 613
    const-string v2, "cityname"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mCityCountrySel:Ljava/lang/String;

    .line 614
    const-string v2, "uniqueid"

    const/16 v3, 0x2d

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mCityUniqueID:I

    .line 615
    const-string v2, "zoomlevel"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mZoom_level:I

    .line 618
    const-string v2, "NUMBER_OF_CITIES_IN_MENU"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->numCitiesInMenu:I

    .line 622
    iget-object v2, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mCityCountrySel:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->findCity_objectByName(Ljava/lang/String;)Lcom/sec/android/app/clockpackage/worldclock/City;

    move-result-object v0

    .line 623
    .local v0, city:Lcom/sec/android/app/clockpackage/worldclock/City;
    if-nez v0, :cond_5

    .line 624
    iget v2, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mCityUniqueID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->findCity_objectByUniqueID(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mCityCountrySel:Ljava/lang/String;

    goto :goto_5
.end method

.method private setBackZoomimg(II)V
    .registers 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 300
    if-ltz p2, :cond_16

    const/16 v0, 0x24

    if-ge p2, v0, :cond_16

    .line 301
    iget v0, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mZoom_level:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mZoom_level:I

    .line 302
    iget v0, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mZoom_level:I

    if-le v0, v1, :cond_20

    .line 303
    iput v1, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mZoom_level:I

    .line 351
    :cond_15
    :goto_15
    return-void

    .line 308
    :cond_16
    const/16 v0, 0x25

    if-lt p2, v0, :cond_4f

    const/16 v0, 0x50

    if-ge p2, v0, :cond_4f

    .line 309
    iput v1, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mZoom_level:I

    .line 346
    :cond_20
    :goto_20
    const-string v0, "Ui3dMainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- setBackZoomimg mLogicManager.OnKey( 102"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mZoom_level:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-static {}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->Instance()Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;

    move-result-object v0

    iget v1, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mZoom_level:I

    add-int/lit8 v1, v1, 0x66

    invoke-virtual {v0, v1, v3}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->OnKey(IZ)Z

    .line 350
    invoke-direct {p0}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->ImagesetZoomBar()V

    goto :goto_15

    .line 312
    :cond_4f
    const/16 v0, 0x51

    if-lt p2, v0, :cond_5b

    const/16 v0, 0x8f

    if-ge p2, v0, :cond_5b

    .line 313
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mZoom_level:I

    goto :goto_20

    .line 316
    :cond_5b
    const/16 v0, 0x90

    if-lt p2, v0, :cond_67

    const/16 v0, 0xd5

    if-ge p2, v0, :cond_67

    .line 317
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mZoom_level:I

    goto :goto_20

    .line 320
    :cond_67
    const/16 v0, 0xd6

    if-lt p2, v0, :cond_72

    const/16 v0, 0x10a

    if-ge p2, v0, :cond_72

    .line 321
    iput v3, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mZoom_level:I

    goto :goto_20

    .line 324
    :cond_72
    const/16 v0, 0x10b

    if-lt p2, v0, :cond_7d

    const/16 v0, 0x136

    if-ge p2, v0, :cond_7d

    .line 325
    iput v2, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mZoom_level:I

    goto :goto_20

    .line 328
    :cond_7d
    const/16 v0, 0x137

    if-lt p2, v0, :cond_15

    const/16 v0, 0x15e

    if-gt p2, v0, :cond_15

    .line 329
    iget v0, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mZoom_level:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mZoom_level:I

    .line 330
    iget v0, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mZoom_level:I

    if-gez v0, :cond_20

    .line 331
    iput v2, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mZoom_level:I

    goto :goto_15
.end method

.method private updateCityChoice()V
    .registers 5

    .prologue
    .line 583
    invoke-static {}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->cleanDBSelected()V

    .line 584
    invoke-direct {p0}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->getDBAll()Landroid/database/Cursor;

    move-result-object v2

    .line 585
    .local v2, cur:Landroid/database/Cursor;
    if-nez v2, :cond_a

    .line 603
    :goto_9
    return-void

    .line 588
    :cond_a
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_14

    .line 589
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_9

    .line 595
    :cond_14
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 596
    :goto_17
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_36

    .line 597
    const/4 v3, 0x4

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->findCity_objectByUniqueID(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    .line 598
    .local v1, cityCountry:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->findCity_objectByName(Ljava/lang/String;)Lcom/sec/android/app/clockpackage/worldclock/City;

    move-result-object v0

    .line 599
    .local v0, city:Lcom/sec/android/app/clockpackage/worldclock/City;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/clockpackage/worldclock/City;->setDBSelected(Z)V

    .line 600
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_17

    .line 602
    .end local v0           #city:Lcom/sec/android/app/clockpackage/worldclock/City;
    .end local v1           #cityCountry:Ljava/lang/String;
    :cond_36
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_9
.end method


# virtual methods
.method public createWorld()Z
    .registers 13

    .prologue
    const/4 v5, 0x0

    .line 687
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 688
    .local v10, t:J
    iget-wide v0, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mStartTime:J

    sub-long v8, v10, v0

    .line 689
    .local v8, cT:J
    const-string v0, "Ui3dMainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ---- TIME : createWorld(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    const v0, 0x7f0e014c

    invoke-virtual {p0, v0}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mSurfaceFrame:Landroid/widget/FrameLayout;

    .line 692
    iget-object v0, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mSurfaceFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 694
    iget-object v0, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mSurfaceFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 696
    invoke-static {}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->Instance()Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->GetDP()Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;

    move-result-object v0

    new-instance v1, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$RotationChangedListener;

    invoke-direct {v1, p0}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$RotationChangedListener;-><init>(Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;)V

    invoke-virtual {v0, v1}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->RegisterRotationListener(Lcom/samsung/stri/ui3dglobe/OnRotationChangedListener;)V

    .line 697
    invoke-static {}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->Instance()Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->GetDP()Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;

    move-result-object v0

    new-instance v1, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$TouchCityListener;

    invoke-direct {v1, p0}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$TouchCityListener;-><init>(Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;)V

    invoke-virtual {v0, v1}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->RegisterTouchCityListener(Lcom/samsung/stri/ui3dglobe/OnTouchCityListener;)V

    .line 698
    invoke-static {}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->Instance()Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->GetDP()Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;

    move-result-object v0

    new-instance v1, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$ZoomChangedListener;

    invoke-direct {v1, p0}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$ZoomChangedListener;-><init>(Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;)V

    invoke-virtual {v0, v1}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->RegisterZoomChangedListener(Lcom/samsung/stri/ui3dglobe/OnZoomChangedListener;)V

    .line 700
    iget-object v0, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mContext:Landroid/content/Context;

    if-nez v0, :cond_77

    .line 701
    const-string v0, "Ui3dMainActivity"

    const-string v1, "Application not initialised"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    :cond_77
    new-instance v0, Lcom/samsung/stri/ui3dglobe/MotionDetector;

    iget-object v1, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/samsung/stri/ui3dglobe/MotionDetector;-><init>(Landroid/content/Context;Lcom/samsung/stri/ui3dglobe/MotionDetector$MotionListener;)V

    iput-object v0, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mMotionDetector:Lcom/samsung/stri/ui3dglobe/MotionDetector;

    .line 704
    invoke-static {}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->Instance()Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mMotionDetector:Lcom/samsung/stri/ui3dglobe/MotionDetector;

    iput-object v1, v0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mMotionDetector:Lcom/samsung/stri/ui3dglobe/MotionDetector;

    .line 705
    iget-object v0, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mMotionDetector:Lcom/samsung/stri/ui3dglobe/MotionDetector;

    invoke-virtual {v0}, Lcom/samsung/stri/ui3dglobe/MotionDetector;->registerMotionListener()V

    .line 707
    invoke-virtual {p0}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->init_dp()V

    .line 709
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long v8, v0, v10

    .line 710
    const-string v0, "Ui3dMainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=== TIME: After createWorld(init_dp()) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    invoke-static {}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->Instance()Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mSurfaceFrame:Landroid/widget/FrameLayout;

    iget-wide v3, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mStartTime:J

    invoke-virtual {p0}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->Init(Landroid/app/Activity;Landroid/view/ViewGroup;JZLjava/lang/String;)Z

    move-result v7

    .line 716
    .local v7, bSuccess:Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long v8, v0, v10

    .line 717
    const-string v0, "Ui3dMainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=== TIME: After createWorld(Ui3dLogicManager.Init()) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    return v7
.end method

.method public getContentValues(Lcom/sec/android/app/clockpackage/worldclock/City;Ljava/lang/String;)Landroid/content/ContentValues;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 1204
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1205
    sget-object v1, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->WC_COLUMNS:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sec/android/app/clockpackage/worldclock/City;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/clockpackage/worldclock/City;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    sget-object v1, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->WC_COLUMNS:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {p1}, Lcom/sec/android/app/clockpackage/worldclock/City;->getTimeZoneID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    sget-object v1, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->WC_COLUMNS:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1209
    sget-object v1, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->WC_COLUMNS:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {p1}, Lcom/sec/android/app/clockpackage/worldclock/City;->getUniqueID()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1211
    sget-object v1, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->WC_COLUMNS:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {p1}, Lcom/sec/android/app/clockpackage/worldclock/City;->getLatitude()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1212
    sget-object v1, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->WC_COLUMNS:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-virtual {p1}, Lcom/sec/android/app/clockpackage/worldclock/City;->getLongitude()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1213
    return-object v0
.end method

.method public getMotionDetector()Lcom/samsung/stri/ui3dglobe/MotionDetector;
    .registers 2

    .prologue
    .line 1372
    iget-object v0, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mMotionDetector:Lcom/samsung/stri/ui3dglobe/MotionDetector;

    return-object v0
.end method

.method public init_dp()V
    .registers 21

    .prologue
    .line 723
    const/16 v18, -0x100

    .line 724
    .local v18, low3:I
    const/16 v19, -0x1

    .line 728
    .local v19, tzSel:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mCitySpot:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 729
    .local v5, w:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mCitySpot:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 732
    .local v6, h:I
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 733
    .local v7, mtx:Landroid/graphics/Matrix;
    const/high16 v2, 0x4334

    invoke-virtual {v7, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 735
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mCitySpot:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 739
    .local v12, citySpotBitmapRot:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mCitySel:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 740
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mCitySel:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 743
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mCitySel:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 745
    .local v13, citySelBitmapRot:Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->Instance()Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->GetDP()Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mCitySpot:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mCitySel:Landroid/graphics/Bitmap;

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v8 .. v15}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->SetBitmaps(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 746
    invoke-static {}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->Instance()Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->GetDP()Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;

    move-result-object v2

    const/4 v3, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v3, v0, v1}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->SetTextColor(III)V

    .line 748
    const/16 v17, 0x0

    .local v17, i:I
    :goto_6c
    sget v2, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->CITY_COUNT:I

    move/from16 v0, v17

    if-ge v0, v2, :cond_d0

    .line 749
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mCities:[Lcom/sec/android/app/clockpackage/worldclock/City;

    aget-object v2, v2, v17

    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/worldclock/City;->getGMT()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 751
    .local v16, gmt:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->Instance()Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->GetDP()Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mCities:[Lcom/sec/android/app/clockpackage/worldclock/City;

    aget-object v3, v3, v17

    iget v3, v3, Lcom/sec/android/app/clockpackage/worldclock/City;->mCityUnqID:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mCities:[Lcom/sec/android/app/clockpackage/worldclock/City;

    aget-object v4, v4, v17

    invoke-virtual {v4}, Lcom/sec/android/app/clockpackage/worldclock/City;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mCities:[Lcom/sec/android/app/clockpackage/worldclock/City;

    aget-object v8, v8, v17

    invoke-virtual {v8}, Lcom/sec/android/app/clockpackage/worldclock/City;->getCountry()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v4, v8, v0}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->AddCity(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    invoke-static {}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->Instance()Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->GetDP()Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mCities:[Lcom/sec/android/app/clockpackage/worldclock/City;

    aget-object v3, v3, v17

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/worldclock/City;->getUniqueID()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mCities:[Lcom/sec/android/app/clockpackage/worldclock/City;

    aget-object v4, v4, v17

    invoke-virtual {v4}, Lcom/sec/android/app/clockpackage/worldclock/City;->getDBSelected()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->SetSelected(IZ)V

    .line 748
    add-int/lit8 v17, v17, 0x1

    goto :goto_6c

    .line 763
    .end local v16           #gmt:Ljava/lang/String;
    :cond_d0
    invoke-static {}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->Instance()Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->GetDP()Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->RefreshSelected()V

    .line 764
    return-void
.end method

.method public isDuplication(I)Z
    .registers 6
    .parameter "uniqueID"

    .prologue
    .line 1155
    const/4 v0, 0x0

    .line 1156
    .local v0, b:Z
    invoke-direct {p0}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->getDBAll()Landroid/database/Cursor;

    move-result-object v2

    .line 1157
    .local v2, cursor:Landroid/database/Cursor;
    if-nez v2, :cond_9

    move v1, v0

    .line 1170
    .end local v0           #b:Z
    .local v1, b:I
    :goto_8
    return v1

    .line 1161
    .end local v1           #b:I
    .restart local v0       #b:Z
    :cond_9
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1162
    :goto_c
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 1163
    const/4 v3, 0x4

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne p1, v3, :cond_1f

    .line 1164
    const/4 v0, 0x1

    .line 1169
    :cond_1a
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move v1, v0

    .line 1170
    .restart local v1       #b:I
    goto :goto_8

    .line 1167
    .end local v1           #b:I
    :cond_1f
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_c
.end method

.method public onBackPressed()V
    .registers 1

    .prologue
    .line 564
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 565
    invoke-virtual {p0}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->finish()V

    .line 566
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 1132
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->removeDialog(I)V

    .line 1133
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6
    .parameter "newConfig"

    .prologue
    const/4 v3, 0x1

    .line 497
    if-eqz p1, :cond_d

    .line 498
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 500
    invoke-static {}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->Instance()Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 503
    :cond_d
    const/4 v0, 0x0

    .line 504
    .local v0, locale:Ljava/util/Locale;
    if-nez p1, :cond_29

    .line 505
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 511
    :goto_14
    invoke-static {}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->Instance()Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mLocale:Ljava/util/Locale;

    if-nez v1, :cond_2c

    .line 512
    invoke-static {}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->Instance()Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Locale;

    iput-object v1, v2, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mLocale:Ljava/util/Locale;

    .line 518
    :cond_28
    :goto_28
    return-void

    .line 508
    :cond_29
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_14

    .line 513
    :cond_2c
    invoke-static {}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->Instance()Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 514
    invoke-static {}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->Instance()Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Locale;

    iput-object v1, v2, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mLocale:Ljava/util/Locale;

    .line 515
    iput-boolean v3, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mbIsLocaleChanged:Z

    .line 516
    iput-boolean v3, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mbIsToRefreshContent:Z

    goto :goto_28
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 188
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 190
    invoke-virtual {p0}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mContext:Landroid/content/Context;

    .line 191
    iput-boolean v9, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mbInitOnCreate:Z

    .line 192
    invoke-virtual {p0}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 193
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "sTime"

    const-wide/16 v6, 0x0

    invoke-virtual {v2, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mStartTime:J

    .line 195
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 196
    .local v3, t:J
    iget-wide v5, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mStartTime:J

    sub-long v0, v3, v5

    .line 197
    .local v0, cT:J
    const-string v5, "Ui3dMainActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " ---- TIME : Ui3dMainActivity::onCreate(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const v5, 0x7f030041

    invoke-virtual {p0, v5}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->setContentView(I)V

    .line 201
    invoke-direct {p0}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->initCity()V

    .line 202
    sget v5, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->CITY_COUNT:I

    sput v5, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->CITY_VIEW_COUNT:I

    .line 203
    invoke-static {}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->getCitiesByName()[Lcom/sec/android/app/clockpackage/worldclock/City;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mCities:[Lcom/sec/android/app/clockpackage/worldclock/City;

    .line 205
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long v0, v5, v3

    .line 206
    const-string v5, "Ui3dMainActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "=== TIME: After onCreate(CityManager.getCitiesByName()) : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-virtual {p0}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020029

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mCitySpot:Landroid/graphics/Bitmap;

    .line 209
    invoke-virtual {p0}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02002a

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mCitySel:Landroid/graphics/Bitmap;

    .line 213
    const v5, 0x7f0e014f

    invoke-virtual {p0, v5}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->bt_worldclock_fill_zoom:Landroid/widget/ImageView;

    .line 214
    const v5, 0x7f0e014e

    invoke-virtual {p0, v5}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->zoomBack:Landroid/widget/LinearLayout;

    .line 216
    iget-object v5, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->zoomBack:Landroid/widget/LinearLayout;

    new-instance v6, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$1;

    invoke-direct {v6, p0}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$1;-><init>(Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 228
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long v0, v5, v3

    .line 229
    const-string v5, "Ui3dMainActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "=== TIME: After onCreate(Bitmaps) : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-virtual {p0}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->createWorld()Z

    move-result v5

    if-nez v5, :cond_d3

    .line 233
    invoke-virtual {p0}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->finish()V

    .line 236
    :cond_d3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long v0, v5, v3

    .line 237
    const-string v5, "Ui3dMainActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "=== TIME: After onCreate(createWorld()) : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mbIsLocaleChanged:Z

    .line 242
    invoke-direct {p0}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->init_mapData()V

    .line 244
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long v0, v5, v3

    .line 245
    const-string v5, "Ui3dMainActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "=== TIME: After onCreate(init_mapData()) : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-direct {p0}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->init_TimiezoneSwitcher()V

    .line 249
    invoke-direct {p0}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->initListButton()V

    .line 250
    invoke-virtual {p0, v8}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 252
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long v0, v5, v3

    .line 253
    const-string v5, "Ui3dMainActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "=== TIME: After initOnCreate() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v5, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5, v6, v8, v8}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 256
    iput-boolean v9, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mIsBroadcastReceiverRegistered:Z

    .line 257
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6
    .parameter

    .prologue
    const/4 v2, -0x2

    .line 988
    packed-switch p1, :pswitch_data_76

    .line 1021
    const/4 v0, 0x0

    :goto_5
    return-object v0

    .line 991
    :pswitch_6
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x1030010

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 993
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 994
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 995
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 996
    const v2, 0x3eb851ec

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 997
    const/4 v2, 0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 998
    const v2, 0x3f266666

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 1000
    invoke-virtual {p0}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 1001
    const v2, 0x7f030043

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 1004
    :goto_44
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1005
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0202a3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1009
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1012
    new-instance v1, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$6;

    invoke-direct {v1, p0}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$6;-><init>(Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1018
    iput-object v0, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mTmapDlg:Landroid/app/Dialog;

    .line 1019
    iget-object v0, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mTmapDlg:Landroid/app/Dialog;

    goto :goto_5

    .line 1003
    :cond_6e
    const v2, 0x7f030042

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(I)V

    goto :goto_44

    .line 988
    nop

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 541
    iget-object v1, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mDlgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-ne v1, v2, :cond_10

    .line 542
    iget-object v1, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mDlgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 544
    :cond_10
    invoke-virtual {p0, v2}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->removeDialog(I)V

    .line 546
    iget-object v1, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mMotionDetector:Lcom/samsung/stri/ui3dglobe/MotionDetector;

    sget v2, Lcom/samsung/stri/ui3dglobe/MotionDetector;->STATE_NONE:I

    iput v2, v1, Lcom/samsung/stri/ui3dglobe/MotionDetector;->mState:I

    .line 547
    iget-object v1, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mMotionDetector:Lcom/samsung/stri/ui3dglobe/MotionDetector;

    invoke-virtual {v1}, Lcom/samsung/stri/ui3dglobe/MotionDetector;->unregisterMotionListener()V

    .line 549
    iget-object v1, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mCities:[Lcom/sec/android/app/clockpackage/worldclock/City;

    if-eqz v1, :cond_31

    .line 550
    const/4 v0, 0x0

    .local v0, i:I
    :goto_23
    iget-object v1, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mCities:[Lcom/sec/android/app/clockpackage/worldclock/City;

    array-length v1, v1

    if-ge v0, v1, :cond_2f

    .line 551
    iget-object v1, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mCities:[Lcom/sec/android/app/clockpackage/worldclock/City;

    aput-object v4, v1, v0

    .line 550
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 552
    :cond_2f
    iput-object v4, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mCities:[Lcom/sec/android/app/clockpackage/worldclock/City;

    .line 555
    .end local v0           #i:I
    :cond_31
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 556
    iget-boolean v1, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mIsBroadcastReceiverRegistered:Z

    if-eqz v1, :cond_3f

    .line 557
    iget-object v1, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 558
    iput-boolean v3, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mIsBroadcastReceiverRegistered:Z

    .line 560
    :cond_3f
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 561
    return-void
.end method

.method public onGotoList(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1137
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 1138
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 1139
    iget-object v0, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mCityCountrySel:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->findCity_objectByName(Ljava/lang/String;)Lcom/sec/android/app/clockpackage/worldclock/City;

    move-result-object v0

    .line 1140
    if-nez v0, :cond_1b

    .line 1141
    iget v0, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mCityUniqueID:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->findCity_objectByUniqueID(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mCityCountrySel:Ljava/lang/String;

    .line 1143
    :cond_1b
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1144
    const-string v1, "where"

    iget-object v2, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mWhere:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1145
    const-string v1, "index"

    iget v2, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1146
    const-string v1, "cityname"

    iget-object v2, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mCityCountrySel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1147
    const-string v1, "uniqueid"

    iget v2, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mCityUniqueID:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1148
    const-string v1, "zoomlevel"

    iget v2, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mZoom_level:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1149
    invoke-virtual {p0}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->finish()V

    .line 1150
    invoke-virtual {p0, v0}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 1151
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 569
    const/16 v0, 0x52

    if-ne v0, p1, :cond_12

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_11
.end method

.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x0

    const v4, 0x3eb33333

    const-wide/high16 v5, 0x3fe0

    .line 1295
    .line 1297
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getTilt()I

    move-result v0

    .line 1302
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v1

    sparse-switch v1, :sswitch_data_be

    .line 1369
    :cond_11
    :goto_11
    :sswitch_11
    return-void

    .line 1304
    :sswitch_12
    invoke-virtual {p0}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->getMotionDetector()Lcom/samsung/stri/ui3dglobe/MotionDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/stri/ui3dglobe/MotionDetector;->getMotionPanningUse()Z

    move-result v0

    if-nez v0, :cond_24

    .line 1305
    const-string v0, "Ui3dMainActivity"

    const-string v1, "Motion panning skip"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 1308
    :cond_24
    iget-object v0, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mMotionDetector:Lcom/samsung/stri/ui3dglobe/MotionDetector;

    invoke-virtual {v0}, Lcom/samsung/stri/ui3dglobe/MotionDetector;->getMotionPanningMove()I

    .line 1310
    iget-object v0, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mMotionDetector:Lcom/samsung/stri/ui3dglobe/MotionDetector;

    iget v0, v0, Lcom/samsung/stri/ui3dglobe/MotionDetector;->mState:I

    sget v1, Lcom/samsung/stri/ui3dglobe/MotionDetector;->STATE_MOVE:I

    if-ne v0, v1, :cond_11

    .line 1313
    iget-object v0, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mMotionDetector:Lcom/samsung/stri/ui3dglobe/MotionDetector;

    invoke-virtual {v0}, Lcom/samsung/stri/ui3dglobe/MotionDetector;->getMotionPanningMove()I

    move-result v0

    .line 1315
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getPanningDx()I

    move-result v1

    int-to-double v1, v1

    mul-double/2addr v1, v5

    int-to-double v3, v0

    mul-double/2addr v1, v3

    double-to-int v1, v1

    .line 1316
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getPanningDy()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v5

    int-to-double v4, v0

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 1317
    invoke-static {}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->Instance()Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;

    move-result-object v2

    neg-int v1, v1

    invoke-virtual {v2, v1, v0}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->OnMotionPanning(II)Z

    goto :goto_11

    .line 1327
    :sswitch_52
    invoke-virtual {p0}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->getMotionDetector()Lcom/samsung/stri/ui3dglobe/MotionDetector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/stri/ui3dglobe/MotionDetector;->getMotionTiltUse()Z

    move-result v1

    if-nez v1, :cond_64

    .line 1328
    const-string v0, "Ui3dMainActivity"

    const-string v1, "Motion Tilt skip"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 1332
    :cond_64
    iget-object v1, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mMotionDetector:Lcom/samsung/stri/ui3dglobe/MotionDetector;

    iget v1, v1, Lcom/samsung/stri/ui3dglobe/MotionDetector;->mState:I

    sget v2, Lcom/samsung/stri/ui3dglobe/MotionDetector;->STATE_TILT:I

    if-ne v1, v2, :cond_11

    .line 1335
    iget-object v1, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mMotionDetector:Lcom/samsung/stri/ui3dglobe/MotionDetector;

    invoke-virtual {v1}, Lcom/samsung/stri/ui3dglobe/MotionDetector;->getMotionTiltMove()F

    move-result v1

    .line 1337
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mMotionDetector:Lcom/samsung/stri/ui3dglobe/MotionDetector;

    iget v3, v3, Lcom/samsung/stri/ui3dglobe/MotionDetector;->mTiltAdjustDegree:I

    if-ge v2, v3, :cond_97

    .line 1341
    iget-object v1, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mMotionDetector:Lcom/samsung/stri/ui3dglobe/MotionDetector;

    iget v2, v1, Lcom/samsung/stri/ui3dglobe/MotionDetector;->mTiltAdjustDegree:I

    add-int/2addr v0, v2

    iput v0, v1, Lcom/samsung/stri/ui3dglobe/MotionDetector;->mTiltAdjustDegree:I

    .line 1342
    iget-object v0, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mMotionDetector:Lcom/samsung/stri/ui3dglobe/MotionDetector;

    iget v0, v0, Lcom/samsung/stri/ui3dglobe/MotionDetector;->mTiltAdjustDegree:I

    if-ltz v0, :cond_91

    iget-object v0, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mMotionDetector:Lcom/samsung/stri/ui3dglobe/MotionDetector;

    iget v0, v0, Lcom/samsung/stri/ui3dglobe/MotionDetector;->mTiltAdjustDegree:I

    const/16 v1, 0x1e

    if-le v0, v1, :cond_11

    .line 1344
    :cond_91
    iget-object v0, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mMotionDetector:Lcom/samsung/stri/ui3dglobe/MotionDetector;

    iput v7, v0, Lcom/samsung/stri/ui3dglobe/MotionDetector;->mTiltAdjustDegree:I

    goto/16 :goto_11

    .line 1347
    :cond_97
    iget-object v2, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mMotionDetector:Lcom/samsung/stri/ui3dglobe/MotionDetector;

    iput v7, v2, Lcom/samsung/stri/ui3dglobe/MotionDetector;->mTiltAdjustDegree:I

    .line 1350
    if-gez v0, :cond_ad

    .line 1351
    const v2, 0x3f7fbe77

    int-to-float v0, v0

    mul-float/2addr v0, v4

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    .line 1352
    invoke-static {}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->Instance()Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->OnMotionTilt(F)Z

    goto/16 :goto_11

    .line 1355
    :cond_ad
    const v2, 0x3f8020c5

    int-to-float v0, v0

    mul-float/2addr v0, v4

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    .line 1356
    invoke-static {}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->Instance()Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->OnMotionTilt(F)Z

    goto/16 :goto_11

    .line 1302
    nop

    :sswitch_data_be
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_11
        0x3 -> :sswitch_11
        0xa -> :sswitch_11
        0x22 -> :sswitch_11
        0x23 -> :sswitch_11
        0x24 -> :sswitch_11
        0x3d -> :sswitch_12
        0x43 -> :sswitch_52
    .end sparse-switch
.end method

.method protected onPause()V
    .registers 4

    .prologue
    .line 529
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 532
    iget-object v1, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mMotionDetector:Lcom/samsung/stri/ui3dglobe/MotionDetector;

    sget v2, Lcom/samsung/stri/ui3dglobe/MotionDetector;->STATE_NONE:I

    iput v2, v1, Lcom/samsung/stri/ui3dglobe/MotionDetector;->mState:I

    .line 533
    invoke-static {}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->Instance()Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->OnPause()V

    .line 535
    new-instance v0, Lcom/sec/android/app/clockpackage/worldclock/common/SharedManager;

    invoke-virtual {p0}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/clockpackage/worldclock/common/SharedManager;-><init>(Landroid/content/Context;)V

    .line 536
    .local v0, sm:Lcom/sec/android/app/clockpackage/worldclock/common/SharedManager;
    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/worldclock/common/SharedManager;->setPrefLastActivityMap()V

    .line 537
    iget v1, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mZoom_level:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/worldclock/common/SharedManager;->setPrefLastZoomLevel(I)V

    .line 538
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .registers 5
    .parameter "id"
    .parameter "dialog"
    .parameter "args"

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mCityCountrySel:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->timeBoxtchange(Ljava/lang/String;)V

    .line 1026
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 172
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 173
    const-string v1, "where"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mWhere:Ljava/lang/String;

    .line 174
    const-string v1, "index"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mIndex:I

    .line 175
    const-string v1, "level"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mZoom_level:I

    .line 176
    const-string v1, "cityName"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mCityCountrySel:Ljava/lang/String;

    .line 177
    const-string v1, "uniqueID"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mCityUniqueID:I

    .line 179
    iget-object v1, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mCityCountrySel:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->findCity_objectByName(Ljava/lang/String;)Lcom/sec/android/app/clockpackage/worldclock/City;

    move-result-object v0

    .line 180
    .local v0, city:Lcom/sec/android/app/clockpackage/worldclock/City;
    if-nez v0, :cond_3f

    .line 181
    iget v1, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mCityUniqueID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->findCity_objectByUniqueID(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mCityCountrySel:Ljava/lang/String;

    .line 183
    :cond_3f
    return-void
.end method

.method protected onResume()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 410
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 412
    iget-boolean v0, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mbIsLocaleChanged:Z

    if-eqz v0, :cond_1a

    .line 414
    invoke-static {p0}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->initCity(Landroid/content/Context;)V

    .line 415
    invoke-static {}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->getCitiesByName()[Lcom/sec/android/app/clockpackage/worldclock/City;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mCities:[Lcom/sec/android/app/clockpackage/worldclock/City;

    .line 416
    invoke-direct {p0}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->updateCityChoice()V

    .line 419
    invoke-virtual {p0}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->init_dp()V

    .line 420
    iput-boolean v5, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mbIsLocaleChanged:Z

    .line 423
    :cond_1a
    invoke-static {}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->Instance()Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mSurfaceFrame:Landroid/widget/FrameLayout;

    iget-wide v3, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mStartTime:J

    invoke-virtual {p0}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->ReInit(Landroid/app/Activity;Landroid/view/ViewGroup;JZLjava/lang/String;)Z

    .line 424
    invoke-static {}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->Instance()Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mbInitOnCreate:Z

    invoke-virtual {v0, v1}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->OnResume(Z)V

    .line 426
    invoke-virtual {p0}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_b9

    .line 428
    iput-boolean v9, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->isLandscape:Z

    .line 433
    :goto_4f
    iget v8, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mZoom_level:I

    .line 436
    .local v8, zoom_level:I
    iget-boolean v0, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mbInitOnCreate:Z

    if-eqz v0, :cond_a5

    .line 438
    invoke-static {}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->Instance()Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;

    move-result-object v0

    add-int/lit8 v1, v8, 0x66

    invoke-virtual {v0, v1, v9}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->OnKey(IZ)Z

    .line 445
    iget-object v0, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mBtnVisilityHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 446
    iget-object v0, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mCityCountrySel:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->findCity_objectByName(Ljava/lang/String;)Lcom/sec/android/app/clockpackage/worldclock/City;

    move-result-object v7

    .line 448
    .local v7, city:Lcom/sec/android/app/clockpackage/worldclock/City;
    if-nez v7, :cond_7f

    .line 449
    iget v0, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mCityUniqueID:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->findCity_objectByUniqueID(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mCityCountrySel:Ljava/lang/String;

    .line 450
    iget-object v0, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mCityCountrySel:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->findCity_objectByName(Ljava/lang/String;)Lcom/sec/android/app/clockpackage/worldclock/City;

    move-result-object v7

    .line 452
    :cond_7f
    if-eqz v7, :cond_a2

    .line 453
    iget-object v0, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mSwitcher_Handler:Landroid/os/Handler;

    invoke-virtual {v7}, Lcom/sec/android/app/clockpackage/worldclock/City;->getGMT_num()I

    move-result v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 455
    iput-boolean v5, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->m_bIsToUpdateTZBar:Z

    .line 457
    invoke-static {}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->Instance()Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;

    move-result-object v1

    invoke-virtual {v7}, Lcom/sec/android/app/clockpackage/worldclock/City;->getUniqueID()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v0, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->numCitiesInMenu:I

    if-lez v0, :cond_bc

    move v0, v9

    :goto_9f
    invoke-virtual {v1, v2, v0, v5, v5}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->ShowCity(IZZZ)Z

    .line 464
    :cond_a2
    invoke-direct {p0}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->ImagesetZoomBar()V

    .line 488
    .end local v7           #city:Lcom/sec/android/app/clockpackage/worldclock/City;
    :cond_a5
    iput-boolean v5, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mbInitOnCreate:Z

    .line 489
    iget-boolean v0, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mbIsToRefreshContent:Z

    if-eqz v0, :cond_b8

    .line 490
    iput-boolean v5, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mbIsToRefreshContent:Z

    .line 491
    invoke-static {}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->Instance()Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->GetDP()Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->RefreshAllDPContent()V

    .line 493
    :cond_b8
    return-void

    .line 430
    .end local v8           #zoom_level:I
    :cond_b9
    iput-boolean v5, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->isLandscape:Z

    goto :goto_4f

    .restart local v7       #city:Lcom/sec/android/app/clockpackage/worldclock/City;
    .restart local v8       #zoom_level:I
    :cond_bc
    move v0, v5

    .line 457
    goto :goto_9f
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 163
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 164
    const-string v0, "where"

    iget-object v1, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mWhere:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v0, "index"

    iget v1, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 166
    const-string v0, "level"

    iget v1, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mZoom_level:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 167
    const-string v0, "cityName"

    iget-object v1, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mCityCountrySel:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v0, "uniqueID"

    iget v1, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mCityUniqueID:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 169
    return-void
.end method

.method public onSwitch(Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;)V
    .registers 12
    .parameter "switcher"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 661
    invoke-virtual {p1}, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->getSelectIndex()I

    move-result v3

    .line 662
    .local v3, selIndex:I
    invoke-virtual {p0}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070015

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 663
    .local v5, timezone:[Ljava/lang/String;
    aget-object v4, v5, v3

    .line 664
    .local v4, st:Ljava/lang/String;
    const-string v6, "+"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 665
    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 668
    :cond_1f
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 669
    .local v2, offset:I
    if-gez v2, :cond_2b

    .line 670
    rsub-int/lit8 v2, v2, 0xd

    .line 672
    :cond_2b
    sget-boolean v6, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->$assertionsDisabled:Z

    if-nez v6, :cond_3b

    if-ltz v2, :cond_35

    const/16 v6, 0x19

    if-lt v2, v6, :cond_3b

    :cond_35
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 673
    :cond_3b
    sget-object v6, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mTZPresentingCities:[I

    aget v6, v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->findCity_objectByUniqueID(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    .line 675
    .local v1, cityCountry:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->findCity_objectByName(Ljava/lang/String;)Lcom/sec/android/app/clockpackage/worldclock/City;

    move-result-object v0

    .line 677
    .local v0, city:Lcom/sec/android/app/clockpackage/worldclock/City;
    iput-boolean v9, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->m_bIsToUpdateTZBar:Z

    .line 678
    invoke-static {}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->Instance()Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mTZPresentingCities:[I

    aget v7, v7, v2

    invoke-virtual {v6, v7, v9, v8, v8}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->ShowCity(IZZZ)Z

    .line 679
    invoke-static {}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->Instance()Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mTZPresentingCities:[I

    aget v7, v7, v2

    invoke-virtual {v6, v7}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->SelectTimezone(I)V

    .line 681
    iput-object v1, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mCityCountrySel:Ljava/lang/String;

    .line 682
    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/worldclock/City;->getUniqueID()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mCityUniqueID:I

    .line 684
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "v"
    .parameter "ev"

    .prologue
    .line 1217
    invoke-static {}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->Instance()Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->onTouch(Landroid/view/MotionEvent;)Z

    .line 1218
    const/4 v0, 0x1

    return v0
.end method

.method public onZoom(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 968
    if-eqz p1, :cond_12

    .line 969
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mZoom_level:I

    .line 971
    :cond_12
    iget v1, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mZoom_level:I

    if-nez v1, :cond_19

    .line 972
    invoke-virtual {p0}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->removeCitiesLabel()V

    .line 975
    :cond_19
    invoke-direct {p0}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->ImagesetZoomBar()V

    .line 977
    if-eqz p1, :cond_2a

    .line 978
    iget v0, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mZoom_level:I

    .line 979
    .local v0, zoom_level:I
    invoke-static {}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->Instance()Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;

    move-result-object v1

    add-int/lit8 v2, v0, 0x66

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->OnKey(IZ)Z

    .line 981
    .end local v0           #zoom_level:I
    :cond_2a
    return-void
.end method

.method public removeCitiesLabel()V
    .registers 2

    .prologue
    .line 774
    new-instance v0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$5;

    invoke-direct {v0, p0}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$5;-><init>(Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;)V

    invoke-virtual {p0, v0}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 779
    return-void
.end method

.method public saveDB(Lcom/sec/android/app/clockpackage/worldclock/City;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1185
    :try_start_1
    iget-object v1, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mWhere:Ljava/lang/String;

    const-string v2, "city"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 1186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1187
    invoke-virtual {p0}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->DATA_URI:Landroid/net/Uri;

    const-string v4, "update"

    invoke-virtual {p0, p1, v4}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->getContentValues(Lcom/sec/android/app/clockpackage/worldclock/City;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_50

    .line 1200
    :cond_33
    :goto_33
    return v0

    .line 1191
    :cond_34
    iget-object v1, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mWhere:Ljava/lang/String;

    const-string v2, "add"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 1192
    invoke-virtual {p0}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->DATA_URI:Landroid/net/Uri;

    const-string v3, "insert"

    invoke-virtual {p0, p1, v3}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->getContentValues(Lcom/sec/android/app/clockpackage/worldclock/City;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_4d
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_4d} :catch_52

    move-result-object v1

    if-eqz v1, :cond_33

    .line 1200
    :cond_50
    const/4 v0, 0x1

    goto :goto_33

    .line 1197
    :catch_52
    move-exception v1

    goto :goto_33
.end method

.method public timeBoxtchange(Ljava/lang/String;)V
    .registers 13
    .parameter

    .prologue
    const/16 v0, 0xc

    const/4 v9, 0x5

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1030
    invoke-static {p1}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->findCity_objectByName(Ljava/lang/String;)Lcom/sec/android/app/clockpackage/worldclock/City;

    move-result-object v1

    .line 1031
    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/City;->getTimeZoneID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 1032
    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v3

    .line 1034
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 1035
    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, v1, Landroid/text/format/Time;->year:I

    .line 1036
    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, v1, Landroid/text/format/Time;->month:I

    .line 1037
    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, v1, Landroid/text/format/Time;->monthDay:I

    .line 1038
    const/16 v2, 0xb

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, v1, Landroid/text/format/Time;->hour:I

    .line 1039
    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, v1, Landroid/text/format/Time;->minute:I

    .line 1040
    iput v6, v1, Landroid/text/format/Time;->second:I

    .line 1042
    iget-object v2, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mTmapDlg:Landroid/app/Dialog;

    const v4, 0x7f0e0151

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1043
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1045
    const-string v2, "%H"

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1046
    const-string v4, "%M"

    invoke-virtual {v1, v4}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1047
    const-string v1, ""

    .line 1048
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_173

    .line 1049
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    rem-int/lit8 v1, v1, 0xc

    .line 1050
    if-nez v1, :cond_144

    .line 1052
    :goto_69
    const-string v1, "%d"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1056
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v0, 0x9

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_147

    invoke-virtual {p0}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0b0094

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_95
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    .line 1061
    :goto_a0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1062
    iget-object v0, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mTmapDlg:Landroid/app/Dialog;

    const v4, 0x7f0e0155

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1063
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1065
    iget-object v0, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mTmapDlg:Landroid/app/Dialog;

    const v2, 0x7f0e0156

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1066
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1068
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    .line 1069
    new-instance v2, Ljava/util/Date;

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit16 v0, v0, -0x76c

    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-direct {v2, v0, v4, v3}, Ljava/util/Date;-><init>(III)V

    .line 1071
    invoke-static {p1}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->findCity_objectByName(Ljava/lang/String;)Lcom/sec/android/app/clockpackage/worldclock/City;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/worldclock/City;->getGMT()Ljava/lang/String;

    move-result-object v3

    .line 1072
    iget-object v0, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mTmapDlg:Landroid/app/Dialog;

    const v4, 0x7f0e0157

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1075
    const-string v4, "SPH-D710"

    const-string v5, "SGH-I927"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_154

    .line 1076
    const-string v1, "E d MMM, yyyy"

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1077
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1083
    :goto_114
    iget-object v0, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mTmapDlg:Landroid/app/Dialog;

    const v1, 0x7f0e0153

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1084
    iget-object v1, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mCityCountrySel:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mCityCountrySel:Ljava/lang/String;

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1087
    iget-object v0, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mTmapDlg:Landroid/app/Dialog;

    const v1, 0x7f0e0154

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1088
    new-instance v1, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$7;

    invoke-direct {v1, p0}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$7;-><init>(Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1122
    return-void

    :cond_144
    move v0, v1

    .line 1050
    goto/16 :goto_69

    .line 1056
    :cond_147
    invoke-virtual {p0}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0b0095

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_95

    .line 1079
    :cond_154
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_114

    :cond_173
    move-object v0, v2

    goto/16 :goto_a0
.end method
