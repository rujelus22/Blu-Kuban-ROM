.class public Lcom/google/android/music/sync/api/ConflictException;
.super Ljava/lang/Exception;
.source "ConflictException.java"


# instance fields
.field private mCount:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 9
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/music/sync/api/ConflictException;->mCount:I

    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "message"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 9
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/music/sync/api/ConflictException;->mCount:I

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .parameter "message"
    .parameter "cause"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/music/sync/api/ConflictException;->mCount:I

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 3
    .parameter "cause"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 9
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/music/sync/api/ConflictException;->mCount:I

    .line 20
    return-void
.end method


# virtual methods
.method public getConflictCount()I
    .registers 2

    .prologue
    .line 35
    iget v0, p0, Lcom/google/android/music/sync/api/ConflictException;->mCount:I

    return v0
.end method

.method public setConflictCount(I)V
    .registers 2
    .parameter "count"

    .prologue
    .line 27
    iput p1, p0, Lcom/google/android/music/sync/api/ConflictException;->mCount:I

    .line 28
    return-void
.end method
