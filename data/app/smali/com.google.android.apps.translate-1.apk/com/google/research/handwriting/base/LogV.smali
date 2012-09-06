.class public Lcom/google/research/handwriting/base/LogV;
.super Ljava/lang/Object;
.source "LogV.java"


# static fields
.field private static mLogVerbosity:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static arrayToString([F)Ljava/lang/String;
    .registers 4
    .parameter "t"

    .prologue
    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .local v1, s:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    array-length v2, p0

    if-ge v0, v2, :cond_18

    .line 71
    if-lez v0, :cond_10

    .line 72
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    :cond_10
    aget v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 76
    :cond_18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static arrayToString([Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, t:[Ljava/lang/Object;,"[TT;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .local v1, s:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    array-length v2, p0

    if-ge v0, v2, :cond_18

    .line 59
    if-lez v0, :cond_10

    .line 60
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    :cond_10
    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 64
    :cond_18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static arrayToString([S)Ljava/lang/String;
    .registers 4
    .parameter "t"

    .prologue
    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .local v1, s:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    array-length v2, p0

    if-ge v0, v2, :cond_18

    .line 83
    if-lez v0, :cond_10

    .line 84
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    :cond_10
    aget-short v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 88
    :cond_18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static i(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "v"
    .parameter "tag"
    .parameter "message"

    .prologue
    .line 36
    sget v0, Lcom/google/research/handwriting/base/LogV;->mLogVerbosity:I

    if-lt v0, p0, :cond_7

    .line 37
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_7
    return-void
.end method

.method public static i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .parameter "v"
    .parameter "tag"
    .parameter "message"
    .parameter "e"

    .prologue
    .line 50
    sget v0, Lcom/google/research/handwriting/base/LogV;->mLogVerbosity:I

    if-lt v0, p0, :cond_7

    .line 51
    invoke-static {p1, p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    :cond_7
    return-void
.end method

.method public static logVerbosity()I
    .registers 1

    .prologue
    .line 25
    sget v0, Lcom/google/research/handwriting/base/LogV;->mLogVerbosity:I

    return v0
.end method

.method public static setLogVerbosity(I)V
    .registers 1
    .parameter "logVerbosity"

    .prologue
    .line 21
    sput p0, Lcom/google/research/handwriting/base/LogV;->mLogVerbosity:I

    .line 22
    return-void
.end method
