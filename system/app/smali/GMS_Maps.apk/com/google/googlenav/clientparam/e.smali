.class public final Lcom/google/googlenav/clientparam/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static j:Lcom/google/googlenav/clientparam/e;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:J

.field private final i:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlenav/clientparam/e;->j:Lcom/google/googlenav/clientparam/e;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 4
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/clientparam/e;->a:I

    .line 42
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/clientparam/e;->b:I

    .line 43
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/clientparam/e;->d:I

    .line 44
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/clientparam/e;->e:I

    .line 46
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/clientparam/e;->f:I

    .line 48
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/clientparam/e;->g:I

    .line 50
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/clientparam/e;->c:I

    .line 52
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/clientparam/e;->h:J

    .line 54
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/clientparam/e;->i:Z

    .line 56
    return-void
.end method

.method public static j()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 2

    .prologue
    .line 126
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/ClientParameters;->r:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    return-object v0
.end method

.method public static k()Lcom/google/googlenav/clientparam/e;
    .registers 2

    .prologue
    .line 135
    sget-object v0, Lcom/google/googlenav/clientparam/e;->j:Lcom/google/googlenav/clientparam/e;

    if-eqz v0, :cond_7

    .line 136
    sget-object v0, Lcom/google/googlenav/clientparam/e;->j:Lcom/google/googlenav/clientparam/e;

    .line 144
    :cond_6
    :goto_6
    return-object v0

    .line 138
    :cond_7
    invoke-static {}, Lcom/google/googlenav/clientparam/f;->c()Lcom/google/googlenav/clientparam/e;

    move-result-object v0

    .line 140
    if-nez v0, :cond_6

    .line 141
    new-instance v0, Lcom/google/googlenav/clientparam/e;

    invoke-static {}, Lcom/google/googlenav/clientparam/e;->j()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/clientparam/e;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto :goto_6
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 63
    iget v0, p0, Lcom/google/googlenav/clientparam/e;->a:I

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 70
    iget v0, p0, Lcom/google/googlenav/clientparam/e;->b:I

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 78
    iget v0, p0, Lcom/google/googlenav/clientparam/e;->c:I

    return v0
.end method

.method public d()J
    .registers 5

    .prologue
    .line 85
    iget v0, p0, Lcom/google/googlenav/clientparam/e;->d:I

    int-to-long v0, v0

    const-wide/32 v2, 0xea60

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public e()J
    .registers 5

    .prologue
    .line 92
    iget v0, p0, Lcom/google/googlenav/clientparam/e;->e:I

    int-to-long v0, v0

    const-wide/32 v2, 0xea60

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public f()J
    .registers 5

    .prologue
    .line 99
    iget v0, p0, Lcom/google/googlenav/clientparam/e;->f:I

    int-to-long v0, v0

    const-wide/32 v2, 0xea60

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public g()J
    .registers 5

    .prologue
    .line 108
    iget v0, p0, Lcom/google/googlenav/clientparam/e;->g:I

    int-to-long v0, v0

    const-wide/32 v2, 0x5265c00

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public h()J
    .registers 3

    .prologue
    .line 115
    iget-wide v0, p0, Lcom/google/googlenav/clientparam/e;->h:J

    return-wide v0
.end method

.method public i()Z
    .registers 2

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/google/googlenav/clientparam/e;->i:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "maxTiles: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/googlenav/clientparam/e;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " maxServerTiles: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/googlenav/clientparam/e;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " prefetchPeriod: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/googlenav/clientparam/e;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " prefetchInitiatorDelay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/googlenav/clientparam/e;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " prefetchInitiatorPeriod: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/googlenav/clientparam/e;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " timeToWipe: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/googlenav/clientparam/e;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
