.class LaX/c;
.super Lap/b;


# instance fields
.field final synthetic a:LaX/f;

.field final synthetic e:Lcom/google/googlenav/android/ac;

.field final synthetic f:LaX/a;


# direct methods
.method constructor <init>(LaX/a;Lap/c;LaX/f;Lcom/google/googlenav/android/ac;)V
    .registers 5

    iput-object p1, p0, LaX/c;->f:LaX/a;

    iput-object p3, p0, LaX/c;->a:LaX/f;

    iput-object p4, p0, LaX/c;->e:Lcom/google/googlenav/android/ac;

    invoke-direct {p0, p2}, Lap/b;-><init>(Lap/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v1

    const-string v0, "SAVED_BGSF_"

    invoke-static {v1, v0}, Laf/l;->a(Lak/m;Ljava/lang/String;)Ljava/io/DataInput;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz v2, :cond_15

    :try_start_11
    invoke-static {v2}, Lax/bz;->a(Ljava/io/DataInput;)Lax/bz;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_27

    move-result-object v0

    :cond_15
    :goto_15
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lax/bz;->a()Z

    move-result v1

    if-eqz v1, :cond_2e

    :cond_1d
    iget-object v0, p0, LaX/c;->f:LaX/a;

    iget-object v1, p0, LaX/c;->a:LaX/f;

    iget-object v2, p0, LaX/c;->e:Lcom/google/googlenav/android/ac;

    invoke-static {v0, v1, v2}, LaX/a;->a(LaX/a;LaX/f;Lcom/google/googlenav/android/ac;)V

    :goto_26
    return-void

    :catch_27
    move-exception v2

    const-string v3, "-Error loading suggested friends"

    invoke-static {v1, v2, v3}, LaX/a;->a(Lak/m;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_15

    :cond_2e
    iget-object v1, p0, LaX/c;->f:LaX/a;

    invoke-static {v1, v0}, LaX/a;->a(LaX/a;Lax/bz;)Lax/bz;

    iget-object v1, p0, LaX/c;->f:LaX/a;

    iget-object v2, p0, LaX/c;->a:LaX/f;

    iget-object v3, p0, LaX/c;->e:Lcom/google/googlenav/android/ac;

    invoke-static {v1, v0, v2, v3}, LaX/a;->a(LaX/a;Lax/bz;LaX/f;Lcom/google/googlenav/android/ac;)V

    goto :goto_26
.end method
