.class Lcom/google/googlenav/ui/wizard/ha;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/gZ;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/gZ;Ljava/util/List;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/ha;->b:Lcom/google/googlenav/ui/wizard/gZ;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/ha;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ha;->b:Lcom/google/googlenav/ui/wizard/gZ;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/gZ;->a:Lcom/google/googlenav/ui/wizard/gY;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/gY;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->j()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ha;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ha;->b:Lcom/google/googlenav/ui/wizard/gZ;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/gZ;->a:Lcom/google/googlenav/ui/wizard/gY;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/gY;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->G()Lcom/google/googlenav/L;

    move-result-object v0

    const/16 v1, 0x82

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/L;->a(Ljava/lang/String;)V

    :goto_24
    return-void

    :cond_25
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ha;->b:Lcom/google/googlenav/ui/wizard/gZ;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/gZ;->a:Lcom/google/googlenav/ui/wizard/gY;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ha;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/gY;->a(Lcom/google/googlenav/ui/wizard/gY;Ljava/util/List;)V

    goto :goto_24
.end method
