.class LaV/e;
.super Lap/b;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic e:LaV/d;


# direct methods
.method constructor <init>(LaV/d;Lap/c;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, LaV/e;->e:LaV/d;

    iput-object p3, p0, LaV/e;->a:Ljava/lang/String;

    invoke-direct {p0, p2}, Lap/b;-><init>(Lap/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p0, LaV/e;->e:LaV/d;

    iget-object v2, p0, LaV/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, LaV/d;->b_(Ljava/lang/String;)LaV/r;

    move-result-object v0

    iget-object v2, p0, LaV/e;->e:LaV/d;

    invoke-static {v2}, LaV/d;->a(LaV/d;)I

    const/4 v1, 0x1

    iget-object v2, p0, LaV/e;->e:LaV/d;

    invoke-static {v2}, LaV/d;->b(LaV/d;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, LaV/e;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Las/b;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, p0, LaV/e;->e:LaV/d;

    invoke-virtual {v2, v0}, LaV/d;->a(LaV/r;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_22} :catch_23

    :cond_22
    :goto_22
    return-void

    :catch_23
    move-exception v0

    const-string v2, "BaseQueryInSeparateThreadProvider"

    invoke-static {v2, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-nez v1, :cond_22

    iget-object v0, p0, LaV/e;->e:LaV/d;

    invoke-static {v0}, LaV/d;->a(LaV/d;)I

    goto :goto_22
.end method
