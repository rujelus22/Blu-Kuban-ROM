.class Lcom/google/googlenav/ui/wizard/bB;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/g;


# instance fields
.field final synthetic a:Lat/c;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/bz;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/bz;Lat/c;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/bB;->b:Lcom/google/googlenav/ui/wizard/bz;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/bB;->a:Lat/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lam/b;)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bB;->a:Lat/c;

    invoke-virtual {v0}, Lat/c;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bB;->b:Lcom/google/googlenav/ui/wizard/bz;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/bz;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->j()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bB;->b:Lcom/google/googlenav/ui/wizard/bz;

    invoke-static {v0, p2}, Lcom/google/googlenav/ui/wizard/bz;->a(Lcom/google/googlenav/ui/wizard/bz;Lam/b;)V

    goto :goto_8
.end method
