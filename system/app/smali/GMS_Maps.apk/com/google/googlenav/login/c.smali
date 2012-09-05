.class Lcom/google/googlenav/login/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/login/a;


# direct methods
.method constructor <init>(Lcom/google/googlenav/login/a;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/login/c;->a:Lcom/google/googlenav/login/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/login/c;->a:Lcom/google/googlenav/login/a;

    invoke-virtual {v0}, Lcom/google/googlenav/login/a;->p()V

    return-void
.end method
