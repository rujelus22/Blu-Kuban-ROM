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

    .line 285
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
    .registers 13
    .parameter "resources"
    .parameter "packageName"
    .parameter "list"

    .prologue
    .line 122
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, extras:[Ljava/lang/String;
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_7
    if-ge v3, v4, :cond_43

    aget-object v1, v0, v3

    .line 124
    .local v1, extra:Ljava/lang/String;
    const-string v7, "drawable"

    invoke-virtual {p1, v1, v7, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 125
    .local v5, res:I
    if-eqz v5, :cond_40

    .line 126
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

    .line 129
    .local v6, thumbRes:I
    if-eqz v6, :cond_40

    .line 130
    iget-object v7, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mThumbs:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v7, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mImages:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    .end local v6           #thumbRes:I
    :cond_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 137
    .end local v1           #extra:Ljava/lang/String;
    .end local v5           #res:I
    :cond_43
    return-void
.end method

.method private findWallpapers()V
    .registers 9

    .prologue
    const/16 v6, 0x18

    const/4 v5, 0x0

    const v7, 0x7f040001

    .line 102
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mThumbs:Ljava/util/ArrayList;

    .line 103
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mImages:Ljava/util/ArrayList;

    .line 105
    invoke-virtual {p0}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 110
    .local v3, resources:Landroid/content/res/Resources;
    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, packageName:Ljava/lang/String;
    const/4 v4, 0x0

    invoke-static {v4, v5}, Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;->getInstance(Ljava/lang/String;I)Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mCustomer:Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;

    .line 113
    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, extras:[Ljava/lang/String;
    aget-object v4, v0, v5

    const-string v5, "drawable"

    invoke-virtual {v3, v4, v5, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 115
    .local v2, res:I
    iget-object v4, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mCustomer:Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;

    iget-object v5, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mImages:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mThumbs:Ljava/util/ArrayList;

    invoke-virtual {v4, v5, v6, v2}, Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;->addCustomerWallpaper(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 117
    invoke-direct {p0, v3, v1, v7}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->addWallpapers(Landroid/content/res/Resources;Ljava/lang/String;I)V

    .line 118
    const/high16 v4, 0x7f04

    invoke-direct {p0, v3, v1, v4}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->addWallpapers(Landroid/content/res/Resources;Ljava/lang/String;I)V

    .line 119
    return-void
.end method

.method private selectWallpaper(I)V
    .registers 14
    .parameter "position"

    .prologue
    const/4 v11, 0x1

    .line 168
    const/4 v2, 0x0

    .line 169
    .local v2, ResourceImageName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 170
    .local v3, UriFullPath:Ljava/lang/String;
    const/4 v1, 0x0

    .line 171
    .local v1, CustomerImageCount:I
    iget-boolean v8, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mIsWallpaperSet:Z

    if-eqz v8, :cond_9

    .line 220
    :goto_8
    return-void

    .line 175
    :cond_9
    iput-boolean v11, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mIsWallpaperSet:Z

    .line 179
    iget-object v8, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mCustomer:Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;

    invoke-virtual {v8}, Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;->getCustomerCount()I

    move-result v1

    .line 182
    if-lez v1, :cond_70

    .line 183
    if-ge p1, v1, :cond_56

    .line 187
    iget-object v8, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mCustomer:Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;

    invoke-virtual {v8, p1, v11}, Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;->getImageCustomerWallpaper(II)Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, CustomerFilePath:Ljava/lang/String;
    const-string v4, "file://"

    .line 189
    .local v4, filePathPrefix:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 204
    .end local v0           #CustomerFilePath:Ljava/lang/String;
    .end local v4           #filePathPrefix:Ljava/lang/String;
    :cond_2e
    :goto_2e
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 205
    .local v5, fileUri:Landroid/net/Uri;
    const-string v7, "image/jpeg"

    .line 206
    .local v7, mimeType:Ljava/lang/String;
    new-instance v6, Landroid/content/Intent;

    const-string v8, "android.intent.action.ATTACH_DATA"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 207
    .local v6, intent:Landroid/content/Intent;
    iget-boolean v8, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mSetLockscreen:Z

    if-eqz v8, :cond_8a

    .line 208
    new-instance v8, Landroid/content/ComponentName;

    const-string v9, "com.cooliris.media"

    const-string v10, "com.cooliris.media.LockScreenPhotographs"

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 215
    :goto_4b
    invoke-virtual {v6, v5, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    invoke-virtual {v6, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 219
    const/4 v8, 0x0

    invoke-virtual {p0, v6, v8}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_8

    .line 192
    .end local v5           #fileUri:Landroid/net/Uri;
    .end local v6           #intent:Landroid/content/Intent;
    .end local v7           #mimeType:Ljava/lang/String;
    :cond_56
    iget-object v8, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mlist:[Ljava/lang/String;

    sub-int v9, p1, v1

    aget-object v2, v8, v9

    .line 193
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "android.resource://com.sec.android.app.twwallpaperchooser/drawable/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2e

    .line 196
    :cond_70
    if-nez v1, :cond_2e

    .line 197
    iget-object v8, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mlist:[Ljava/lang/String;

    aget-object v2, v8, p1

    .line 198
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "android.resource://com.sec.android.app.twwallpaperchooser/drawable/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2e

    .line 212
    .restart local v5       #fileUri:Landroid/net/Uri;
    .restart local v6       #intent:Landroid/content/Intent;
    .restart local v7       #mimeType:Ljava/lang/String;
    :cond_8a
    new-instance v8, Landroid/content/ComponentName;

    const-string v9, "com.cooliris.media"

    const-string v10, "com.cooliris.media.Photographs"

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_4b
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 223
    packed-switch p1, :pswitch_data_c

    .line 234
    :cond_3
    :goto_3
    return-void

    .line 225
    :pswitch_4
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    .line 227
    invoke-virtual {p0}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->finish()V

    goto :goto_3

    .line 223
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
    .line 282
    iget-object v0, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mGallery:Landroid/widget/Gallery;

    invoke-virtual {v0}, Landroid/widget/Gallery;->getSelectedItemPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->selectWallpaper(I)V

    .line 283
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
    .line 147
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 149
    iget-object v0, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mLoader:Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mLoader:Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_1a

    .line 150
    iget-object v0, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mLoader:Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;->cancel(Z)Z

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mLoader:Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;

    .line 153
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
    .line 156
    iget-object v0, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mLoader:Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mLoader:Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_13

    .line 157
    iget-object v0, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mLoader:Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;->cancel()V

    .line 159
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

    .line 160
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .parameter "parent"

    .prologue
    .line 237
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 141
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mIsWallpaperSet:Z

    .line 143
    return-void
.end method
