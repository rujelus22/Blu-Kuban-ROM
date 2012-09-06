.class public Lcom/google/googlenav/ui/aI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/aG;


# instance fields
.field private final a:Lad/w;

.field private final b:I

.field private final c:I

.field private final d:I

.field private e:I


# direct methods
.method public constructor <init>(Lad/w;III)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ui/aI;->e:I

    .line 54
    iput-object p1, p0, Lcom/google/googlenav/ui/aI;->a:Lad/w;

    .line 55
    iput p2, p0, Lcom/google/googlenav/ui/aI;->b:I

    .line 56
    iput p3, p0, Lcom/google/googlenav/ui/aI;->c:I

    .line 57
    iput p4, p0, Lcom/google/googlenav/ui/aI;->d:I

    .line 58
    return-void
.end method

.method public static a(Z)I
    .registers 2
    .parameter

    .prologue
    .line 42
    if-eqz p0, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static b(Z)I
    .registers 2
    .parameter

    .prologue
    .line 49
    if-eqz p0, :cond_6

    const v0, -0x57f0f0f1

    :goto_5
    return v0

    :cond_6
    const v0, -0x57ffaf01

    goto :goto_5
.end method


# virtual methods
.method public a(Lat/Y;)I
    .registers 3
    .parameter

    .prologue
    .line 93
    invoke-static {p1}, Lcom/google/googlenav/ui/aE;->b(Lat/Y;)I

    move-result v0

    return v0
.end method

.method public a(I)V
    .registers 2
    .parameter

    .prologue
    .line 33
    iput p1, p0, Lcom/google/googlenav/ui/aI;->e:I

    .line 34
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/googlenav/ui/aI;->a:Lad/w;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/googlenav/ui/aI;->a:Lad/w;

    invoke-virtual {v0}, Lad/w;->v()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/googlenav/ui/aI;->a:Lad/w;

    invoke-virtual {v0}, Lad/w;->U()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public c()Ln/B;
    .registers 2

    .prologue
    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method public d()I
    .registers 2

    .prologue
    .line 38
    iget v0, p0, Lcom/google/googlenav/ui/aI;->e:I

    return v0
.end method

.method public h()Z
    .registers 2

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/google/googlenav/ui/aI;->a()Z

    move-result v0

    return v0
.end method

.method public i()I
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/googlenav/ui/aI;->a:Lad/w;

    invoke-virtual {v0}, Lad/w;->K()I

    move-result v0

    return v0
.end method

.method public j()[Lat/B;
    .registers 4

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/googlenav/ui/aI;->a:Lad/w;

    iget v1, p0, Lcom/google/googlenav/ui/aI;->c:I

    iget v2, p0, Lcom/google/googlenav/ui/aI;->d:I

    invoke-virtual {v0, v1, v2}, Lad/w;->a(II)[Lat/B;

    move-result-object v0

    return-object v0
.end method

.method public k()I
    .registers 2

    .prologue
    .line 98
    iget v0, p0, Lcom/google/googlenav/ui/aI;->b:I

    return v0
.end method

.method public l()Z
    .registers 2

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public m()I
    .registers 2

    .prologue
    .line 110
    const/4 v0, -0x1

    return v0
.end method

.method public n()Ljava/lang/String;
    .registers 2

    .prologue
    .line 115
    const-string v0, "transit directions"

    return-object v0
.end method

.method public o()[[Lat/B;
    .registers 2

    .prologue
    .line 121
    const/4 v0, 0x0

    check-cast v0, [[Lat/B;

    return-object v0
.end method
