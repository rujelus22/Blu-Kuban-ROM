.class public Lcom/twitter/android/api/TweetEntities$Mention;
.super Lcom/twitter/android/api/TweetEntities$Entity;


# static fields
.field private static final serialVersionUID:J = -0x1bf3dcb8bada3f29L


# instance fields
.field public screenName:Ljava/lang/String;

.field public userId:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/twitter/android/api/TweetEntities$Entity;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
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
    invoke-super {p0, p1}, Lcom/twitter/android/api/TweetEntities$Entity;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    move v0, v1

    goto :goto_4

    :cond_1b
    check-cast p1, Lcom/twitter/android/api/TweetEntities$Mention;

    iget-wide v2, p0, Lcom/twitter/android/api/TweetEntities$Mention;->userId:J

    iget-wide v4, p1, Lcom/twitter/android/api/TweetEntities$Mention;->userId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 7

    invoke-super {p0}, Lcom/twitter/android/api/TweetEntities$Entity;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/twitter/android/api/TweetEntities$Mention;->userId:J

    iget-wide v3, p0, Lcom/twitter/android/api/TweetEntities$Mention;->userId:J

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method
