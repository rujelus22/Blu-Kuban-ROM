.class public Lcom/google/android/music/store/PlayQueueAddResult;
.super Ljava/lang/Object;
.source "PlayQueueAddResult.java"


# instance fields
.field private final mAddedSize:I

.field private final mRequestedSize:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .parameter "howManyAdded"
    .parameter "howManyRequested"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p2, p0, Lcom/google/android/music/store/PlayQueueAddResult;->mRequestedSize:I

    .line 19
    iput p1, p0, Lcom/google/android/music/store/PlayQueueAddResult;->mAddedSize:I

    .line 20
    return-void
.end method


# virtual methods
.method public getAddedSize()I
    .registers 2

    .prologue
    .line 27
    iget v0, p0, Lcom/google/android/music/store/PlayQueueAddResult;->mAddedSize:I

    return v0
.end method

.method public getRequestedSize()I
    .registers 2

    .prologue
    .line 23
    iget v0, p0, Lcom/google/android/music/store/PlayQueueAddResult;->mRequestedSize:I

    return v0
.end method
