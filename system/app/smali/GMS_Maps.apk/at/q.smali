.class public Lat/q;
.super Ljava/lang/Object;

# interfaces
.implements Lat/d;
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lak/i;

.field private final b:Ljava/lang/String;

.field private final c:Lat/r;

.field private volatile d:Z

.field private e:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lak/i;Ljava/lang/String;Lat/r;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lat/q;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lat/q;->e:Ljava/lang/Thread;

    iput-object p1, p0, Lat/q;->a:Lak/i;

    iput-object p2, p0, Lat/q;->b:Ljava/lang/String;

    iput-object p3, p0, Lat/q;->c:Lat/r;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lat/r;)V
    .registers 4

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->m()Lak/i;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lat/q;-><init>(Lak/i;Ljava/lang/String;Lat/r;)V

    return-void
.end method


# virtual methods
.method public X()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lat/q;->d:Z

    iget-object v0, p0, Lat/q;->e:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public a()V
    .registers 2

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lat/q;->e:Ljava/lang/Thread;

    iget-object v0, p0, Lat/q;->e:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public run()V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lat/q;->a:Lak/i;

    iget-object v1, p0, Lat/q;->b:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x7d0

    invoke-static {v0, v1, v2, v3, v4}, Lak/k;->a(Lak/i;Ljava/lang/String;Ljava/util/Vector;II)Ljava/lang/String;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_23

    move-result-object v0

    iget-object v1, p0, Lat/q;->c:Lat/r;

    if-eqz v1, :cond_22

    iget-boolean v1, p0, Lat/q;->d:Z

    if-eqz v1, :cond_30

    iget-object v0, p0, Lat/q;->c:Lat/r;

    iget-object v1, p0, Lat/q;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/InterruptedException;

    const-string v3, "Cancelled"

    invoke-direct {v2, v3}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lat/r;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_22
    :goto_22
    return-void

    :catch_23
    move-exception v0

    iget-object v1, p0, Lat/q;->c:Lat/r;

    if-eqz v1, :cond_22

    iget-object v1, p0, Lat/q;->c:Lat/r;

    iget-object v2, p0, Lat/q;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lat/r;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_22

    :cond_30
    iget-object v1, p0, Lat/q;->c:Lat/r;

    iget-object v2, p0, Lat/q;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lat/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22
.end method
