.class public Lcom/google/android/music/store/DataNotFoundException;
.super Lcom/google/android/music/store/MusicStoreException;
.source "DataNotFoundException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/google/android/music/store/MusicStoreException;-><init>()V

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "message"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/google/android/music/store/MusicStoreException;-><init>(Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .parameter "message"
    .parameter "cause"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/store/MusicStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2
    .parameter "cause"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/google/android/music/store/MusicStoreException;-><init>(Ljava/lang/Throwable;)V

    .line 26
    return-void
.end method
