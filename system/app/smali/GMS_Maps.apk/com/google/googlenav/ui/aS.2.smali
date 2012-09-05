.class public Lcom/google/googlenav/ui/aS;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/aQ;


# instance fields
.field private final a:Lau/v;

.field private final b:I

.field private final c:I

.field private final d:I

.field private e:I


# direct methods
.method public constructor <init>(Lau/v;III)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ui/aS;->e:I

    iput-object p1, p0, Lcom/google/googlenav/ui/aS;->a:Lau/v;

    iput p2, p0, Lcom/google/googlenav/ui/aS;->b:I

    iput p3, p0, Lcom/google/googlenav/ui/aS;->c:I

    iput p4, p0, Lcom/google/googlenav/ui/aS;->d:I

    return-void
.end method

.method public static a(Z)I
    .registers 2

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

    if-eqz p0, :cond_6

    const v0, -0x57f0f0f1

    :goto_5
    return v0

    :cond_6
    const v0, -0x57ffaf01

    goto :goto_5
.end method


# virtual methods
.method public a(LaJ/Y;)I
    .registers 3

    invoke-static {p1}, Lcom/google/googlenav/ui/aO;->b(LaJ/Y;)I

    move-result v0

    return v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/google/googlenav/ui/aS;->e:I

    return-void
.end method

.method public a()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/aS;->a:Lau/v;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/googlenav/ui/aS;->a:Lau/v;

    invoke-virtual {v0}, Lau/v;->w()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/googlenav/ui/aS;->a:Lau/v;

    invoke-virtual {v0}, Lau/v;->V()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public c()Lt/y;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/ui/aS;->e:I

    return v0
.end method

.method public h()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/aS;->a()Z

    move-result v0

    return v0
.end method

.method public i()I
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/aS;->a:Lau/v;

    invoke-virtual {v0}, Lau/v;->L()I

    move-result v0

    return v0
.end method

.method public j()[LaJ/B;
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/aS;->a:Lau/v;

    iget v1, p0, Lcom/google/googlenav/ui/aS;->c:I

    iget v2, p0, Lcom/google/googlenav/ui/aS;->d:I

    invoke-virtual {v0, v1, v2}, Lau/v;->a(II)[LaJ/B;

    move-result-object v0

    return-object v0
.end method

.method public k()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/ui/aS;->b:I

    return v0
.end method

.method public l()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public m()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public n()[[LaJ/B;
    .registers 2

    const/4 v0, 0x0

    check-cast v0, [[LaJ/B;

    return-object v0
.end method
