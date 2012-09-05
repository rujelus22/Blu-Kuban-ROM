.class Lcom/google/googlenav/ui/wizard/gZ;
.super Ljava/lang/Object;

# interfaces
.implements Laz/c;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/gY;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/gY;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/gZ;->a:Lcom/google/googlenav/ui/wizard/gY;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gZ;->a:Lcom/google/googlenav/ui/wizard/gY;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/gY;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->j()V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gZ;->a:Lcom/google/googlenav/ui/wizard/gY;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/gY;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/hM;->A()Lcom/google/googlenav/android/ac;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/hb;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/hb;-><init>(Lcom/google/googlenav/ui/wizard/gZ;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/ac;->a(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gZ;->a:Lcom/google/googlenav/ui/wizard/gY;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/gY;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/hM;->A()Lcom/google/googlenav/android/ac;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/ha;

    invoke-direct {v2, p0, p1}, Lcom/google/googlenav/ui/wizard/ha;-><init>(Lcom/google/googlenav/ui/wizard/gZ;Ljava/util/List;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/ac;->a(Ljava/lang/Runnable;Z)V

    return-void
.end method
