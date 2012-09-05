.class Lcom/google/googlenav/ui/wizard/aM;
.super Ljava/lang/Object;

# interfaces
.implements LaY/f;


# instance fields
.field final synthetic a:Lcom/google/googlenav/h;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/aS;

.field final synthetic c:Lcom/google/googlenav/ui/wizard/aL;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/aL;Lcom/google/googlenav/h;Lcom/google/googlenav/ui/wizard/aS;)V
    .registers 4

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/aM;->c:Lcom/google/googlenav/ui/wizard/aL;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/aM;->a:Lcom/google/googlenav/h;

    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/aM;->b:Lcom/google/googlenav/ui/wizard/aS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/E;)V
    .registers 13

    const/4 v3, 0x0

    if-eqz p1, :cond_9

    invoke-interface {p1}, Lcom/google/googlenav/E;->f()I

    move-result v0

    if-gtz v0, :cond_25

    :cond_9
    invoke-static {}, Lcom/google/googlenav/aJ;->a()Lcom/google/googlenav/aJ;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/aM;->a:Lcom/google/googlenav/h;

    invoke-virtual {v1}, Lcom/google/googlenav/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/aJ;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aM;->c:Lcom/google/googlenav/ui/wizard/aL;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/aL;->a(Lcom/google/googlenav/ui/wizard/aL;)Lcom/google/googlenav/android/ac;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/wizard/aN;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/aN;-><init>(Lcom/google/googlenav/ui/wizard/aM;)V

    invoke-virtual {v0, v1, v3}, Lcom/google/googlenav/android/ac;->a(Ljava/lang/Runnable;Z)V

    :goto_24
    return-void

    :cond_25
    new-instance v0, Lax/aS;

    invoke-direct {v0, p1}, Lax/aS;-><init>(Lcom/google/googlenav/E;)V

    invoke-virtual {v0}, Lax/aS;->d()Lax/aP;

    move-result-object v9

    invoke-virtual {v9}, Lax/aP;->E()[Lcom/google/googlenav/a;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_3e

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aM;->c:Lcom/google/googlenav/ui/wizard/aL;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/aM;->b:Lcom/google/googlenav/ui/wizard/aS;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/aL;->a(Lcom/google/googlenav/ui/wizard/aL;Lcom/google/googlenav/ui/wizard/aS;)V

    goto :goto_24

    :cond_3e
    aget-object v10, v0, v3

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->b()J

    move-result-wide v6

    new-instance v0, Lcom/google/googlenav/bX;

    invoke-virtual {v10}, Lcom/google/googlenav/a;->d()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v10}, Lcom/google/googlenav/a;->b()J

    move-result-wide v4

    new-instance v8, Lcom/google/googlenav/ui/wizard/aO;

    invoke-direct {v8, p0, v9, p1, v10}, Lcom/google/googlenav/ui/wizard/aO;-><init>(Lcom/google/googlenav/ui/wizard/aM;Lax/aP;Lcom/google/googlenav/E;Lcom/google/googlenav/a;)V

    invoke-direct/range {v0 .. v8}, Lcom/google/googlenav/bX;-><init>(Ljava/lang/String;Ljava/lang/String;IJJLcom/google/googlenav/bY;)V

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lat/h;->c(Lat/g;)V

    goto :goto_24
.end method
