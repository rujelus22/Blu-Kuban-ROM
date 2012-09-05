.class public Lcom/google/android/youtube/core/model/Rating;
.super Ljava/lang/Object;
.source "Rating.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final classification:Ljava/lang/String;

.field private volatile hashCode:I

.field public final scheme:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "scheme"
    .parameter "classification"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "scheme may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Rating;->scheme:Ljava/lang/String;

    .line 31
    const-string v0, "classification may not be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Rating;->classification:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "object"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 37
    if-ne p0, p1, :cond_5

    .line 45
    :cond_4
    :goto_4
    return v1

    .line 40
    :cond_5
    if-eqz p1, :cond_b

    instance-of v3, p1, Lcom/google/android/youtube/core/model/Rating;

    if-nez v3, :cond_d

    :cond_b
    move v1, v2

    .line 41
    goto :goto_4

    :cond_d
    move-object v0, p1

    .line 44
    check-cast v0, Lcom/google/android/youtube/core/model/Rating;

    .line 45
    .local v0, rating:Lcom/google/android/youtube/core/model/Rating;
    iget-object v3, v0, Lcom/google/android/youtube/core/model/Rating;->scheme:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Rating;->scheme:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    iget-object v3, v0, Lcom/google/android/youtube/core/model/Rating;->classification:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Rating;->classification:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_24
    move v1, v2

    goto :goto_4
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 50
    iget v0, p0, Lcom/google/android/youtube/core/model/Rating;->hashCode:I

    .line 51
    .local v0, result:I
    if-nez v0, :cond_1a

    .line 52
    const/16 v0, 0x11

    .line 53
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Rating;->scheme:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 54
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/youtube/core/model/Rating;->classification:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 55
    iput v0, p0, Lcom/google/android/youtube/core/model/Rating;->hashCode:I

    .line 57
    :cond_1a
    return v0
.end method
