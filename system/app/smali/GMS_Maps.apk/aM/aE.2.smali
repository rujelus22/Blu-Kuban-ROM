.class public LaM/aE;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/E;


# instance fields
.field private final a:Lat/B;

.field private b:B

.field private final c:I


# direct methods
.method public constructor <init>(Lat/B;)V
    .registers 4
    .parameter

    .prologue
    .line 607
    const/16 v0, 0x15

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, LaM/aE;-><init>(Lat/B;BI)V

    .line 608
    return-void
.end method

.method public constructor <init>(Lat/B;BI)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 614
    iput-object p1, p0, LaM/aE;->a:Lat/B;

    .line 615
    iput-byte p2, p0, LaM/aE;->b:B

    .line 616
    iput p3, p0, LaM/aE;->c:I

    .line 617
    return-void
.end method


# virtual methods
.method public a()Lat/B;
    .registers 2

    .prologue
    .line 630
    iget-object v0, p0, LaM/aE;->a:Lat/B;

    return-object v0
.end method

.method public b()Ljava/util/List;
    .registers 2

    .prologue
    .line 635
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public c()B
    .registers 2

    .prologue
    .line 640
    iget-byte v0, p0, LaM/aE;->b:B

    return v0
.end method

.method public d()I
    .registers 2

    .prologue
    .line 625
    const/4 v0, 0x3

    return v0
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 649
    const/4 v0, 0x0

    return v0
.end method

.method public f()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 654
    return-object p0
.end method

.method public g()Lcom/google/googlenav/common/util/l;
    .registers 4

    .prologue
    .line 661
    new-instance v1, Lcom/google/googlenav/common/util/l;

    const-string v2, "MeasurementLayer"

    iget-object v0, p0, LaM/aE;->a:Lat/B;

    if-eqz v0, :cond_14

    iget-object v0, p0, LaM/aE;->a:Lat/B;

    invoke-virtual {v0}, Lat/B;->h()I

    move-result v0

    :goto_e
    add-int/lit8 v0, v0, 0x10

    invoke-direct {v1, v2, v0}, Lcom/google/googlenav/common/util/l;-><init>(Ljava/lang/String;I)V

    return-object v1

    :cond_14
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public h()I
    .registers 2

    .prologue
    .line 620
    iget v0, p0, LaM/aE;->c:I

    return v0
.end method
