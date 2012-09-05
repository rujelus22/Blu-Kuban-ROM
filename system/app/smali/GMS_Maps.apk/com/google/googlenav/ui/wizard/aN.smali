.class Lcom/google/googlenav/ui/wizard/aN;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/aM;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/aM;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/aN;->a:Lcom/google/googlenav/ui/wizard/aM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aN;->a:Lcom/google/googlenav/ui/wizard/aM;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/aM;->b:Lcom/google/googlenav/ui/wizard/aS;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/aN;->a:Lcom/google/googlenav/ui/wizard/aM;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/aM;->a:Lcom/google/googlenav/h;

    invoke-virtual {v1}, Lcom/google/googlenav/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/wizard/aS;->a(Ljava/lang/String;)V

    return-void
.end method
