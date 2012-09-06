.class Lr/aQ;
.super Lr/d;
.source "SourceFile"


# instance fields
.field final synthetic d:Lr/aP;


# direct methods
.method constructor <init>(Lr/aP;)V
    .registers 2
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lr/aQ;->d:Lr/aP;

    invoke-direct {p0, p1}, Lr/d;-><init>(Lr/c;)V

    return-void
.end method


# virtual methods
.method protected a(II)[B
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 152
    invoke-static {}, Ln/aF;->u()I

    move-result v0

    add-int/2addr v0, p1

    new-array v0, v0, [B

    .line 153
    iget v1, p0, Lr/aQ;->a:I

    invoke-static {v1, p2, v0}, Ln/aF;->a(II[B)V

    .line 154
    return-object v0
.end method

.method protected b(I)Ln/al;
    .registers 10
    .parameter

    .prologue
    const-wide/16 v6, -0x1

    .line 128
    iget-object v0, p0, Lr/aQ;->b:[[B

    aget-object v0, v0, p1

    if-nez v0, :cond_a

    .line 129
    const/4 v0, 0x0

    .line 142
    :goto_9
    return-object v0

    .line 133
    :cond_a
    iget-object v0, p0, Lr/aQ;->d:Lr/aP;

    iget-wide v0, v0, Lr/aP;->i:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_43

    .line 134
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v0

    iget-object v2, p0, Lr/aQ;->d:Lr/aP;

    iget-wide v2, v2, Lr/aP;->i:J

    add-long v4, v0, v2

    .line 137
    :goto_26
    invoke-virtual {p0, p1}, Lr/aQ;->a(I)Lr/m;

    move-result-object v0

    invoke-virtual {v0}, Lr/m;->c()Ln/am;

    move-result-object v0

    iget-object v1, p0, Lr/aQ;->b:[[B

    aget-object v1, v1, p1

    const/4 v2, 0x0

    iget-object v3, p0, Lr/aQ;->d:Lr/aP;

    iget-object v3, v3, Lr/aP;->a:Lcom/google/android/maps/driveabout/vector/dg;

    invoke-static/range {v0 .. v7}, Ln/aF;->a(Ln/am;[BILcom/google/android/maps/driveabout/vector/dg;JJ)Ln/aF;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lr/aQ;->d:Lr/aP;

    iget-object v1, v1, Lr/aP;->d:Lcom/google/googlenav/common/a;

    invoke-interface {v0, v1}, Ln/al;->c(Lcom/google/googlenav/common/a;)V

    goto :goto_9

    :cond_43
    move-wide v4, v6

    goto :goto_26
.end method

.method protected c(I)[B
    .registers 3
    .parameter

    .prologue
    .line 159
    iget-object v0, p0, Lr/aQ;->b:[[B

    aget-object v0, v0, p1

    return-object v0
.end method
