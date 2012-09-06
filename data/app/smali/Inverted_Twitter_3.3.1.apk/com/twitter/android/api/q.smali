.class public final Lcom/twitter/android/api/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/twitter/android/api/g;


# instance fields
.field private final a:J

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:Lcom/twitter/android/api/ac;

.field private final i:I

.field private volatile j:I


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILcom/twitter/android/api/ac;I)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/twitter/android/api/q;->a:J

    iput-object p3, p0, Lcom/twitter/android/api/q;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/twitter/android/api/q;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/twitter/android/api/q;->d:Ljava/lang/String;

    iput p6, p0, Lcom/twitter/android/api/q;->e:I

    iput p7, p0, Lcom/twitter/android/api/q;->f:I

    iput p8, p0, Lcom/twitter/android/api/q;->g:I

    iput-object p9, p0, Lcom/twitter/android/api/q;->h:Lcom/twitter/android/api/ac;

    iput p10, p0, Lcom/twitter/android/api/q;->i:I

    return-void
.end method


# virtual methods
.method public final a()J
    .registers 3

    iget-wide v0, p0, Lcom/twitter/android/api/q;->a:J

    return-wide v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/api/q;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/api/q;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/api/q;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final e()I
    .registers 2

    iget v0, p0, Lcom/twitter/android/api/q;->e:I

    return v0
.end method

.method public final f()I
    .registers 2

    iget v0, p0, Lcom/twitter/android/api/q;->f:I

    return v0
.end method

.method public final g()I
    .registers 2

    iget v0, p0, Lcom/twitter/android/api/q;->g:I

    return v0
.end method

.method public final h()Lcom/twitter/android/api/ac;
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/api/q;->h:Lcom/twitter/android/api/ac;

    return-object v0
.end method

.method public final hashCode()I
    .registers 7

    const/4 v1, 0x0

    iget v0, p0, Lcom/twitter/android/api/q;->j:I

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/twitter/android/api/q;->j:I

    :goto_7
    return v0

    :cond_8
    iget-wide v2, p0, Lcom/twitter/android/api/q;->a:J

    iget-wide v4, p0, Lcom/twitter/android/api/q;->a:J

    const/16 v0, 0x20

    ushr-long/2addr v4, v0

    xor-long/2addr v2, v4

    long-to-int v0, v2

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/twitter/android/api/q;->b:Ljava/lang/String;

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/twitter/android/api/q;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1f
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/twitter/android/api/q;->c:Ljava/lang/String;

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/twitter/android/api/q;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/twitter/android/api/q;->d:Ljava/lang/String;

    if-eqz v2, :cond_39

    iget-object v1, p0, Lcom/twitter/android/api/q;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_39
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/twitter/android/api/q;->i:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/twitter/android/api/q;->e:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/twitter/android/api/q;->f:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/twitter/android/api/q;->e:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/twitter/android/api/q;->g:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/twitter/android/api/q;->j:I

    iget v0, p0, Lcom/twitter/android/api/q;->j:I

    goto :goto_7

    :cond_58
    move v0, v1

    goto :goto_1f

    :cond_5a
    move v0, v1

    goto :goto_2c
.end method

.method public final i()I
    .registers 2

    iget v0, p0, Lcom/twitter/android/api/q;->i:I

    return v0
.end method
