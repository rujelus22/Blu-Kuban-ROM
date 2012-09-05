.class public LF/b;
.super Ljava/lang/Object;

# interfaces
.implements LF/T;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:LF/T;

.field private volatile c:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;LF/T;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LF/b;->a:Ljava/lang/String;

    iput-object p2, p0, LF/b;->b:LF/T;

    return-void
.end method


# virtual methods
.method public a(LF/R;)V
    .registers 4

    iget-boolean v0, p0, LF/b;->c:Z

    if-eqz v0, :cond_13

    new-instance v0, LF/R;

    invoke-direct {v0, p1}, LF/R;-><init>(Landroid/location/Location;)V

    iget-object v1, p0, LF/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, LF/R;->setProvider(Ljava/lang/String;)V

    iget-object v1, p0, LF/b;->b:LF/T;

    invoke-interface {v1, v0}, LF/T;->a(LF/R;)V

    :cond_13
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, LF/b;->a:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    iput-boolean v0, p0, LF/b;->c:Z

    :cond_b
    iget-object v0, p0, LF/b;->b:LF/T;

    iget-object v1, p0, LF/b;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, LF/T;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    iget-boolean v0, p0, LF/b;->c:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, LF/b;->b:LF/T;

    iget-object v1, p0, LF/b;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p2, p3}, LF/T;->a(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_b
    return-void
.end method

.method public b()V
    .registers 3

    iget-boolean v0, p0, LF/b;->c:Z

    if-nez v0, :cond_b

    iget-object v0, p0, LF/b;->a:Ljava/lang/String;

    iget-object v1, p0, LF/b;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, LF/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, LF/b;->a:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    iput-boolean v0, p0, LF/b;->c:Z

    :cond_b
    iget-object v0, p0, LF/b;->b:LF/T;

    iget-object v1, p0, LF/b;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, LF/T;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .registers 1

    return-void
.end method

.method public d()V
    .registers 3

    iget-boolean v0, p0, LF/b;->c:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, LF/b;->a:Ljava/lang/String;

    iget-object v1, p0, LF/b;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, LF/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public e()Z
    .registers 2

    iget-boolean v0, p0, LF/b;->c:Z

    return v0
.end method

.method public f()V
    .registers 1

    invoke-virtual {p0}, LF/b;->d()V

    return-void
.end method
