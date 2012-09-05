.class LaY/aL;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/aV;

.field final synthetic b:LaY/aG;


# direct methods
.method constructor <init>(LaY/aG;Lcom/google/googlenav/aV;)V
    .registers 3

    iput-object p1, p0, LaY/aL;->b:LaY/aG;

    iput-object p2, p0, LaY/aL;->a:Lcom/google/googlenav/aV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, LaY/aL;->b:LaY/aG;

    iget-object v1, p0, LaY/aL;->a:Lcom/google/googlenav/aV;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, LaY/aG;->b(Lcom/google/googlenav/aV;Z)V

    return-void
.end method
