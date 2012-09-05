.class Lcom/google/googlenav/ui/L;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/D;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/D;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/L;->a:Lcom/google/googlenav/ui/D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/L;->a:Lcom/google/googlenav/ui/D;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/D;->m(Z)V

    return-void
.end method
