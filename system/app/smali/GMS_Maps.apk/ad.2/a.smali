.class public Lad/a;
.super Lad/m;
.source "SourceFile"


# instance fields
.field private b:Ljava/util/Vector;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Lad/t;IILat/B;Ljava/lang/String;)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 22
    const/4 v3, 0x4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lad/m;-><init>(Lad/t;IIILat/B;Ljava/lang/String;)V

    .line 16
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lad/a;->b:Ljava/util/Vector;

    .line 17
    iput v7, p0, Lad/a;->c:I

    .line 18
    iput v7, p0, Lad/a;->d:I

    .line 23
    return-void
.end method


# virtual methods
.method public a(I)Lad/m;
    .registers 3
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lad/a;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lad/m;

    return-object v0
.end method

.method public a(Lad/m;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 34
    iget-object v0, p0, Lad/a;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 37
    iget-object v0, p0, Lad/a;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, v2, :cond_17

    .line 38
    iget-object v0, p0, Lad/a;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lad/m;->b(I)V

    .line 40
    :cond_17
    iget-object v0, p0, Lad/a;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_28

    .line 41
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lad/a;->a(I)Lad/m;

    move-result-object v0

    invoke-virtual {v0, v2}, Lad/m;->b(I)V

    .line 44
    :cond_28
    iput-object p0, p1, Lad/m;->a:Lad/a;

    .line 45
    iget v0, p0, Lad/a;->c:I

    invoke-virtual {p1}, Lad/m;->m()Lad/t;

    move-result-object v1

    invoke-virtual {v1}, Lad/t;->t()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lad/a;->c:I

    .line 46
    iget v0, p0, Lad/a;->d:I

    invoke-virtual {p1}, Lad/m;->m()Lad/t;

    move-result-object v1

    invoke-virtual {v1}, Lad/t;->v()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lad/a;->d:I

    .line 47
    return-void
.end method

.method public g()Lcom/google/googlenav/common/util/l;
    .registers 4

    .prologue
    .line 59
    new-instance v1, Lcom/google/googlenav/common/util/l;

    const-string v0, "AggregateDirectionsFeature"

    const/16 v2, 0x8

    invoke-direct {v1, v0, v2}, Lcom/google/googlenav/common/util/l;-><init>(Ljava/lang/String;I)V

    .line 60
    const/4 v0, 0x0

    move-object v2, v1

    move v1, v0

    :goto_c
    iget-object v0, p0, Lad/a;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_28

    .line 61
    iget-object v0, p0, Lad/a;->b:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lad/m;

    .line 62
    invoke-virtual {v0}, Lad/m;->g()Lcom/google/googlenav/common/util/l;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/googlenav/common/util/l;->a(Lcom/google/googlenav/common/util/l;)Lcom/google/googlenav/common/util/l;

    move-result-object v2

    .line 60
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c

    .line 64
    :cond_28
    invoke-super {p0}, Lad/m;->g()Lcom/google/googlenav/common/util/l;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/googlenav/common/util/l;->a(Lcom/google/googlenav/common/util/l;)Lcom/google/googlenav/common/util/l;

    move-result-object v0

    return-object v0
.end method

.method public h()I
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lad/a;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public i()I
    .registers 2

    .prologue
    .line 50
    iget v0, p0, Lad/a;->c:I

    return v0
.end method

.method public j()I
    .registers 2

    .prologue
    .line 54
    iget v0, p0, Lad/a;->d:I

    return v0
.end method
