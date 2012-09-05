.class public Lo/J;
.super Ljava/lang/Object;

# interfaces
.implements Lo/P;


# instance fields
.field private final a:Lo/P;


# direct methods
.method public constructor <init>(Lo/P;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/J;->a:Lo/P;

    return-void
.end method


# virtual methods
.method public a(Lo/R;)Lo/a;
    .registers 7

    const/4 v0, 0x0

    instance-of v1, p1, Lo/S;

    if-eqz v1, :cond_2e

    check-cast p1, Lo/S;

    iget-object v1, p0, Lo/J;->a:Lo/P;

    invoke-virtual {p1}, Lo/S;->e()Lo/R;

    move-result-object v2

    invoke-interface {v1, v2}, Lo/P;->a(Lo/R;)Lo/a;

    move-result-object v1

    iget-object v2, p0, Lo/J;->a:Lo/P;

    invoke-virtual {p1}, Lo/S;->f()Lo/R;

    move-result-object v3

    invoke-interface {v2, v3}, Lo/P;->a(Lo/R;)Lo/a;

    move-result-object v2

    if-eqz v1, :cond_2d

    if-eqz v2, :cond_2d

    new-instance v0, Lo/G;

    const/4 v3, 0x2

    new-array v3, v3, [Lo/a;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    invoke-direct {v0, v3}, Lo/G;-><init>([Lo/a;)V

    :cond_2d
    :goto_2d
    return-object v0

    :cond_2e
    iget-object v0, p0, Lo/J;->a:Lo/P;

    invoke-interface {v0, p1}, Lo/P;->a(Lo/R;)Lo/a;

    move-result-object v0

    goto :goto_2d
.end method

.method public a()V
    .registers 2

    iget-object v0, p0, Lo/J;->a:Lo/P;

    invoke-interface {v0}, Lo/P;->a()V

    return-void
.end method

.method public a(Lo/R;Lo/Q;)V
    .registers 6

    instance-of v0, p1, Lo/S;

    if-eqz v0, :cond_1e

    check-cast p1, Lo/S;

    new-instance v0, Lo/K;

    invoke-direct {v0, p1, p2}, Lo/K;-><init>(Lo/S;Lo/Q;)V

    iget-object v1, p0, Lo/J;->a:Lo/P;

    invoke-virtual {p1}, Lo/S;->e()Lo/R;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lo/P;->a(Lo/R;Lo/Q;)V

    iget-object v1, p0, Lo/J;->a:Lo/P;

    invoke-virtual {p1}, Lo/S;->f()Lo/R;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lo/P;->a(Lo/R;Lo/Q;)V

    :goto_1d
    return-void

    :cond_1e
    iget-object v0, p0, Lo/J;->a:Lo/P;

    invoke-interface {v0, p1, p2}, Lo/P;->a(Lo/R;Lo/Q;)V

    goto :goto_1d
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lo/J;->a:Lo/P;

    invoke-interface {v0}, Lo/P;->b()V

    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lo/J;->a:Lo/P;

    invoke-interface {v0}, Lo/P;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
