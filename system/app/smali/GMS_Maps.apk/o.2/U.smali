.class public Lo/U;
.super Lo/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lo/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public a(Lo/b;)V
    .registers 2

    if-eqz p1, :cond_5

    invoke-interface {p1, p0}, Lo/b;->a(Lo/a;)V

    :cond_5
    return-void
.end method

.method public b()V
    .registers 1

    return-void
.end method

.method public c()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
