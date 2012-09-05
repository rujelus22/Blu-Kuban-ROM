.class public Lbb/p;
.super Ljava/lang/Object;


# instance fields
.field public final a:I

.field public final b:[Lcom/google/googlenav/ui/bl;

.field public final c:I

.field public final d:Law/f;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/bl;Lcom/google/googlenav/ui/bl;Lcom/google/googlenav/ui/bl;Lcom/google/googlenav/ui/bl;)V
    .registers 12

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lbb/p;-><init>(Lcom/google/googlenav/ui/bl;Lcom/google/googlenav/ui/bl;Lcom/google/googlenav/ui/bl;Lcom/google/googlenav/ui/bl;ILaw/f;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/ui/bl;Lcom/google/googlenav/ui/bl;Lcom/google/googlenav/ui/bl;Lcom/google/googlenav/ui/bl;ILaw/f;)V
    .registers 10

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x4

    new-array v2, v2, [Lcom/google/googlenav/ui/bl;

    iput-object v2, p0, Lbb/p;->b:[Lcom/google/googlenav/ui/bl;

    iget-object v2, p0, Lbb/p;->b:[Lcom/google/googlenav/ui/bl;

    aput-object p1, v2, v0

    if-eqz p1, :cond_11

    move v0, v1

    :cond_11
    iget-object v2, p0, Lbb/p;->b:[Lcom/google/googlenav/ui/bl;

    aput-object p2, v2, v1

    if-eqz p2, :cond_19

    add-int/lit8 v0, v0, 0x1

    :cond_19
    iget-object v1, p0, Lbb/p;->b:[Lcom/google/googlenav/ui/bl;

    const/4 v2, 0x2

    aput-object p3, v1, v2

    if-eqz p3, :cond_22

    add-int/lit8 v0, v0, 0x1

    :cond_22
    iget-object v1, p0, Lbb/p;->b:[Lcom/google/googlenav/ui/bl;

    const/4 v2, 0x3

    aput-object p4, v1, v2

    if-eqz p4, :cond_2b

    add-int/lit8 v0, v0, 0x1

    :cond_2b
    iput v0, p0, Lbb/p;->a:I

    iput p5, p0, Lbb/p;->c:I

    iput-object p6, p0, Lbb/p;->d:Law/f;

    return-void
.end method
