.class public Lau/a;
.super Lau/m;


# instance fields
.field private b:Ljava/util/Vector;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Lau/s;IILaJ/B;Ljava/lang/String;)V
    .registers 14

    const/4 v7, 0x0

    const/4 v3, 0x4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lau/m;-><init>(Lau/s;IIILaJ/B;Ljava/lang/String;)V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lau/a;->b:Ljava/util/Vector;

    iput v7, p0, Lau/a;->c:I

    iput v7, p0, Lau/a;->d:I

    return-void
.end method


# virtual methods
.method public a(I)Lau/m;
    .registers 3

    iget-object v0, p0, Lau/a;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lau/m;

    return-object v0
.end method

.method public a(Lau/m;)V
    .registers 5

    const/4 v2, 0x1

    iget-object v0, p0, Lau/a;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lau/a;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, v2, :cond_17

    iget-object v0, p0, Lau/a;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lau/m;->b(I)V

    :cond_17
    iget-object v0, p0, Lau/a;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_28

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lau/a;->a(I)Lau/m;

    move-result-object v0

    invoke-virtual {v0, v2}, Lau/m;->b(I)V

    :cond_28
    iput-object p0, p1, Lau/m;->a:Lau/a;

    iget v0, p0, Lau/a;->c:I

    invoke-virtual {p1}, Lau/m;->m()Lau/s;

    move-result-object v1

    invoke-virtual {v1}, Lau/s;->t()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lau/a;->c:I

    iget v0, p0, Lau/a;->d:I

    invoke-virtual {p1}, Lau/m;->m()Lau/s;

    move-result-object v1

    invoke-virtual {v1}, Lau/s;->v()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lau/a;->d:I

    return-void
.end method

.method public g()Lar/k;
    .registers 4

    new-instance v1, Lar/k;

    const-string v0, "AggregateDirectionsFeature"

    const/16 v2, 0x8

    invoke-direct {v1, v0, v2}, Lar/k;-><init>(Ljava/lang/String;I)V

    const/4 v0, 0x0

    move-object v2, v1

    move v1, v0

    :goto_c
    iget-object v0, p0, Lau/a;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_28

    iget-object v0, p0, Lau/a;->b:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lau/m;

    invoke-virtual {v0}, Lau/m;->g()Lar/k;

    move-result-object v0

    invoke-virtual {v2, v0}, Lar/k;->a(Lar/k;)Lar/k;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c

    :cond_28
    invoke-super {p0}, Lau/m;->g()Lar/k;

    move-result-object v0

    invoke-virtual {v2, v0}, Lar/k;->a(Lar/k;)Lar/k;

    move-result-object v0

    return-object v0
.end method

.method public h()I
    .registers 2

    iget-object v0, p0, Lau/a;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public i()I
    .registers 2

    iget v0, p0, Lau/a;->c:I

    return v0
.end method

.method public j()I
    .registers 2

    iget v0, p0, Lau/a;->d:I

    return v0
.end method
