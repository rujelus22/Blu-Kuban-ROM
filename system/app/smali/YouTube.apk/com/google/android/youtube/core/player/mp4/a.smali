.class public Lcom/google/android/youtube/core/player/mp4/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Lcom/google/android/youtube/core/player/mp4/s;


# direct methods
.method public constructor <init>(ILcom/google/android/youtube/core/player/mp4/s;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/google/android/youtube/core/player/mp4/a;->a:I

    .line 33
    iput-object p2, p0, Lcom/google/android/youtube/core/player/mp4/a;->b:Lcom/google/android/youtube/core/player/mp4/s;

    .line 34
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 37
    iget v0, p0, Lcom/google/android/youtube/core/player/mp4/a;->a:I

    return v0
.end method

.method public a(Ljava/io/DataInputStream;)V
    .registers 3
    .parameter

    .prologue
    .line 69
    iget v0, p0, Lcom/google/android/youtube/core/player/mp4/a;->a:I

    add-int/lit8 v0, v0, -0x8

    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 70
    return-void
.end method

.method public final b()I
    .registers 2

    .prologue
    .line 52
    iget v0, p0, Lcom/google/android/youtube/core/player/mp4/a;->a:I

    add-int/lit8 v0, v0, -0x8

    return v0
.end method

.method public final c()Lcom/google/android/youtube/core/player/mp4/s;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/youtube/core/player/mp4/a;->b:Lcom/google/android/youtube/core/player/mp4/s;

    return-object v0
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method
