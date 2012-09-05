.class Lcom/google/googlenav/ui/aK;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/aH;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/aH;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/aK;->a:Lcom/google/googlenav/ui/aH;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/aK;->a:Lcom/google/googlenav/ui/aH;

    iget-object v0, v0, Lcom/google/googlenav/ui/aH;->b:Lcom/google/googlenav/ui/aG;

    invoke-static {v0}, Lcom/google/googlenav/ui/aG;->a(Lcom/google/googlenav/ui/aG;)Lcom/google/googlenav/ui/D;

    move-result-object v0

    const/16 v1, 0x2a7

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/D;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/aK;->a:Lcom/google/googlenav/ui/aH;

    iget-object v0, v0, Lcom/google/googlenav/ui/aH;->b:Lcom/google/googlenav/ui/aG;

    invoke-static {v0}, Lcom/google/googlenav/ui/aG;->a(Lcom/google/googlenav/ui/aG;)Lcom/google/googlenav/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->aC()Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->j()V

    return-void
.end method
