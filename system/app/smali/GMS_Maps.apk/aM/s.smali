.class public LaM/s;
.super Lat/a;


# instance fields
.field private a:LaM/t;

.field private b:Lam/b;

.field private c:Lam/b;

.field private d:Z


# direct methods
.method public constructor <init>(Lam/b;)V
    .registers 3

    invoke-direct {p0}, Lat/a;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LaM/s;->d:Z

    iput-object p1, p0, LaM/s;->c:Lam/b;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x4d

    return v0
.end method

.method public a(LaM/t;)V
    .registers 2

    iput-object p1, p0, LaM/s;->a:LaM/t;

    return-void
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 3

    iget-object v0, p0, LaM/s;->c:Lam/b;

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lam/b;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 3

    sget-object v0, LbD/go;->h:Lam/e;

    invoke-static {v0, p1}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v0

    iput-object v0, p0, LaM/s;->b:Lam/b;

    const/4 v0, 0x1

    return v0
.end method

.method public b()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, LaM/s;->d:Z

    iget-object v0, p0, LaM/s;->b:Lam/b;

    if-eqz v0, :cond_b

    iget-object v0, p0, LaM/s;->a:LaM/t;

    if-nez v0, :cond_c

    :cond_b
    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, LaM/s;->a:LaM/t;

    iget-object v1, p0, LaM/s;->b:Lam/b;

    invoke-interface {v0, v1}, LaM/t;->a(Lam/b;)V

    goto :goto_b
.end method

.method public g_()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public k()Z
    .registers 2

    iget-boolean v0, p0, LaM/s;->d:Z

    return v0
.end method

.method public z_()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
