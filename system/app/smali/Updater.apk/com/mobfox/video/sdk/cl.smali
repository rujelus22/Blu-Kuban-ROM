.class public final Lcom/mobfox/video/sdk/cl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:I

.field private b:I

.field private c:Lcom/mobfox/video/sdk/cs;

.field private d:Lcom/mobfox/video/sdk/g;

.field private e:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lcom/mobfox/video/sdk/cl;->a:I

    return v0
.end method

.method public final a(I)V
    .registers 2

    iput p1, p0, Lcom/mobfox/video/sdk/cl;->a:I

    return-void
.end method

.method public final a(J)V
    .registers 3

    iput-wide p1, p0, Lcom/mobfox/video/sdk/cl;->e:J

    return-void
.end method

.method public final a(Lcom/mobfox/video/sdk/cs;)V
    .registers 2

    iput-object p1, p0, Lcom/mobfox/video/sdk/cl;->c:Lcom/mobfox/video/sdk/cs;

    return-void
.end method

.method public final a(Lcom/mobfox/video/sdk/g;)V
    .registers 2

    iput-object p1, p0, Lcom/mobfox/video/sdk/cl;->d:Lcom/mobfox/video/sdk/g;

    return-void
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Lcom/mobfox/video/sdk/cl;->b:I

    return v0
.end method

.method public final b(I)V
    .registers 2

    iput p1, p0, Lcom/mobfox/video/sdk/cl;->b:I

    return-void
.end method

.method public final c()Lcom/mobfox/video/sdk/cs;
    .registers 2

    iget-object v0, p0, Lcom/mobfox/video/sdk/cl;->c:Lcom/mobfox/video/sdk/cs;

    return-object v0
.end method

.method public final d()Lcom/mobfox/video/sdk/g;
    .registers 2

    iget-object v0, p0, Lcom/mobfox/video/sdk/cl;->d:Lcom/mobfox/video/sdk/g;

    return-object v0
.end method

.method public final e()J
    .registers 3

    iget-wide v0, p0, Lcom/mobfox/video/sdk/cl;->e:J

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RichMediaAD [timestamp="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/mobfox/video/sdk/cl;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobfox/video/sdk/cl;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", animation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobfox/video/sdk/cl;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", video="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobfox/video/sdk/cl;->c:Lcom/mobfox/video/sdk/cs;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", interstitial="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobfox/video/sdk/cl;->d:Lcom/mobfox/video/sdk/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
