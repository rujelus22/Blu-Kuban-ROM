.class public Lcom/sprint/w/installer/WallpaperChooser;
.super Landroid/app/Activity;
.source "WallpaperChooser.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/w/installer/WallpaperChooser$WallpaperLoader;,
        Lcom/sprint/w/installer/WallpaperChooser$ImageAdapter;
    }
.end annotation


# instance fields
.field private log:Lcom/sprint/id/logger/Logger;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mGallery:Landroid/widget/Gallery;

.field private mImageUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mImageView:Landroid/widget/ImageView;

.field private mIsWallpaperSet:Z

.field private mLoader:Lcom/sprint/w/installer/WallpaperChooser$WallpaperLoader;

.field private mThumbUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 48
    const-class v0, Lcom/sprint/w/installer/WallpaperChooser;

    invoke-static {v0}, Lcom/sprint/id/logger/Logger;->getLogger(Ljava/lang/Class;)Lcom/sprint/id/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/WallpaperChooser;->log:Lcom/sprint/id/logger/Logger;

    .line 207
    return-void
.end method

.method static synthetic access$000(Lcom/sprint/w/installer/WallpaperChooser;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sprint/w/installer/WallpaperChooser;->mThumbUris:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sprint/w/installer/WallpaperChooser;)Lcom/sprint/id/logger/Logger;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sprint/w/installer/WallpaperChooser;->log:Lcom/sprint/id/logger/Logger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sprint/w/installer/WallpaperChooser;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sprint/w/installer/WallpaperChooser;->mImageUris:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sprint/w/installer/WallpaperChooser;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sprint/w/installer/WallpaperChooser;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sprint/w/installer/WallpaperChooser;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/sprint/w/installer/WallpaperChooser;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sprint/w/installer/WallpaperChooser;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sprint/w/installer/WallpaperChooser;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sprint/w/installer/WallpaperChooser;Lcom/sprint/w/installer/WallpaperChooser$WallpaperLoader;)Lcom/sprint/w/installer/WallpaperChooser$WallpaperLoader;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/sprint/w/installer/WallpaperChooser;->mLoader:Lcom/sprint/w/installer/WallpaperChooser$WallpaperLoader;

    return-object p1
.end method

.method private findWallpapers()V
    .registers 14

    .prologue
    .line 87
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/sprint/w/installer/WallpaperChooser;->mImageUris:Ljava/util/ArrayList;

    .line 88
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/sprint/w/installer/WallpaperChooser;->mThumbUris:Ljava/util/ArrayList;

    .line 89
    new-instance v6, Ljava/io/File;

    invoke-virtual {p0}, Lcom/sprint/w/installer/WallpaperChooser;->getFilesDir()Ljava/io/File;

    move-result-object v8

    const-string v9, "wallpapers"

    invoke-direct {v6, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 90
    .local v6, wpDir:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_9e

    .line 91
    new-instance v8, Lcom/sprint/w/installer/WallpaperChooser$1;

    invoke-direct {v8, p0, v6}, Lcom/sprint/w/installer/WallpaperChooser$1;-><init>(Lcom/sprint/w/installer/WallpaperChooser;Ljava/io/File;)V

    invoke-virtual {v6, v8}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v7

    .line 100
    .local v7, wpFiles:[Ljava/io/File;
    new-instance v5, Ljava/io/File;

    const-string v8, "thumbs"

    invoke-direct {v5, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 101
    .local v5, thumbsDir:Ljava/io/File;
    move-object v0, v7

    .local v0, arr$:[Ljava/io/File;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_32
    if-ge v2, v3, :cond_9e

    aget-object v1, v0, v2

    .line 102
    .local v1, f:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v5, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 103
    .local v4, thumb:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_88

    .line 104
    iget-object v8, p0, Lcom/sprint/w/installer/WallpaperChooser;->mImageUris:Ljava/util/ArrayList;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "file://"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v8, p0, Lcom/sprint/w/installer/WallpaperChooser;->mThumbUris:Ljava/util/ArrayList;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "file://"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    :goto_85
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 107
    :cond_88
    iget-object v8, p0, Lcom/sprint/w/installer/WallpaperChooser;->log:Lcom/sprint/id/logger/Logger;

    const-string v9, "Not adding wallpaper \'%s\' -- missing thumbnail!"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;)V

    goto :goto_85

    .line 111
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #f:Ljava/io/File;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #thumb:Ljava/io/File;
    .end local v5           #thumbsDir:Ljava/io/File;
    .end local v7           #wpFiles:[Ljava/io/File;
    :cond_9e
    return-void
.end method

.method private selectWallpaper(I)V
    .registers 7
    .parameter "position"

    .prologue
    .line 142
    iget-boolean v2, p0, Lcom/sprint/w/installer/WallpaperChooser;->mIsWallpaperSet:Z

    if-eqz v2, :cond_5

    .line 154
    :goto_4
    return-void

    .line 145
    :cond_5
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sprint/w/installer/WallpaperChooser;->mIsWallpaperSet:Z

    .line 147
    :try_start_8
    const-string v2, "wallpaper"

    invoke-virtual {p0, v2}, Lcom/sprint/w/installer/WallpaperChooser;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/WallpaperManager;

    .line 148
    .local v1, wpm:Landroid/app/WallpaperManager;
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/sprint/w/installer/WallpaperChooser;->mImageUris:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V

    .line 149
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/sprint/w/installer/WallpaperChooser;->setResult(I)V

    .line 150
    invoke-virtual {p0}, Lcom/sprint/w/installer/WallpaperChooser;->finish()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_2b} :catch_2c

    goto :goto_4

    .line 151
    .end local v1           #wpm:Landroid/app/WallpaperManager;
    :catch_2c
    move-exception v0

    .line 152
    .local v0, e:Ljava/io/IOException;
    iget-object v2, p0, Lcom/sprint/w/installer/WallpaperChooser;->log:Lcom/sprint/id/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to set wallpaper: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;)V

    goto :goto_4
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/sprint/w/installer/WallpaperChooser;->mGallery:Landroid/widget/Gallery;

    invoke-virtual {v0}, Landroid/widget/Gallery;->getSelectedItemPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sprint/w/installer/WallpaperChooser;->selectWallpaper(I)V

    .line 205
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "icicle"

    .prologue
    const/4 v2, 0x0

    .line 63
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/WallpaperChooser;->requestWindowFeature(I)Z

    .line 66
    invoke-direct {p0}, Lcom/sprint/w/installer/WallpaperChooser;->findWallpapers()V

    .line 68
    iget-object v0, p0, Lcom/sprint/w/installer/WallpaperChooser;->mImageUris:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_21

    .line 69
    const v0, 0x7f0600b0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 70
    invoke-virtual {p0}, Lcom/sprint/w/installer/WallpaperChooser;->finish()V

    .line 84
    :goto_20
    return-void

    .line 74
    :cond_21
    const v0, 0x7f030032

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/WallpaperChooser;->setContentView(I)V

    .line 76
    const v0, 0x7f0c0053

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/WallpaperChooser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Gallery;

    iput-object v0, p0, Lcom/sprint/w/installer/WallpaperChooser;->mGallery:Landroid/widget/Gallery;

    .line 77
    iget-object v0, p0, Lcom/sprint/w/installer/WallpaperChooser;->mGallery:Landroid/widget/Gallery;

    new-instance v1, Lcom/sprint/w/installer/WallpaperChooser$ImageAdapter;

    invoke-direct {v1, p0, p0}, Lcom/sprint/w/installer/WallpaperChooser$ImageAdapter;-><init>(Lcom/sprint/w/installer/WallpaperChooser;Lcom/sprint/w/installer/WallpaperChooser;)V

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 78
    iget-object v0, p0, Lcom/sprint/w/installer/WallpaperChooser;->mGallery:Landroid/widget/Gallery;

    invoke-virtual {v0, p0}, Landroid/widget/Gallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 79
    iget-object v0, p0, Lcom/sprint/w/installer/WallpaperChooser;->mGallery:Landroid/widget/Gallery;

    invoke-virtual {v0, v2}, Landroid/widget/Gallery;->setCallbackDuringFling(Z)V

    .line 81
    const v0, 0x7f0c008f

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/WallpaperChooser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    const v0, 0x7f0c008e

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/WallpaperChooser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sprint/w/installer/WallpaperChooser;->mImageView:Landroid/widget/ImageView;

    goto :goto_20
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 121
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 123
    iget-object v0, p0, Lcom/sprint/w/installer/WallpaperChooser;->mLoader:Lcom/sprint/w/installer/WallpaperChooser$WallpaperLoader;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/sprint/w/installer/WallpaperChooser;->mLoader:Lcom/sprint/w/installer/WallpaperChooser$WallpaperLoader;

    invoke-virtual {v0}, Lcom/sprint/w/installer/WallpaperChooser$WallpaperLoader;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_1a

    .line 124
    iget-object v0, p0, Lcom/sprint/w/installer/WallpaperChooser;->mLoader:Lcom/sprint/w/installer/WallpaperChooser$WallpaperLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/WallpaperChooser$WallpaperLoader;->cancel(Z)Z

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprint/w/installer/WallpaperChooser;->mLoader:Lcom/sprint/w/installer/WallpaperChooser$WallpaperLoader;

    .line 127
    :cond_1a
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/sprint/w/installer/WallpaperChooser;->mLoader:Lcom/sprint/w/installer/WallpaperChooser$WallpaperLoader;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/sprint/w/installer/WallpaperChooser;->mLoader:Lcom/sprint/w/installer/WallpaperChooser$WallpaperLoader;

    invoke-virtual {v0}, Lcom/sprint/w/installer/WallpaperChooser$WallpaperLoader;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_13

    .line 131
    iget-object v0, p0, Lcom/sprint/w/installer/WallpaperChooser;->mLoader:Lcom/sprint/w/installer/WallpaperChooser$WallpaperLoader;

    invoke-virtual {v0}, Lcom/sprint/w/installer/WallpaperChooser$WallpaperLoader;->cancel()V

    .line 133
    :cond_13
    new-instance v0, Lcom/sprint/w/installer/WallpaperChooser$WallpaperLoader;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/WallpaperChooser$WallpaperLoader;-><init>(Lcom/sprint/w/installer/WallpaperChooser;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/WallpaperChooser$WallpaperLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    check-cast v0, Lcom/sprint/w/installer/WallpaperChooser$WallpaperLoader;

    iput-object v0, p0, Lcom/sprint/w/installer/WallpaperChooser;->mLoader:Lcom/sprint/w/installer/WallpaperChooser$WallpaperLoader;

    .line 134
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 157
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 115
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprint/w/installer/WallpaperChooser;->mIsWallpaperSet:Z

    .line 117
    return-void
.end method
