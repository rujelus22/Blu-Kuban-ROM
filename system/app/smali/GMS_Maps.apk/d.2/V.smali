.class Ld/V;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/os/Handler;

.field private b:Ld/D;

.field private c:Ld/y;

.field private d:Lm/c;


# direct methods
.method constructor <init>(Landroid/os/Handler;Lm/c;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld/V;->a:Landroid/os/Handler;

    iput-object p2, p0, Ld/V;->d:Lm/c;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Ld/V;->b:Ld/D;

    if-eqz v0, :cond_f

    iget-object v0, p0, Ld/V;->c:Ld/y;

    if-eqz v0, :cond_f

    iget-object v0, p0, Ld/V;->c:Ld/y;

    iget-object v1, p0, Ld/V;->b:Ld/D;

    invoke-virtual {v0, v1}, Ld/y;->a(Ld/al;)V

    :cond_f
    return-void
.end method

.method a(Landroid/content/Context;Ld/W;Ld/C;)Z
    .registers 14

    const/4 v8, 0x1

    const/4 v3, 0x0

    new-instance v1, Ld/Q;

    iget-object v0, p0, Ld/V;->d:Lm/c;

    invoke-direct {v1, p3, v0}, Ld/Q;-><init>(Ld/C;Lm/c;)V

    const/4 v9, 0x0

    new-instance v0, Ld/F;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Ld/V;->d:Lm/c;

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v6}, Ld/F;-><init>(Ld/aj;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;LW/a;Lm/c;)V

    new-instance v1, Ld/y;

    iget-object v2, p0, Ld/V;->a:Landroid/os/Handler;

    iget-object v3, p0, Ld/V;->d:Lm/c;

    invoke-direct {v1, v0, v2, v8, v3}, Ld/y;-><init>(Ld/F;Landroid/os/Handler;ILm/c;)V

    iput-object v1, p0, Ld/V;->c:Ld/y;

    new-instance v0, Ld/D;

    invoke-interface {p2}, Ld/W;->b()Ljava/util/Set;

    move-result-object v2

    invoke-interface {p2}, Ld/W;->d()Ljava/util/Map;

    move-result-object v3

    invoke-interface {p2}, Ld/W;->c()Z

    move-result v4

    iget-object v5, p0, Ld/V;->c:Ld/y;

    iget-object v7, p0, Ld/V;->d:Lm/c;

    move-object v1, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Ld/D;-><init>(Landroid/content/Context;Ljava/util/Set;Ljava/util/Map;ZLd/y;Ld/C;Lm/c;)V

    iput-object v0, p0, Ld/V;->b:Ld/D;

    iget-object v0, p0, Ld/V;->b:Ld/D;

    invoke-virtual {v0}, Ld/D;->c()I

    move-result v0

    if-lez v0, :cond_4e

    iget-object v0, p0, Ld/V;->b:Ld/D;

    invoke-interface {p2}, Ld/W;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ld/D;->a(J)V

    move v0, v8

    :goto_4d
    return v0

    :cond_4e
    move v0, v9

    goto :goto_4d
.end method
