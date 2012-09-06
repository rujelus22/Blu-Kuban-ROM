.class public final Lcom/google/android/youtube/athome/app/common/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/youtube/athome/app/common/AtHomeSubtitleTrack;
    .registers 6

    .prologue
    .line 71
    new-instance v0, Lcom/google/android/youtube/athome/app/common/AtHomeSubtitleTrack;

    iget-object v1, p0, Lcom/google/android/youtube/athome/app/common/g;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/athome/app/common/g;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/youtube/athome/app/common/g;->c:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/athome/app/common/AtHomeSubtitleTrack;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/athome/app/common/f;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/youtube/athome/app/common/g;
    .registers 2
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/google/android/youtube/athome/app/common/g;->a:Ljava/lang/String;

    .line 76
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/youtube/athome/app/common/g;
    .registers 2
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/google/android/youtube/athome/app/common/g;->b:Ljava/lang/String;

    .line 81
    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/google/android/youtube/athome/app/common/g;
    .registers 2
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/google/android/youtube/athome/app/common/g;->c:Ljava/lang/String;

    .line 86
    return-object p0
.end method
