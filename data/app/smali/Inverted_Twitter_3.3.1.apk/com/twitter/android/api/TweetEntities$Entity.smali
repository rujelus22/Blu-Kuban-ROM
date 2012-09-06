.class public Lcom/twitter/android/api/TweetEntities$Entity;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x76ec9a3f42854171L


# instance fields
.field public end:I

.field public start:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/twitter/android/api/TweetEntities$Entity;->start:I

    iput v0, p0, Lcom/twitter/android/api/TweetEntities$Entity;->end:I

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
    check-cast p1, Lcom/twitter/android/api/TweetEntities$Entity;

    iget v2, p0, Lcom/twitter/android/api/TweetEntities$Entity;->end:I

    iget v3, p1, Lcom/twitter/android/api/TweetEntities$Entity;->end:I

    if-ne v2, v3, :cond_21

    iget v2, p0, Lcom/twitter/android/api/TweetEntities$Entity;->start:I

    iget v3, p1, Lcom/twitter/android/api/TweetEntities$Entity;->start:I

    if-eq v2, v3, :cond_4

    :cond_21
    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/twitter/android/api/TweetEntities$Entity;->start:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/twitter/android/api/TweetEntities$Entity;->end:I

    add-int/2addr v0, v1

    return v0
.end method
