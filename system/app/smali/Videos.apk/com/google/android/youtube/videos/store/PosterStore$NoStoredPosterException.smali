.class public Lcom/google/android/youtube/videos/store/PosterStore$NoStoredPosterException;
.super Ljava/lang/Exception;
.source "PosterStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/videos/store/PosterStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoStoredPosterException"
.end annotation


# instance fields
.field public final videoId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "videoId"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/google/android/youtube/videos/store/PosterStore$NoStoredPosterException;->videoId:Ljava/lang/String;

    .line 39
    return-void
.end method
