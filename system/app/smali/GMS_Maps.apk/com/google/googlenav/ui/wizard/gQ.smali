.class Lcom/google/googlenav/ui/wizard/gQ;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/wizard/hz;


# instance fields
.field final synthetic a:Lax/by;

.field final synthetic b:Lax/bz;

.field final synthetic c:Lcom/google/googlenav/ui/wizard/gP;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/gP;Lax/by;Lax/bz;)V
    .registers 4

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/gQ;->c:Lcom/google/googlenav/ui/wizard/gP;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/gQ;->a:Lax/by;

    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/gQ;->b:Lax/bz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    const/16 v0, 0x4f

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bw;->a(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/wizard/gR;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/gQ;->a:Lax/by;

    invoke-direct {v1, p0, v2}, Lcom/google/googlenav/ui/wizard/gR;-><init>(Lcom/google/googlenav/ui/wizard/gQ;Lax/by;)V

    invoke-virtual {v0, v1}, Lat/h;->c(Lat/g;)V

    return-void
.end method

.method public b()V
    .registers 1

    return-void
.end method
