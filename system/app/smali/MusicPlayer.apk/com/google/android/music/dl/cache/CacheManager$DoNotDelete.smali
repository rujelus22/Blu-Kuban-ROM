.class public interface abstract Lcom/google/android/music/dl/cache/CacheManager$DoNotDelete;
.super Ljava/lang/Object;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/dl/cache/CacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DoNotDelete"
.end annotation


# virtual methods
.method public abstract getDoNotDeletes()Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/music/dl/ContentIdentifier;",
            ">;"
        }
    .end annotation
.end method

.method public abstract requestDeleteFile(Ljava/io/File;)Z
.end method
