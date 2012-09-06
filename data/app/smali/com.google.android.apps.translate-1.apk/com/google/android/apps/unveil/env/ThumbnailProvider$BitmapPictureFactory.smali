.class final Lcom/google/android/apps/unveil/env/ThumbnailProvider$BitmapPictureFactory;
.super Ljava/lang/Object;
.source "ThumbnailProvider.java"

# interfaces
.implements Lcom/google/android/apps/unveil/env/cache/DatabaseCache$PictureFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/env/ThumbnailProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BitmapPictureFactory"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/unveil/env/ThumbnailProvider$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 305
    invoke-direct {p0}, Lcom/google/android/apps/unveil/env/ThumbnailProvider$BitmapPictureFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public toPicture([B)Lcom/google/android/apps/unveil/env/Picture;
    .registers 3
    .parameter "data"

    .prologue
    .line 308
    #calls: Lcom/google/android/apps/unveil/env/ThumbnailProvider;->toPicture([B)Lcom/google/android/apps/unveil/env/Picture;
    invoke-static {p1}, Lcom/google/android/apps/unveil/env/ThumbnailProvider;->access$200([B)Lcom/google/android/apps/unveil/env/Picture;

    move-result-object v0

    return-object v0
.end method
