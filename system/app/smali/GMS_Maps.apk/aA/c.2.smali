.class public LaA/c;
.super LaA/t;


# instance fields
.field private final a:LaA/v;


# direct methods
.method public constructor <init>(ILaA/v;Z)V
    .registers 4

    invoke-direct {p0, p1, p3}, LaA/t;-><init>(IZ)V

    iput-object p2, p0, LaA/c;->a:LaA/v;

    return-void
.end method


# virtual methods
.method public a()F
    .registers 2

    iget-object v0, p0, LaA/c;->a:LaA/v;

    invoke-virtual {v0}, LaA/v;->a()F

    move-result v0

    return v0
.end method

.method public b()F
    .registers 2

    iget-object v0, p0, LaA/c;->a:LaA/v;

    invoke-virtual {v0}, LaA/v;->b()F

    move-result v0

    return v0
.end method

.method public c()F
    .registers 2

    iget-object v0, p0, LaA/c;->a:LaA/v;

    invoke-virtual {v0}, LaA/v;->c()F

    move-result v0

    return v0
.end method

.method public d()F
    .registers 2

    iget-object v0, p0, LaA/c;->a:LaA/v;

    invoke-virtual {v0}, LaA/v;->d()F

    move-result v0

    return v0
.end method

.method public e()F
    .registers 2

    iget-object v0, p0, LaA/c;->a:LaA/v;

    invoke-virtual {v0}, LaA/v;->g()F

    move-result v0

    return v0
.end method
