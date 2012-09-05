.class Lcom/google/googlenav/ui/aE;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/aD;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/aD;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/aE;->a:Lcom/google/googlenav/ui/aD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/aE;->a:Lcom/google/googlenav/ui/aD;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aD;->a()Lcom/google/googlenav/login/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/login/h;->c()V

    return-void
.end method
