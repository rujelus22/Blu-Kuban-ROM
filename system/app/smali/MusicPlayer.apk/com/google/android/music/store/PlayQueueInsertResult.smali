.class public final Lcom/google/android/music/store/PlayQueueInsertResult;
.super Ljava/lang/Object;
.source "PlayQueueInsertResult.java"


# instance fields
.field private final mGroupId:J

.field private final mGroupPosition:I

.field private final mGroupSize:I

.field private final mNewPlayPosition:I


# direct methods
.method constructor <init>(JIII)V
    .registers 6
    .parameter "groupId"
    .parameter "groupSize"
    .parameter "groupPosition"
    .parameter "newPlayPosition"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-wide p1, p0, Lcom/google/android/music/store/PlayQueueInsertResult;->mGroupId:J

    .line 21
    iput p3, p0, Lcom/google/android/music/store/PlayQueueInsertResult;->mGroupSize:I

    .line 22
    iput p5, p0, Lcom/google/android/music/store/PlayQueueInsertResult;->mNewPlayPosition:I

    .line 23
    iput p4, p0, Lcom/google/android/music/store/PlayQueueInsertResult;->mGroupPosition:I

    .line 24
    return-void
.end method


# virtual methods
.method public getGroupId()J
    .registers 3

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/google/android/music/store/PlayQueueInsertResult;->mGroupId:J

    return-wide v0
.end method

.method public getGroupPosition()I
    .registers 3

    .prologue
    .line 54
    iget v0, p0, Lcom/google/android/music/store/PlayQueueInsertResult;->mGroupPosition:I

    if-gez v0, :cond_c

    .line 55
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempt to get the position of non-contiguous group"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_c
    iget v0, p0, Lcom/google/android/music/store/PlayQueueInsertResult;->mGroupPosition:I

    return v0
.end method

.method public getNewPlayPosition()I
    .registers 2

    .prologue
    .line 64
    iget v0, p0, Lcom/google/android/music/store/PlayQueueInsertResult;->mNewPlayPosition:I

    return v0
.end method
