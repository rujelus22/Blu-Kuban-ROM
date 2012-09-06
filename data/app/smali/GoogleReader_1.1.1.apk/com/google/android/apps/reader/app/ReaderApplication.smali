.class public Lcom/google/android/apps/reader/app/ReaderApplication;
.super Landroid/app/Application;
.source "ReaderApplication.java"


# instance fields
.field private mImageLoader:Lcom/google/android/imageloader/ImageLoader;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .parameter "name"

    .prologue
    .line 39
    const-string v0, "com.google.android.imageloader"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 40
    iget-object v0, p0, Lcom/google/android/apps/reader/app/ReaderApplication;->mImageLoader:Lcom/google/android/imageloader/ImageLoader;

    .line 42
    :goto_a
    return-object v0

    :cond_b
    invoke-super {p0, p1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_a
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 30
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 33
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/ReaderApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 34
    .local v0, resolver:Landroid/content/ContentResolver;
    new-instance v1, Lcom/google/android/imageloader/ImageLoader;

    invoke-direct {v1, v0}, Lcom/google/android/imageloader/ImageLoader;-><init>(Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/google/android/apps/reader/app/ReaderApplication;->mImageLoader:Lcom/google/android/imageloader/ImageLoader;

    .line 35
    return-void
.end method
