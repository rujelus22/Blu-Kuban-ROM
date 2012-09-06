.class public Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;
.super Landroid/app/Activity;
.source "WallpaperChooser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;,
        Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$ImageAdapter;
    }
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCustomer:Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;

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

.field private mLoader:Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;

.field private mSetLockscreen:Z

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

.field private mlist:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 283
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mThumbs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;)Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mCustomer:Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mImages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;)Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mLoader:Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;

    return-object p1
.end method

.method private addWallpapers(Landroid/content/res/Resources;Ljava/lang/String;I)V
    .registers 14
    .parameter "resources"
    .parameter "packageName"
    .parameter "list"

    .prologue
    const-string v9, "drawable"

    .line 120
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, extras:[Ljava/lang/String;
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_9
    if-ge v3, v4, :cond_45

    aget-object v1, v0, v3

    .line 122
    .local v1, extra:Ljava/lang/String;
    const-string v7, "drawable"

    invoke-virtual {p1, v1, v9, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 123
    .local v5, res:I
    if-eqz v5, :cond_42

    .line 124
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

    invoke-virtual {p1, v7, v9, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 127
    .local v6, thumbRes:I
    if-eqz v6, :cond_42

    .line 128
    iget-object v7, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mThumbs:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v7, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mImages:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    .end local v6           #thumbRes:I
    :cond_42
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 135
    .end local v1           #extra:Ljava/lang/String;
    .end local v5           #res:I
    :cond_45
    return-void
.end method

.method private findWallpapers()V
    .registers 7

    .prologue
    const v5, 0x7f040001

    const/16 v3, 0x18

    .line 102
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mThumbs:Ljava/util/ArrayList;

    .line 103
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mImages:Ljava/util/ArrayList;

    .line 105
    invoke-virtual {p0}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 110
    .local v1, resources:Landroid/content/res/Resources;
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, packageName:Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;->getInstance(Ljava/lang/String;I)Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mCustomer:Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;

    .line 113
    iget-object v2, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mCustomer:Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;

    iget-object v3, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mImages:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mThumbs:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;->addCustomerWallpaper(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 115
    invoke-direct {p0, v1, v0, v5}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->addWallpapers(Landroid/content/res/Resources;Ljava/lang/String;I)V

    .line 116
    const/high16 v2, 0x7f04

    invoke-direct {p0, v1, v0, v2}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->addWallpapers(Landroid/content/res/Resources;Ljava/lang/String;I)V

    .line 117
    return-void
.end method

.method private selectWallpaper(I)V
    .registers 15
    .parameter "position"

    .prologue
    const/4 v10, 0x1

    const-string v12, "com.cooliris.media"

    const-string v11, "android.resource://com.sec.android.app.twwallpaperchooser/drawable/"

    .line 166
    const/4 v2, 0x0

    .line 167
    .local v2, ResourceImageName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 168
    .local v3, UriFullPath:Ljava/lang/String;
    const/4 v1, 0x0

    .line 169
    .local v1, CustomerImageCount:I
    iget-boolean v8, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mIsWallpaperSet:Z

    if-eqz v8, :cond_d

    .line 218
    :goto_c
    return-void

    .line 173
    :cond_d
    iput-boolean v10, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mIsWallpaperSet:Z

    .line 177
    iget-object v8, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mCustomer:Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;

    invoke-virtual {v8}, Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;->getCustomerCount()I

    move-result v1

    .line 180
    if-lez v1, :cond_74

    .line 181
    if-ge p1, v1, :cond_5a

    .line 185
    iget-object v8, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mCustomer:Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;

    invoke-virtual {v8, p1, v10}, Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;->getImageCustomerWallpaper(II)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, CustomerFilePath:Ljava/lang/String;
    const-string v4, "file://"

    .line 187
    .local v4, filePathPrefix:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 202
    .end local v0           #CustomerFilePath:Ljava/lang/String;
    .end local v4           #filePathPrefix:Ljava/lang/String;
    :cond_32
    :goto_32
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 203
    .local v5, fileUri:Landroid/net/Uri;
    const-string v7, "image/jpeg"

    .line 204
    .local v7, mimeType:Ljava/lang/String;
    new-instance v6, Landroid/content/Intent;

    const-string v8, "android.intent.action.ATTACH_DATA"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    .local v6, intent:Landroid/content/Intent;
    iget-boolean v8, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mSetLockscreen:Z

    if-eqz v8, :cond_8e

    .line 206
    new-instance v8, Landroid/content/ComponentName;

    const-string v9, "com.cooliris.media"

    const-string v9, "com.cooliris.media.LockScreenPhotographs"

    invoke-direct {v8, v12, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 213
    :goto_4f
    invoke-virtual {v6, v5, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    invoke-virtual {v6, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 217
    const/4 v8, 0x0

    invoke-virtual {p0, v6, v8}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_c

    .line 190
    .end local v5           #fileUri:Landroid/net/Uri;
    .end local v6           #intent:Landroid/content/Intent;
    .end local v7           #mimeType:Ljava/lang/String;
    :cond_5a
    iget-object v8, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mlist:[Ljava/lang/String;

    sub-int v9, p1, v1

    aget-object v2, v8, v9

    .line 191
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "android.resource://com.sec.android.app.twwallpaperchooser/drawable/"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_32

    .line 194
    :cond_74
    if-nez v1, :cond_32

    .line 195
    iget-object v8, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mlist:[Ljava/lang/String;

    aget-object v2, v8, p1

    .line 196
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "android.resource://com.sec.android.app.twwallpaperchooser/drawable/"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_32

    .line 210
    .restart local v5       #fileUri:Landroid/net/Uri;
    .restart local v6       #intent:Landroid/content/Intent;
    .restart local v7       #mimeType:Ljava/lang/String;
    :cond_8e
    new-instance v8, Landroid/content/ComponentName;

    const-string v9, "com.cooliris.media"

    const-string v9, "com.cooliris.media.Photographs"

    invoke-direct {v8, v12, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_4f
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 221
    packed-switch p1, :pswitch_data_c

    .line 232
    :cond_3
    :goto_3
    return-void

    .line 223
    :pswitch_4
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    .line 225
    invoke-virtual {p0}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->finish()V

    goto :goto_3

    .line 221
    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 280
    iget-object v0, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mGallery:Landroid/widget/Gallery;

    invoke-virtual {v0}, Landroid/widget/Gallery;->getSelectedItemPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->selectWallpaper(I)V

    .line 281
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "icicle"

    .prologue
    const/4 v3, 0x0

    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->requestWindowFeature(I)Z

    .line 69
    invoke-direct {p0}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->findWallpapers()V

    .line 71
    const/high16 v1, 0x7f03

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->setContentView(I)V

    .line 73
    const v1, 0x7f060001

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Gallery;

    iput-object v1, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mGallery:Landroid/widget/Gallery;

    .line 74
    iget-object v1, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mGallery:Landroid/widget/Gallery;

    new-instance v2, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$ImageAdapter;

    invoke-direct {v2, p0, p0}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$ImageAdapter;-><init>(Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;)V

    invoke-virtual {v1, v2}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 75
    iget-object v1, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mGallery:Landroid/widget/Gallery;

    invoke-virtual {v1, p0}, Landroid/widget/Gallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 76
    iget-object v1, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mGallery:Landroid/widget/Gallery;

    invoke-virtual {v1, v3}, Landroid/widget/Gallery;->setCallbackDuringFling(Z)V

    .line 78
    const v1, 0x7f060002

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    const/high16 v1, 0x7f06

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mImageView:Landroid/widget/ImageView;

    .line 84
    invoke-virtual {p0}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mlist:[Ljava/lang/String;

    .line 85
    invoke-virtual {p0}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 86
    .local v0, SetLockscreenWallpaperIntent:Landroid/content/Intent;
    const-string v1, "SET_LOCKSCREEN_WALLPAPER"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mSetLockscreen:Z

    .line 87
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 145
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 147
    iget-object v0, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mLoader:Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mLoader:Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_1a

    .line 148
    iget-object v0, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mLoader:Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;->cancel(Z)Z

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mLoader:Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;

    .line 151
    :cond_1a
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mLoader:Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mLoader:Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_13

    .line 155
    iget-object v0, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mLoader:Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;->cancel()V

    .line 157
    :cond_13
    new-instance v0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;-><init>(Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;

    iput-object v0, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mLoader:Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;

    .line 158
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .parameter "parent"

    .prologue
    .line 235
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 139
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mIsWallpaperSet:Z

    .line 141
    return-void
.end method
