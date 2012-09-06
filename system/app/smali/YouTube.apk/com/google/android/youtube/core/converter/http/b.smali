.class public final Lcom/google/android/youtube/core/converter/http/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string v0, "videoId cannot be null or empty"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/http/b;->a:Ljava/lang/String;

    .line 58
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_18

    const/4 v0, 0x1

    :goto_12
    invoke-static {v0}, Lcom/google/android/youtube/core/utils/n;->b(Z)V

    .line 59
    iput-wide p2, p0, Lcom/google/android/youtube/core/converter/http/b;->b:J

    .line 60
    return-void

    .line 58
    :cond_18
    const/4 v0, 0x0

    goto :goto_12
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 64
    if-ne p1, p0, :cond_5

    .line 70
    :cond_4
    :goto_4
    return v0

    .line 66
    :cond_5
    instance-of v2, p1, Lcom/google/android/youtube/core/converter/http/b;

    if-nez v2, :cond_b

    move v0, v1

    .line 67
    goto :goto_4

    .line 69
    :cond_b
    check-cast p1, Lcom/google/android/youtube/core/converter/http/b;

    .line 70
    iget-object v2, p0, Lcom/google/android/youtube/core/converter/http/b;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/youtube/core/converter/http/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-wide v2, p0, Lcom/google/android/youtube/core/converter/http/b;->b:J

    iget-wide v4, p1, Lcom/google/android/youtube/core/converter/http/b;->b:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    :cond_1f
    move v0, v1

    goto :goto_4
.end method

.method public final hashCode()I
    .registers 5

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/youtube/core/converter/http/b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 78
    mul-int/lit8 v0, v0, 0x1f

    new-instance v1, Ljava/lang/Long;

    iget-wide v2, p0, Lcom/google/android/youtube/core/converter/http/b;->b:J

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 79
    return v0
.end method
