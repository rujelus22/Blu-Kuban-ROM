.class public Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;
.super Landroid/app/Activity;
.source "CradleWallpaperChooser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser$WallpaperLoader;,
        Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser$ImageAdapter;
    }
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field public mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCustomer:Lcom/sec/android/app/clockpackage/deskclock/LauncherCustomer;

.field private mGallery:Landroid/widget/Gallery;

.field private mImageView:Landroid/widget/ImageView;

.field private mImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsWallpaperSet:Z

.field private mLoader:Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser$WallpaperLoader;

.field private mThumbs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTwWallPaperResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->mTwWallPaperResources:Landroid/content/res/Resources;

    .line 101
    new-instance v0, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser$1;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 280
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->mThumbs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;)Landroid/content/res/Resources;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->mTwWallPaperResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;)Lcom/sec/android/app/clockpackage/deskclock/LauncherCustomer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->mCustomer:Lcom/sec/android/app/clockpackage/deskclock/LauncherCustomer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->mImages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser$WallpaperLoader;)Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser$WallpaperLoader;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->mLoader:Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser$WallpaperLoader;

    return-object p1
.end method

.method private addWallpapers(Landroid/content/res/Resources;Ljava/lang/String;I)V
    .registers 13
    .parameter "resources"
    .parameter "packageName"
    .parameter "list"

    .prologue
    .line 146
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 148
    .local v2, extras:[Ljava/lang/String;
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_7
    if-ge v3, v4, :cond_45

    aget-object v1, v0, v3

    .line 149
    .local v1, extra:Ljava/lang/String;
    const-string v7, "drawable"

    const-string v8, "com.sec.android.app.twwallpaperchooser"

    invoke-virtual {p1, v1, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 152
    .local v5, res:I
    if-eqz v5, :cond_42

    .line 153
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_small"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "drawable"

    invoke-virtual {p1, v7, v8, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 156
    .local v6, thumbRes:I
    if-eqz v6, :cond_42

    .line 157
    iget-object v7, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->mThumbs:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object v7, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->mImages:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    .end local v6           #thumbRes:I
    :cond_42
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 164
    .end local v1           #extra:Ljava/lang/String;
    .end local v5           #res:I
    :cond_45
    return-void
.end method

.method private findWallpapers()V
    .registers 8

    .prologue
    const/16 v4, 0x18

    .line 114
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->mThumbs:Ljava/util/ArrayList;

    .line 115
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->mImages:Ljava/util/ArrayList;

    .line 117
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->mTwWallPaperResources:Landroid/content/res/Resources;

    if-nez v3, :cond_1c

    .line 118
    const-string v3, "CradleTwWallpaperChooser"

    const-string v4, "mTwWallPaperResources is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :goto_1b
    return-void

    .line 130
    :cond_1c
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/sec/android/app/clockpackage/deskclock/LauncherCustomer;->getInstance(Ljava/lang/String;I)Lcom/sec/android/app/clockpackage/deskclock/LauncherCustomer;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->mCustomer:Lcom/sec/android/app/clockpackage/deskclock/LauncherCustomer;

    .line 131
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->mCustomer:Lcom/sec/android/app/clockpackage/deskclock/LauncherCustomer;

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->mImages:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->mThumbs:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/clockpackage/deskclock/LauncherCustomer;->addCustomerWallpaper(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 133
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->mTwWallPaperResources:Landroid/content/res/Resources;

    const-string v4, "wallpapers"

    const-string v5, "array"

    const-string v6, "com.sec.android.app.twwallpaperchooser"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 135
    .local v2, wallpapersId:I
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->mTwWallPaperResources:Landroid/content/res/Resources;

    const-string v4, "extra_wallpapers"

    const-string v5, "array"

    const-string v6, "com.sec.android.app.twwallpaperchooser"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 138
    .local v0, extraWallpapersId:I
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->mTwWallPaperResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, packageName:Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->mTwWallPaperResources:Landroid/content/res/Resources;

    invoke-direct {p0, v3, v1, v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->addWallpapers(Landroid/content/res/Resources;Ljava/lang/String;I)V

    .line 142
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->mTwWallPaperResources:Landroid/content/res/Resources;

    invoke-direct {p0, v3, v1, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->addWallpapers(Landroid/content/res/Resources;Ljava/lang/String;I)V

    goto :goto_1b
.end method

.method private selectWallpaper(I)V
    .registers 6
    .parameter "position"

    .prologue
    .line 201
    iget-boolean v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->mIsWallpaperSet:Z

    if-eqz v2, :cond_5

    .line 225
    :goto_4
    return-void

    .line 205
    :cond_5
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->mIsWallpaperSet:Z

    .line 207
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 209
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 210
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v3, "cradle_wallpaper_resource_id"

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->mImages:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 211
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 212
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->setResult(I)V

    .line 213
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->finish()V

    goto :goto_4
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 277
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->mGallery:Landroid/widget/Gallery;

    invoke-virtual {v0}, Landroid/widget/Gallery;->getSelectedItemPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->selectWallpaper(I)V

    .line 278
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "icicle"

    .prologue
    const/4 v5, 0x0

    .line 70
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->requestWindowFeature(I)Z

    .line 74
    :try_start_8
    const-string v3, "com.sec.android.app.twwallpaperchooser"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    .line 76
    .local v2, wallPaperContext:Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->mTwWallPaperResources:Landroid/content/res/Resources;
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_15} :catch_62

    .line 82
    .end local v2           #wallPaperContext:Landroid/content/Context;
    :goto_15
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->findWallpapers()V

    .line 84
    const v3, 0x7f030030

    invoke-virtual {p0, v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->setContentView(I)V

    .line 86
    const v3, 0x7f0e012b

    invoke-virtual {p0, v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Gallery;

    iput-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->mGallery:Landroid/widget/Gallery;

    .line 87
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->mGallery:Landroid/widget/Gallery;

    new-instance v4, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser$ImageAdapter;

    invoke-direct {v4, p0, p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser$ImageAdapter;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;)V

    invoke-virtual {v3, v4}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 88
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->mGallery:Landroid/widget/Gallery;

    invoke-virtual {v3, p0}, Landroid/widget/Gallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 89
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->mGallery:Landroid/widget/Gallery;

    invoke-virtual {v3, v5}, Landroid/widget/Gallery;->setCallbackDuringFling(Z)V

    .line 91
    const v3, 0x7f0e012c

    invoke-virtual {p0, v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    const v3, 0x7f0e012a

    invoke-virtual {p0, v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->mImageView:Landroid/widget/ImageView;

    .line 95
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 96
    .local v1, filter:Landroid/content/IntentFilter;
    sget-object v3, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 99
    return-void

    .line 77
    .end local v1           #filter:Landroid/content/IntentFilter;
    :catch_62
    move-exception v0

    .line 78
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 79
    const-string v3, "CradleTwWallpaperChooser"

    const-string v4, "Fail to Get twwallpaperResources"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 174
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 176
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 178
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->mLoader:Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser$WallpaperLoader;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->mLoader:Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser$WallpaperLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser$WallpaperLoader;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_1f

    .line 180
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->mLoader:Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser$WallpaperLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser$WallpaperLoader;->cancel(Z)Z

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->mLoader:Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser$WallpaperLoader;

    .line 184
    :cond_1f
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->mLoader:Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser$WallpaperLoader;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->mLoader:Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser$WallpaperLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser$WallpaperLoader;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_13

    .line 190
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->mLoader:Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser$WallpaperLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser$WallpaperLoader;->cancel()V

    .line 192
    :cond_13
    new-instance v0, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser$WallpaperLoader;

    invoke-direct {v0, p0}, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser$WallpaperLoader;-><init>(Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser$WallpaperLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser$WallpaperLoader;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->mLoader:Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser$WallpaperLoader;

    .line 193
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .parameter "parent"

    .prologue
    .line 229
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 168
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 169
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->mIsWallpaperSet:Z

    .line 170
    return-void
.end method
