.class Lcom/google/googlenav/ui/wizard/aC;
.super Ljava/lang/Object;

# interfaces
.implements Lax/bi;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/aG;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/aB;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/aB;Lcom/google/googlenav/ui/wizard/aG;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/aC;->b:Lcom/google/googlenav/ui/wizard/aB;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/aC;->a:Lcom/google/googlenav/ui/wizard/aG;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/aC;->b:Lcom/google/googlenav/ui/wizard/aB;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/aB;->a(Lcom/google/googlenav/ui/wizard/aB;)Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/hM;->A()Lcom/google/googlenav/android/ac;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/aD;

    invoke-direct {v2, p0, p1}, Lcom/google/googlenav/ui/wizard/aD;-><init>(Lcom/google/googlenav/ui/wizard/aC;Z)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/ac;->a(Ljava/lang/Runnable;Z)V

    return-void
.end method
