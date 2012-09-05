.class Lcom/google/googlenav/ui/wizard/aD;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/google/googlenav/ui/wizard/aC;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/aC;Z)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/aD;->b:Lcom/google/googlenav/ui/wizard/aC;

    iput-boolean p2, p0, Lcom/google/googlenav/ui/wizard/aD;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/aD;->a:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aD;->b:Lcom/google/googlenav/ui/wizard/aC;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/aC;->b:Lcom/google/googlenav/ui/wizard/aB;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/aD;->b:Lcom/google/googlenav/ui/wizard/aC;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/aC;->a:Lcom/google/googlenav/ui/wizard/aG;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/aB;->a(Lcom/google/googlenav/ui/wizard/aB;Lcom/google/googlenav/ui/wizard/aG;)V

    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aD;->b:Lcom/google/googlenav/ui/wizard/aC;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/aC;->a:Lcom/google/googlenav/ui/wizard/aG;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/aG;->a()V

    goto :goto_f
.end method
