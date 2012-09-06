.class public Lcom/twitter/android/provider/ActivityDataUser;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x4704d1fc39b180e9L


# instance fields
.field public final id:J

.field public final name:Ljava/lang/String;

.field public final profileImageUrl:Ljava/lang/String;

.field public final username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/twitter/android/api/ac;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Lcom/twitter/android/api/ac;->a:J

    iput-wide v0, p0, Lcom/twitter/android/provider/ActivityDataUser;->id:J

    iget-object v0, p1, Lcom/twitter/android/api/ac;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/android/provider/ActivityDataUser;->username:Ljava/lang/String;

    iget-object v0, p1, Lcom/twitter/android/api/ac;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/android/provider/ActivityDataUser;->name:Ljava/lang/String;

    iget-object v0, p1, Lcom/twitter/android/api/ac;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/android/provider/ActivityDataUser;->profileImageUrl:Ljava/lang/String;

    return-void
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

    if-eqz v0, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/ac;

    new-instance v3, Lcom/twitter/android/provider/ActivityDataUser;

    invoke-direct {v3, v0}, Lcom/twitter/android/provider/ActivityDataUser;-><init>(Lcom/twitter/android/api/ac;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_22
    invoke-static {v1}, Lcom/twitter/android/util/x;->a(Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/twitter/android/api/ac;)Z
    .registers 6

    iget-wide v0, p0, Lcom/twitter/android/provider/ActivityDataUser;->id:J

    iget-wide v2, p1, Lcom/twitter/android/api/ac;->a:J

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
    check-cast p1, Lcom/twitter/android/provider/ActivityDataUser;

    iget-wide v2, p0, Lcom/twitter/android/provider/ActivityDataUser;->id:J

    iget-wide v4, p1, Lcom/twitter/android/provider/ActivityDataUser;->id:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1f

    move v0, v1

    goto :goto_4

    :cond_1f
    iget-object v2, p0, Lcom/twitter/android/provider/ActivityDataUser;->username:Ljava/lang/String;

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lcom/twitter/android/provider/ActivityDataUser;->username:Ljava/lang/String;

    iget-object v3, p1, Lcom/twitter/android/provider/ActivityDataUser;->username:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :goto_2d
    move v0, v1

    goto :goto_4

    :cond_2f
    iget-object v2, p1, Lcom/twitter/android/provider/ActivityDataUser;->username:Ljava/lang/String;

    if-eqz v2, :cond_4

    goto :goto_2d
.end method

.method public hashCode()I
    .registers 6

    iget-wide v0, p0, Lcom/twitter/android/provider/ActivityDataUser;->id:J

    iget-wide v2, p0, Lcom/twitter/android/provider/ActivityDataUser;->id:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/twitter/android/provider/ActivityDataUser;->username:Ljava/lang/String;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/twitter/android/provider/ActivityDataUser;->username:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_15
    add-int/2addr v0, v1

    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_15
.end method
