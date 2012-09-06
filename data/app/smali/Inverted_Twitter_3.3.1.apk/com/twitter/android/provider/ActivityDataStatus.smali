.class public Lcom/twitter/android/provider/ActivityDataStatus;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2790ee9fdfb4908dL


# instance fields
.field public final createdAt:J

.field public final entities:[B

.field public final hasPoi:Z

.field public final id:J

.field public final renderedText:Ljava/lang/String;

.field public final replyStatusId:J

.field public final text:Ljava/lang/String;

.field public final user:Lcom/twitter/android/provider/ActivityDataUser;


# direct methods
.method public constructor <init>(Lcom/twitter/android/api/aa;)V
    .registers 5

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Lcom/twitter/android/api/aa;->a:J

    iput-wide v0, p0, Lcom/twitter/android/provider/ActivityDataStatus;->id:J

    iget-wide v0, p1, Lcom/twitter/android/api/aa;->d:J

    iput-wide v0, p0, Lcom/twitter/android/provider/ActivityDataStatus;->createdAt:J

    iget-object v0, p1, Lcom/twitter/android/api/aa;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/android/provider/ActivityDataStatus;->text:Ljava/lang/String;

    iget-object v0, p1, Lcom/twitter/android/api/aa;->n:Lcom/twitter/android/api/TweetEntities;

    if-nez v0, :cond_33

    iput-object v2, p0, Lcom/twitter/android/provider/ActivityDataStatus;->entities:[B

    iput-object v2, p0, Lcom/twitter/android/provider/ActivityDataStatus;->renderedText:Ljava/lang/String;

    :goto_18
    new-instance v0, Lcom/twitter/android/provider/ActivityDataUser;

    iget-object v1, p1, Lcom/twitter/android/api/aa;->m:Lcom/twitter/android/api/ac;

    invoke-direct {v0, v1}, Lcom/twitter/android/provider/ActivityDataUser;-><init>(Lcom/twitter/android/api/ac;)V

    iput-object v0, p0, Lcom/twitter/android/provider/ActivityDataStatus;->user:Lcom/twitter/android/provider/ActivityDataUser;

    iget-wide v0, p1, Lcom/twitter/android/api/aa;->g:J

    iput-wide v0, p0, Lcom/twitter/android/provider/ActivityDataStatus;->replyStatusId:J

    iget-object v0, p1, Lcom/twitter/android/api/aa;->p:Lcom/twitter/android/api/u;

    if-eqz v0, :cond_42

    iget-object v0, p1, Lcom/twitter/android/api/aa;->p:Lcom/twitter/android/api/u;

    iget-object v0, v0, Lcom/twitter/android/api/u;->b:Ljava/lang/String;

    if-eqz v0, :cond_42

    const/4 v0, 0x1

    :goto_30
    iput-boolean v0, p0, Lcom/twitter/android/provider/ActivityDataStatus;->hasPoi:Z

    return-void

    :cond_33
    iget-object v0, p1, Lcom/twitter/android/api/aa;->n:Lcom/twitter/android/api/TweetEntities;

    invoke-virtual {v0}, Lcom/twitter/android/api/TweetEntities;->a()[B

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/provider/ActivityDataStatus;->entities:[B

    invoke-virtual {p1}, Lcom/twitter/android/api/aa;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/provider/ActivityDataStatus;->renderedText:Ljava/lang/String;

    goto :goto_18

    :cond_42
    const/4 v0, 0x0

    goto :goto_30
.end method

.method public static a([B)Ljava/util/ArrayList;
    .registers 2

    invoke-static {p0}, Lcom/twitter/android/util/x;->a([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public static a(Ljava/util/ArrayList;)[B
    .registers 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/aa;

    new-instance v3, Lcom/twitter/android/provider/ActivityDataStatus;

    invoke-virtual {v0}, Lcom/twitter/android/api/aa;->b()Lcom/twitter/android/api/aa;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/twitter/android/provider/ActivityDataStatus;-><init>(Lcom/twitter/android/api/aa;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_26
    invoke-static {v1}, Lcom/twitter/android/util/x;->a(Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/provider/ActivityDataStatus;->renderedText:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/twitter/android/provider/ActivityDataStatus;->renderedText:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/twitter/android/provider/ActivityDataStatus;->text:Ljava/lang/String;

    goto :goto_6
.end method

.method public final a(Lcom/twitter/android/api/aa;)Z
    .registers 6

    iget-wide v0, p0, Lcom/twitter/android/provider/ActivityDataStatus;->id:J

    iget-wide v2, p1, Lcom/twitter/android/api/aa;->a:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

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
    check-cast p1, Lcom/twitter/android/provider/ActivityDataStatus;

    iget-wide v2, p0, Lcom/twitter/android/provider/ActivityDataStatus;->id:J

    iget-wide v4, p1, Lcom/twitter/android/provider/ActivityDataStatus;->id:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1f

    move v0, v1

    goto :goto_4

    :cond_1f
    iget-object v2, p0, Lcom/twitter/android/provider/ActivityDataStatus;->user:Lcom/twitter/android/provider/ActivityDataUser;

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lcom/twitter/android/provider/ActivityDataStatus;->user:Lcom/twitter/android/provider/ActivityDataUser;

    iget-object v3, p1, Lcom/twitter/android/provider/ActivityDataStatus;->user:Lcom/twitter/android/provider/ActivityDataUser;

    invoke-virtual {v2, v3}, Lcom/twitter/android/provider/ActivityDataUser;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :goto_2d
    move v0, v1

    goto :goto_4

    :cond_2f
    iget-object v2, p1, Lcom/twitter/android/provider/ActivityDataStatus;->user:Lcom/twitter/android/provider/ActivityDataUser;

    if-eqz v2, :cond_4

    goto :goto_2d
.end method

.method public hashCode()I
    .registers 6

    iget-wide v0, p0, Lcom/twitter/android/provider/ActivityDataStatus;->id:J

    iget-wide v2, p0, Lcom/twitter/android/provider/ActivityDataStatus;->id:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/twitter/android/provider/ActivityDataStatus;->user:Lcom/twitter/android/provider/ActivityDataUser;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/twitter/android/provider/ActivityDataStatus;->user:Lcom/twitter/android/provider/ActivityDataUser;

    invoke-virtual {v0}, Lcom/twitter/android/provider/ActivityDataUser;->hashCode()I

    move-result v0

    :goto_15
    add-int/2addr v0, v1

    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_15
.end method
