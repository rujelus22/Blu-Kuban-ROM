.class interface abstract Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueAccess;
.super Ljava/lang/Object;
.source "AtHomeContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/athome/AtHomeContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "PlayQueueAccess"
.end annotation


# virtual methods
.method public abstract getSize()I
.end method

.method public abstract getSong(J)Lcom/google/android/music/athome/api/AtHomeSongInfo;
.end method

.method public abstract getSongs()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/music/athome/api/AtHomeSongInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSubmitter(J)Lcom/google/android/music/athome/api/SubmitterInfo;
.end method

.method public abstract getToken(J)Ljava/lang/String;
.end method

.method public abstract moveSong(JJ)Z
.end method

.method public abstract removeSong(J)Z
.end method
