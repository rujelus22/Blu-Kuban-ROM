.class public abstract Lcom/google/android/music/medialist/AlbumList;
.super Lcom/google/android/music/medialist/MediaList;
.source "AlbumList.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 12
    sget-object v0, Lcom/google/android/music/dl/ContentIdentifier$Domain;->DEFAULT:Lcom/google/android/music/dl/ContentIdentifier$Domain;

    invoke-direct {p0, v0}, Lcom/google/android/music/medialist/MediaList;-><init>(Lcom/google/android/music/dl/ContentIdentifier$Domain;)V

    .line 13
    return-void
.end method
