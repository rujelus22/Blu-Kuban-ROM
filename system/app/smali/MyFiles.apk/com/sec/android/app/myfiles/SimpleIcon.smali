.class public Lcom/sec/android/app/myfiles/SimpleIcon;
.super Ljava/lang/Object;
.source "SimpleIcon.java"


# instance fields
.field private brokenFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFile:Ljava/io/File;

.field private mIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Ljava/io/File;Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .parameter "file"
    .parameter "bullet"

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/SimpleIcon;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/SimpleIcon;->brokenFileList:Ljava/util/ArrayList;

    .line 45
    iput-object p2, p0, Lcom/sec/android/app/myfiles/SimpleIcon;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 46
    iput-object p1, p0, Lcom/sec/android/app/myfiles/SimpleIcon;->mFile:Ljava/io/File;

    .line 47
    return-void
.end method


# virtual methods
.method public getFile()Ljava/io/File;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/myfiles/SimpleIcon;->mFile:Ljava/io/File;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sec/android/app/myfiles/SimpleIcon;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .parameter "icon"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/sec/android/app/myfiles/SimpleIcon;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 59
    return-void
.end method

.method public thumbnailBitmap(I)Landroid/graphics/Bitmap;
    .registers 3
    .parameter "shapeId"

    .prologue
    .line 62
    sparse-switch p1, :sswitch_data_3c

    .line 80
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 64
    :sswitch_5
    iget-object v0, p0, Lcom/sec/android/app/myfiles/SimpleIcon;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/myfiles/MediaLoader;->getImageBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_4

    .line 66
    :sswitch_10
    iget-object v0, p0, Lcom/sec/android/app/myfiles/SimpleIcon;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/myfiles/MediaLoader;->getImageBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_4

    .line 68
    :sswitch_1b
    iget-object v0, p0, Lcom/sec/android/app/myfiles/SimpleIcon;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/myfiles/MediaLoader;->getImageBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_4

    .line 70
    :sswitch_26
    iget-object v0, p0, Lcom/sec/android/app/myfiles/SimpleIcon;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/myfiles/MediaLoader;->getVideoBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_4

    .line 72
    :sswitch_31
    iget-object v0, p0, Lcom/sec/android/app/myfiles/SimpleIcon;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/myfiles/MediaLoader;->getApkBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_4

    .line 62
    :sswitch_data_3c
    .sparse-switch
        0x0 -> :sswitch_5
        0x1 -> :sswitch_10
        0x2 -> :sswitch_1b
        0x3e8 -> :sswitch_26
        0x3e9 -> :sswitch_31
    .end sparse-switch
.end method
