.class public Lcom/google/googlenav/ui/wizard/fa;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/google/googlenav/ui/wizard/fd;

.field private final b:Lay/a;


# direct methods
.method public constructor <init>(Lay/a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/fa;->b:Lay/a;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/fa;)Lay/a;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fa;->b:Lay/a;

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/fa;)Lcom/google/googlenav/ui/wizard/fd;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fa;->a:Lcom/google/googlenav/ui/wizard/fd;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 5

    new-instance v0, Lax/af;

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->m()Z

    move-result v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/fc;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/googlenav/ui/wizard/fc;-><init>(Lcom/google/googlenav/ui/wizard/fa;Lcom/google/googlenav/ui/wizard/fb;)V

    invoke-direct {v0, v1, v2}, Lax/af;-><init>(ZLax/ag;)V

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lat/h;->c(Lat/g;)V

    return-void
.end method

.method public a(Lcom/google/googlenav/ui/wizard/fd;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/fa;->a:Lcom/google/googlenav/ui/wizard/fd;

    return-void
.end method
