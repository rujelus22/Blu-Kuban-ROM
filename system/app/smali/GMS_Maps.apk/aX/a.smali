.class public LaX/a;
.super Ljava/lang/Object;


# instance fields
.field private volatile a:Lax/bz;

.field private volatile b:Z

.field private final c:Lap/c;


# direct methods
.method public constructor <init>(Lap/c;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LaX/a;->c:Lap/c;

    return-void
.end method

.method static synthetic a(LaX/a;Lax/bz;)Lax/bz;
    .registers 2

    iput-object p1, p0, LaX/a;->a:Lax/bz;

    return-object p1
.end method

.method static synthetic a(LaX/a;LaX/f;Lcom/google/googlenav/android/ac;)V
    .registers 3

    invoke-direct {p0, p1, p2}, LaX/a;->a(LaX/f;Lcom/google/googlenav/android/ac;)V

    return-void
.end method

.method static synthetic a(LaX/a;Lax/bz;LaX/f;Lcom/google/googlenav/android/ac;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, LaX/a;->a(Lax/bz;LaX/f;Lcom/google/googlenav/android/ac;)V

    return-void
.end method

.method private a(LaX/f;Lcom/google/googlenav/android/ac;)V
    .registers 7

    new-instance v0, LaX/d;

    invoke-direct {v0, p0, p1, p2}, LaX/d;-><init>(LaX/a;LaX/f;Lcom/google/googlenav/android/ac;)V

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v1

    new-instance v2, Lax/ap;

    const/16 v3, 0xc

    invoke-direct {v2, v3, v0}, Lax/ap;-><init>(ILaX/f;)V

    invoke-virtual {v1, v2}, Lat/h;->c(Lat/g;)V

    return-void
.end method

.method static synthetic a(Lak/m;Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, LaX/a;->b(Lak/m;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lax/bz;LaX/f;Lcom/google/googlenav/android/ac;)V
    .registers 6

    const/4 v1, 0x0

    iput-boolean v1, p0, LaX/a;->b:Z

    if-eqz p3, :cond_e

    new-instance v0, LaX/e;

    invoke-direct {v0, p0, p2, p1}, LaX/e;-><init>(LaX/a;LaX/f;Lax/bz;)V

    invoke-virtual {p3, v0, v1}, Lcom/google/googlenav/android/ac;->a(Ljava/lang/Runnable;Z)V

    :goto_d
    return-void

    :cond_e
    invoke-interface {p2, p1}, LaX/f;->a(Lax/bz;)V

    goto :goto_d
.end method

.method private static b(Lak/m;Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SUGGESTED_FRIEND_MANAGER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "SAVED_BGSF_"

    invoke-interface {p0, v0}, Lak/m;->c(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Lax/bz;
    .registers 2

    iget-object v0, p0, LaX/a;->a:Lax/bz;

    return-object v0
.end method

.method public a(Lax/bz;)V
    .registers 2

    iput-object p1, p0, LaX/a;->a:Lax/bz;

    invoke-virtual {p0}, LaX/a;->b()V

    return-void
.end method

.method public a(Lcom/google/googlenav/android/ac;LaX/f;)V
    .registers 5

    iget-object v0, p0, LaX/a;->a:Lax/bz;

    if-eqz v0, :cond_12

    iget-object v0, p0, LaX/a;->a:Lax/bz;

    invoke-virtual {v0}, Lax/bz;->a()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, LaX/a;->a:Lax/bz;

    invoke-direct {p0, v0, p2, p1}, LaX/a;->a(Lax/bz;LaX/f;Lcom/google/googlenav/android/ac;)V

    :cond_11
    :goto_11
    return-void

    :cond_12
    iget-boolean v0, p0, LaX/a;->b:Z

    if-nez v0, :cond_11

    const/4 v0, 0x1

    iput-boolean v0, p0, LaX/a;->b:Z

    iget-object v0, p0, LaX/a;->a:Lax/bz;

    if-eqz v0, :cond_29

    iget-object v0, p0, LaX/a;->a:Lax/bz;

    invoke-virtual {v0}, Lax/bz;->a()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-direct {p0, p2, p1}, LaX/a;->a(LaX/f;Lcom/google/googlenav/android/ac;)V

    goto :goto_11

    :cond_29
    new-instance v0, LaX/c;

    iget-object v1, p0, LaX/a;->c:Lap/c;

    invoke-direct {v0, p0, v1, p2, p1}, LaX/c;-><init>(LaX/a;Lap/c;LaX/f;Lcom/google/googlenav/android/ac;)V

    invoke-virtual {v0}, LaX/c;->g()V

    goto :goto_11
.end method

.method public b()V
    .registers 4

    iget-object v0, p0, LaX/a;->a:Lax/bz;

    new-instance v1, LaX/b;

    iget-object v2, p0, LaX/a;->c:Lap/c;

    invoke-direct {v1, p0, v2, v0}, LaX/b;-><init>(LaX/a;Lap/c;Lax/bz;)V

    invoke-virtual {v1}, LaX/b;->g()V

    return-void
.end method
