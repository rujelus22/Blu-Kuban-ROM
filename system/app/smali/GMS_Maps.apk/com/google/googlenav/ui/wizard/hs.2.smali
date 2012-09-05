.class Lcom/google/googlenav/ui/wizard/hs;
.super Ljava/lang/Object;

# interfaces
.implements Lax/bc;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/hp;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/hp;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/hs;->a:Lcom/google/googlenav/ui/wizard/hp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hs;->a:Lcom/google/googlenav/ui/wizard/hp;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/hp;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->j()V

    if-nez p1, :cond_f

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hs;->a:Lcom/google/googlenav/ui/wizard/hp;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/hp;->a(Lcom/google/googlenav/ui/wizard/hp;)V

    :goto_e
    return-void

    :cond_f
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hs;->a:Lcom/google/googlenav/ui/wizard/hp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/hp;->a(Lcom/google/googlenav/ui/wizard/hp;Z)V

    goto :goto_e
.end method
