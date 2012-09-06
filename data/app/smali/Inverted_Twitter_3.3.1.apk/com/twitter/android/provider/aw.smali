.class final Lcom/twitter/android/provider/aw;
.super Ljava/lang/Object;


# instance fields
.field final a:J

.field final b:Lcom/twitter/android/api/PromotedContent;


# direct methods
.method constructor <init>(JLcom/twitter/android/api/PromotedContent;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/twitter/android/provider/aw;->a:J

    iput-object p3, p0, Lcom/twitter/android/provider/aw;->b:Lcom/twitter/android/api/PromotedContent;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    :cond_11
    move v0, v1

    goto :goto_4

    :cond_13
    check-cast p1, Lcom/twitter/android/provider/aw;

    iget-wide v2, p0, Lcom/twitter/android/provider/aw;->a:J

    iget-wide v4, p1, Lcom/twitter/android/provider/aw;->a:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1f

    move v0, v1

    goto :goto_4

    :cond_1f
    iget-object v2, p0, Lcom/twitter/android/provider/aw;->b:Lcom/twitter/android/api/PromotedContent;

    if-eqz v2, :cond_2c

    iget-object v0, p0, Lcom/twitter/android/provider/aw;->b:Lcom/twitter/android/api/PromotedContent;

    iget-object v1, p1, Lcom/twitter/android/provider/aw;->b:Lcom/twitter/android/api/PromotedContent;

    invoke-virtual {v0, v1}, Lcom/twitter/android/api/PromotedContent;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4

    :cond_2c
    iget-object v2, p1, Lcom/twitter/android/provider/aw;->b:Lcom/twitter/android/api/PromotedContent;

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public final hashCode()I
    .registers 6

    iget-wide v0, p0, Lcom/twitter/android/provider/aw;->a:J

    iget-wide v2, p0, Lcom/twitter/android/provider/aw;->a:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/twitter/android/provider/aw;->b:Lcom/twitter/android/api/PromotedContent;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/twitter/android/provider/aw;->b:Lcom/twitter/android/api/PromotedContent;

    invoke-virtual {v0}, Lcom/twitter/android/api/PromotedContent;->hashCode()I

    move-result v0

    :goto_15
    add-int/2addr v0, v1

    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_15
.end method
