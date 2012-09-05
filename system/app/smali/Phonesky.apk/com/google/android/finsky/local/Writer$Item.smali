.class public Lcom/google/android/finsky/local/Writer$Item;
.super Ljava/lang/Object;
.source "Writer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/local/Writer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field public final mOperation:Lcom/google/android/finsky/local/Writer$Op;

.field public final mWritable:Lcom/google/android/finsky/local/Writable;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/local/Writer$Op;Lcom/google/android/finsky/local/Writable;)V
    .registers 3
    .parameter "operation"
    .parameter "writable"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/google/android/finsky/local/Writer$Item;->mOperation:Lcom/google/android/finsky/local/Writer$Op;

    .line 26
    iput-object p2, p0, Lcom/google/android/finsky/local/Writer$Item;->mWritable:Lcom/google/android/finsky/local/Writable;

    .line 27
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 31
    if-ne p0, p1, :cond_5

    .line 40
    :cond_4
    :goto_4
    return v1

    .line 32
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    goto :goto_4

    :cond_13
    move-object v0, p1

    .line 34
    check-cast v0, Lcom/google/android/finsky/local/Writer$Item;

    .line 36
    .local v0, item:Lcom/google/android/finsky/local/Writer$Item;
    iget-object v3, p0, Lcom/google/android/finsky/local/Writer$Item;->mOperation:Lcom/google/android/finsky/local/Writer$Op;

    iget-object v4, v0, Lcom/google/android/finsky/local/Writer$Item;->mOperation:Lcom/google/android/finsky/local/Writer$Op;

    if-eq v3, v4, :cond_1e

    move v1, v2

    goto :goto_4

    .line 37
    :cond_1e
    iget-object v3, p0, Lcom/google/android/finsky/local/Writer$Item;->mWritable:Lcom/google/android/finsky/local/Writable;

    if-eqz v3, :cond_2e

    iget-object v3, p0, Lcom/google/android/finsky/local/Writer$Item;->mWritable:Lcom/google/android/finsky/local/Writable;

    iget-object v4, v0, Lcom/google/android/finsky/local/Writer$Item;->mWritable:Lcom/google/android/finsky/local/Writable;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_2c
    move v1, v2

    .line 38
    goto :goto_4

    .line 37
    :cond_2e
    iget-object v3, v0, Lcom/google/android/finsky/local/Writer$Item;->mWritable:Lcom/google/android/finsky/local/Writable;

    if-eqz v3, :cond_4

    goto :goto_2c
.end method

.method public hashCode()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 45
    iget-object v2, p0, Lcom/google/android/finsky/local/Writer$Item;->mOperation:Lcom/google/android/finsky/local/Writer$Op;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/google/android/finsky/local/Writer$Item;->mOperation:Lcom/google/android/finsky/local/Writer$Op;

    invoke-virtual {v2}, Lcom/google/android/finsky/local/Writer$Op;->hashCode()I

    move-result v0

    .line 46
    .local v0, result:I
    :goto_b
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/google/android/finsky/local/Writer$Item;->mWritable:Lcom/google/android/finsky/local/Writable;

    if-eqz v3, :cond_17

    iget-object v1, p0, Lcom/google/android/finsky/local/Writer$Item;->mWritable:Lcom/google/android/finsky/local/Writable;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_17
    add-int v0, v2, v1

    .line 47
    return v0

    .end local v0           #result:I
    :cond_1a
    move v0, v1

    .line 45
    goto :goto_b
.end method
