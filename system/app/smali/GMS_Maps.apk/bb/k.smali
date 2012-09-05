.class public Lbb/k;
.super Lbb/l;


# instance fields
.field public h:Lau/j;

.field public i:I

.field public final j:Lcom/google/googlenav/ui/bl;

.field public final k:Lcom/google/googlenav/ui/bl;

.field public final l:Lcom/google/googlenav/ui/bl;


# direct methods
.method public constructor <init>(ILjava/lang/String;[Laq/a;Lau/j;ILcom/google/googlenav/ui/bl;Lcom/google/googlenav/ui/bl;Lcom/google/googlenav/ui/bl;)V
    .registers 19

    const/4 v2, 0x6

    const/4 v1, 0x0

    new-array v6, v1, [I

    const/4 v1, 0x0

    new-array v7, v1, [I

    new-instance v8, Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-direct {v8, v1}, Ljava/util/Vector;-><init>(I)V

    const/4 v9, 0x0

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v9}, Lbb/l;-><init>(IILjava/lang/String;[Laq/a;[I[ILjava/util/Vector;Z)V

    iput-object p4, p0, Lbb/k;->h:Lau/j;

    iput p5, p0, Lbb/k;->i:I

    move-object/from16 v0, p6

    iput-object v0, p0, Lbb/k;->j:Lcom/google/googlenav/ui/bl;

    move-object/from16 v0, p7

    iput-object v0, p0, Lbb/k;->k:Lcom/google/googlenav/ui/bl;

    move-object/from16 v0, p8

    iput-object v0, p0, Lbb/k;->l:Lcom/google/googlenav/ui/bl;

    return-void
.end method


# virtual methods
.method public g()Z
    .registers 2

    invoke-virtual {p0}, Lbb/k;->h()Lau/x;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public h()Lau/x;
    .registers 2

    iget-object v0, p0, Lbb/k;->h:Lau/j;

    invoke-virtual {v0}, Lau/j;->as()Lau/x;

    move-result-object v0

    return-object v0
.end method

.method public i()Z
    .registers 2

    invoke-virtual {p0}, Lbb/k;->j()Lau/x;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public j()Lau/x;
    .registers 2

    iget-object v0, p0, Lbb/k;->h:Lau/j;

    invoke-virtual {v0}, Lau/j;->au()Lau/x;

    move-result-object v0

    return-object v0
.end method
