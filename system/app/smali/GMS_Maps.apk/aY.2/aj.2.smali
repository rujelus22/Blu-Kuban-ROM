.class public LaY/aj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lap/d;

.field private b:J

.field private final c:LaY/ak;


# direct methods
.method public constructor <init>(Lap/c;LaY/ak;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LaY/aj;->c:LaY/ak;

    new-instance v0, Lap/d;

    invoke-direct {v0, p1, p0}, Lap/d;-><init>(Lap/c;Ljava/lang/Runnable;)V

    iput-object v0, p0, LaY/aj;->a:Lap/d;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x7530

    add-long/2addr v0, v2

    iput-wide v0, p0, LaY/aj;->b:J

    iget-object v0, p0, LaY/aj;->a:Lap/d;

    invoke-virtual {v0}, Lap/d;->c()I

    iget-object v0, p0, LaY/aj;->a:Lap/d;

    iget-wide v1, p0, LaY/aj;->b:J

    invoke-virtual {v0, v1, v2}, Lap/d;->b(J)V

    iget-object v0, p0, LaY/aj;->a:Lap/d;

    invoke-virtual {v0}, Lap/d;->g()V

    return-void
.end method

.method public b()Z
    .registers 5

    iget-wide v0, p0, LaY/aj;->b:J

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v2

    invoke-virtual {v2}, Laf/b;->v()Laf/a;

    move-result-object v2

    invoke-interface {v2}, Laf/a;->b()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public run()V
    .registers 2

    iget-object v0, p0, LaY/aj;->c:LaY/ak;

    invoke-interface {v0}, LaY/ak;->a()V

    return-void
.end method
