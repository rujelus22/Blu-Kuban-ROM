.class Lcom/google/googlenav/ui/wizard/G;
.super Ljava/lang/Object;

# interfaces
.implements Lax/l;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/E;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/wizard/E;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/G;->a:Lcom/google/googlenav/ui/wizard/E;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/wizard/E;Lcom/google/googlenav/ui/wizard/F;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/G;-><init>(Lcom/google/googlenav/ui/wizard/E;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/G;->a:Lcom/google/googlenav/ui/wizard/E;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/E;->a(Lcom/google/googlenav/ui/wizard/E;)Lax/k;

    move-result-object v0

    invoke-virtual {v0}, Lax/k;->k()Lax/j;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/G;->a:Lcom/google/googlenav/ui/wizard/E;

    invoke-static {v2}, Lcom/google/googlenav/ui/wizard/E;->c(Lcom/google/googlenav/ui/wizard/E;)Lcom/google/googlenav/android/ac;

    move-result-object v2

    new-instance v3, Lcom/google/googlenav/ui/wizard/H;

    invoke-direct {v3, p0, v0}, Lcom/google/googlenav/ui/wizard/H;-><init>(Lcom/google/googlenav/ui/wizard/G;Lax/j;)V

    invoke-virtual {v2, v3, v1}, Lcom/google/googlenav/android/ac;->a(Ljava/lang/Runnable;Z)V

    return-void
.end method
