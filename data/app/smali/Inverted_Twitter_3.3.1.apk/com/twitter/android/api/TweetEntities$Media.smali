.class public Lcom/twitter/android/api/TweetEntities$Media;
.super Lcom/twitter/android/api/TweetEntities$Url;


# static fields
.field private static final serialVersionUID:J = -0x526a22f15ceec44L


# instance fields
.field public height:I

.field public id:J

.field public insecureMediaUrl:Ljava/lang/String;

.field public mediaUrl:Ljava/lang/String;

.field public type:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/twitter/android/api/TweetEntities$Url;-><init>()V

    return-void
.end method

.method public static a(Lcom/twitter/android/api/TweetEntities$Url;)Lcom/twitter/android/api/TweetEntities$Media;
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/api/TweetEntities$Url;->expandedUrl:Ljava/lang/String;

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/twitter/android/api/TweetEntities$Url;->url:Ljava/lang/String;

    :goto_6
    invoke-static {v0}, Lcom/twitter/android/util/j;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    new-instance v1, Lcom/twitter/android/api/TweetEntities$Media;

    invoke-direct {v1}, Lcom/twitter/android/api/TweetEntities$Media;-><init>()V

    iget-object v2, p0, Lcom/twitter/android/api/TweetEntities$Url;->url:Ljava/lang/String;

    iput-object v2, v1, Lcom/twitter/android/api/TweetEntities$Media;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/twitter/android/api/TweetEntities$Url;->expandedUrl:Ljava/lang/String;

    iput-object v2, v1, Lcom/twitter/android/api/TweetEntities$Media;->expandedUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/twitter/android/api/TweetEntities$Url;->displayUrl:Ljava/lang/String;

    iput-object v2, v1, Lcom/twitter/android/api/TweetEntities$Media;->displayUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/android/util/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/twitter/android/api/TweetEntities$Media;->mediaUrl:Ljava/lang/String;

    iget v0, p0, Lcom/twitter/android/api/TweetEntities$Url;->start:I

    iput v0, v1, Lcom/twitter/android/api/TweetEntities$Media;->start:I

    iget v0, p0, Lcom/twitter/android/api/TweetEntities$Url;->end:I

    iput v0, v1, Lcom/twitter/android/api/TweetEntities$Media;->end:I

    const/4 v0, 0x1

    iput v0, v1, Lcom/twitter/android/api/TweetEntities$Media;->type:I

    move-object v0, v1

    :goto_2f
    return-object v0

    :cond_30
    iget-object v0, p0, Lcom/twitter/android/api/TweetEntities$Url;->expandedUrl:Ljava/lang/String;

    goto :goto_6

    :cond_33
    const/4 v0, 0x0

    goto :goto_2f
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
    invoke-super {p0, p1}, Lcom/twitter/android/api/TweetEntities$Url;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    move v0, v1

    goto :goto_4

    :cond_1b
    check-cast p1, Lcom/twitter/android/api/TweetEntities$Media;

    iget-wide v2, p0, Lcom/twitter/android/api/TweetEntities$Media;->id:J

    iget-wide v4, p1, Lcom/twitter/android/api/TweetEntities$Media;->id:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 7

    invoke-super {p0}, Lcom/twitter/android/api/TweetEntities$Url;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/twitter/android/api/TweetEntities$Media;->id:J

    iget-wide v3, p0, Lcom/twitter/android/api/TweetEntities$Media;->id:J

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method
