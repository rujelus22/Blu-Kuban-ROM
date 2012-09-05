.class Lcom/google/googlenav/ui/wizard/hB;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/hA;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/hA;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/hB;->a:Lcom/google/googlenav/ui/wizard/hA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hB;->a:Lcom/google/googlenav/ui/wizard/hA;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/hA;->f:Lcom/google/googlenav/ui/view/android/bs;

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hB;->a:Lcom/google/googlenav/ui/wizard/hA;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hA;->r()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hB;->a:Lcom/google/googlenav/ui/wizard/hA;

    new-instance v1, Lcom/google/googlenav/ui/wizard/hE;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/hB;->a:Lcom/google/googlenav/ui/wizard/hA;

    invoke-direct {v1, v2}, Lcom/google/googlenav/ui/wizard/hE;-><init>(Lcom/google/googlenav/ui/wizard/hA;)V

    iput-object v1, v0, Lcom/google/googlenav/ui/wizard/hA;->f:Lcom/google/googlenav/ui/view/android/bs;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hB;->a:Lcom/google/googlenav/ui/wizard/hA;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/hA;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->show()V

    :cond_20
    return-void
.end method
