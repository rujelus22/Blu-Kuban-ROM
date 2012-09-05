.class Lcom/google/googlenav/ui/wizard/dd;
.super Ljava/lang/Object;

# interfaces
.implements Lax/l;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/dc;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/dc;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/dd;->a:Lcom/google/googlenav/ui/wizard/dc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dd;->a:Lcom/google/googlenav/ui/wizard/dc;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/dc;->a(Lcom/google/googlenav/ui/wizard/dc;Z)Z

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dd;->a:Lcom/google/googlenav/ui/wizard/dc;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/dc;->e()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dd;->a:Lcom/google/googlenav/ui/wizard/dc;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/dc;->a(Lcom/google/googlenav/ui/wizard/dc;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dd;->a:Lcom/google/googlenav/ui/wizard/dc;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/dc;->a()V

    const/16 v0, 0x203

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bw;->a(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    :cond_21
    return-void
.end method
