.class Lr/am;
.super Lr/d;
.source "SourceFile"


# instance fields
.field final synthetic d:Lr/al;


# direct methods
.method constructor <init>(Lr/al;)V
    .registers 2
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lr/am;->d:Lr/al;

    invoke-direct {p0, p1}, Lr/d;-><init>(Lr/c;)V

    return-void
.end method


# virtual methods
.method protected b()I
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 79
    :goto_1
    iget-object v1, p0, Lr/am;->b:[[B

    array-length v1, v1

    if-ge v0, v1, :cond_1a

    .line 80
    iget-object v1, p0, Lr/am;->b:[[B

    aget-object v1, v1, v0

    if-eqz v1, :cond_17

    .line 82
    :try_start_c
    iget-object v1, p0, Lr/am;->b:[[B

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lq/d;->a([BI)I
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_14} :catch_16

    move-result v0

    .line 88
    :goto_15
    return v0

    .line 83
    :catch_16
    move-exception v1

    .line 79
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 88
    :cond_1a
    const/4 v0, -0x1

    goto :goto_15
.end method

.method protected b(I)Ln/al;
    .registers 9
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lr/am;->b:[[B

    aget-object v0, v0, p1

    if-nez v0, :cond_8

    .line 70
    const/4 v0, 0x0

    .line 73
    :goto_7
    return-object v0

    .line 72
    :cond_8
    invoke-virtual {p0, p1}, Lr/am;->a(I)Lr/m;

    move-result-object v0

    invoke-virtual {v0}, Lr/m;->c()Ln/am;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lr/am;->b:[[B

    aget-object v1, v1, p1

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v3

    const-wide/32 v5, 0x48190800

    add-long/2addr v3, v5

    invoke-static {v0, v1, v2, v3, v4}, Lq/d;->a(Ln/am;[BIJ)Lq/d;

    move-result-object v0

    goto :goto_7
.end method

.method protected c(I)[B
    .registers 3
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lr/am;->b:[[B

    aget-object v0, v0, p1

    return-object v0
.end method
