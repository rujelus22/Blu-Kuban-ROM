.class public Lcom/twitter/android/api/TweetEntities$Url;
.super Lcom/twitter/android/api/TweetEntities$Entity;


# static fields
.field private static final serialVersionUID:J = 0x7abfc9bf453724d6L


# instance fields
.field public displayUrl:Ljava/lang/String;

.field public expandedUrl:Ljava/lang/String;

.field public insecureUrl:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/twitter/android/api/TweetEntities$Entity;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

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
    check-cast p1, Lcom/twitter/android/api/TweetEntities$Url;

    iget-object v2, p0, Lcom/twitter/android/api/TweetEntities$Url;->url:Ljava/lang/String;

    if-eqz v2, :cond_2d

    iget-object v2, p0, Lcom/twitter/android/api/TweetEntities$Url;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/twitter/android/api/TweetEntities$Url;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_2b
    move v0, v1

    goto :goto_4

    :cond_2d
    iget-object v2, p1, Lcom/twitter/android/api/TweetEntities$Url;->url:Ljava/lang/String;

    if-nez v2, :cond_2b

    goto :goto_4
.end method

.method public hashCode()I
    .registers 3

    invoke-super {p0}, Lcom/twitter/android/api/TweetEntities$Entity;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/twitter/android/api/TweetEntities$Url;->url:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/twitter/android/api/TweetEntities$Url;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_10
    add-int/2addr v0, v1

    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/api/TweetEntities$Url;->displayUrl:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/twitter/android/api/TweetEntities$Url;->displayUrl:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/twitter/android/api/TweetEntities$Url;->expandedUrl:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/twitter/android/api/TweetEntities$Url;->expandedUrl:Ljava/lang/String;

    goto :goto_6

    :cond_e
    iget-object v0, p0, Lcom/twitter/android/api/TweetEntities$Url;->url:Ljava/lang/String;

    goto :goto_6
.end method
