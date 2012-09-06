.class public Lcom/google/googlenav/ui/aJ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/aG;


# instance fields
.field private a:I

.field private b:[Lcom/google/googlenav/cq;

.field private c:Lcom/google/googlenav/bW;

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>([Lcom/google/googlenav/cq;IILcom/google/googlenav/bW;II)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ui/aJ;->a:I

    .line 27
    iput-object p1, p0, Lcom/google/googlenav/ui/aJ;->b:[Lcom/google/googlenav/cq;

    .line 28
    iput-object p4, p0, Lcom/google/googlenav/ui/aJ;->c:Lcom/google/googlenav/bW;

    .line 29
    iput p2, p0, Lcom/google/googlenav/ui/aJ;->e:I

    .line 30
    iput p3, p0, Lcom/google/googlenav/ui/aJ;->f:I

    .line 31
    iput p5, p0, Lcom/google/googlenav/ui/aJ;->d:I

    .line 32
    iput p6, p0, Lcom/google/googlenav/ui/aJ;->a:I

    .line 33
    return-void
.end method

.method public static a(Z)I
    .registers 2
    .parameter

    .prologue
    .line 47
    if-eqz p0, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method


# virtual methods
.method public a(Lat/Y;)I
    .registers 3
    .parameter

    .prologue
    .line 62
    invoke-static {p1}, Lcom/google/googlenav/ui/aE;->b(Lat/Y;)I

    move-result v0

    return v0
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 82
    const/4 v0, 0x1

    return v0
.end method

.method public c()Ln/B;
    .registers 2

    .prologue
    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method public d()I
    .registers 2

    .prologue
    .line 37
    iget v0, p0, Lcom/google/googlenav/ui/aJ;->a:I

    return v0
.end method

.method public h()Z
    .registers 2

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/google/googlenav/ui/aJ;->a()Z

    move-result v0

    return v0
.end method

.method public i()I
    .registers 2

    .prologue
    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public j()[Lat/B;
    .registers 6

    .prologue
    .line 53
    iget v0, p0, Lcom/google/googlenav/ui/aJ;->f:I

    iget v1, p0, Lcom/google/googlenav/ui/aJ;->e:I

    sub-int/2addr v0, v1

    new-array v1, v0, [Lat/B;

    .line 54
    const/4 v0, 0x0

    :goto_8
    array-length v2, v1

    if-ge v0, v2, :cond_25

    .line 55
    iget-object v2, p0, Lcom/google/googlenav/ui/aJ;->b:[Lcom/google/googlenav/cq;

    iget-object v3, p0, Lcom/google/googlenav/ui/aJ;->c:Lcom/google/googlenav/bW;

    iget v4, p0, Lcom/google/googlenav/ui/aJ;->e:I

    add-int/2addr v4, v0

    invoke-virtual {v3, v4}, Lcom/google/googlenav/bW;->a(I)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/google/googlenav/cq;->au()Lcom/google/googlenav/ca;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ca;->j()Lat/B;

    move-result-object v2

    aput-object v2, v1, v0

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 57
    :cond_25
    return-object v1
.end method

.method public k()I
    .registers 2

    .prologue
    .line 67
    iget v0, p0, Lcom/google/googlenav/ui/aJ;->d:I

    return v0
.end method

.method public l()Z
    .registers 2

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public m()I
    .registers 2

    .prologue
    .line 99
    const/4 v0, -0x1

    return v0
.end method

.method public n()Ljava/lang/String;
    .registers 2

    .prologue
    .line 104
    const-string v0, "transit line route"

    return-object v0
.end method

.method public o()[[Lat/B;
    .registers 2

    .prologue
    .line 110
    const/4 v0, 0x0

    check-cast v0, [[Lat/B;

    return-object v0
.end method
