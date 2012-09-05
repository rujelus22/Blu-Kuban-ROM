.class interface abstract Lcom/google/android/apps/plus/service/PhotoCache$CacheListener;
.super Ljava/lang/Object;
.source "PhotoCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/service/PhotoCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "CacheListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onImageDownload(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Object;Ljava/lang/Object;III)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "TE;",
            "Ljava/lang/Object;",
            "III)V"
        }
    .end annotation
.end method

.method public abstract onImageLoaded(Ljava/lang/Object;Landroid/graphics/Bitmap;Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation
.end method
