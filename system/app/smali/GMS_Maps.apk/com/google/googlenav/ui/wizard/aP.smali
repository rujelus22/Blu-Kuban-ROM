.class Lcom/google/googlenav/ui/wizard/aP;
.super Ljava/lang/Object;

# interfaces
.implements LaY/g;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/aO;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/aO;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/aP;->a:Lcom/google/googlenav/ui/wizard/aO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/aP;->a:Lcom/google/googlenav/ui/wizard/aO;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/aO;->d:Lcom/google/googlenav/ui/wizard/aM;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/aM;->c:Lcom/google/googlenav/ui/wizard/aL;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/aL;->a(Lcom/google/googlenav/ui/wizard/aL;)Lcom/google/googlenav/android/ac;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/aQ;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/aQ;-><init>(Lcom/google/googlenav/ui/wizard/aP;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/ac;->a(Ljava/lang/Runnable;Z)V

    return-void
.end method
