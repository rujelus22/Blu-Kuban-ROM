.class Lo/K;
.super Ljava/lang/Object;

# interfaces
.implements Lo/Q;


# instance fields
.field private a:Lo/S;

.field private b:Lo/Q;

.field private c:Lo/a;

.field private d:Lo/a;


# direct methods
.method public constructor <init>(Lo/S;Lo/Q;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/K;->a:Lo/S;

    iput-object p2, p0, Lo/K;->b:Lo/Q;

    return-void
.end method

.method private a(Lo/a;)V
    .registers 4

    iget-object v0, p0, Lo/K;->b:Lo/Q;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lo/K;->b:Lo/Q;

    iget-object v1, p0, Lo/K;->a:Lo/S;

    invoke-interface {v0, v1, p1}, Lo/Q;->a(Lo/R;Lo/a;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lo/K;->b:Lo/Q;

    :cond_e
    return-void
.end method


# virtual methods
.method public a(Lo/R;Lo/a;)V
    .registers 7

    if-nez p2, :cond_6

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/K;->a(Lo/a;)V

    :cond_6
    iget-object v0, p0, Lo/K;->a:Lo/S;

    invoke-virtual {v0}, Lo/S;->e()Lo/R;

    move-result-object v0

    if-ne p1, v0, :cond_32

    iput-object p2, p0, Lo/K;->c:Lo/a;

    :cond_10
    :goto_10
    iget-object v0, p0, Lo/K;->b:Lo/Q;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lo/K;->c:Lo/a;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lo/K;->d:Lo/a;

    if-eqz v0, :cond_31

    new-instance v0, Lo/G;

    const/4 v1, 0x2

    new-array v1, v1, [Lo/a;

    const/4 v2, 0x0

    iget-object v3, p0, Lo/K;->c:Lo/a;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lo/K;->d:Lo/a;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lo/G;-><init>([Lo/a;)V

    invoke-direct {p0, v0}, Lo/K;->a(Lo/a;)V

    :cond_31
    return-void

    :cond_32
    iget-object v0, p0, Lo/K;->a:Lo/S;

    invoke-virtual {v0}, Lo/S;->f()Lo/R;

    move-result-object v0

    if-ne p1, v0, :cond_10

    iput-object p2, p0, Lo/K;->d:Lo/a;

    goto :goto_10
.end method
