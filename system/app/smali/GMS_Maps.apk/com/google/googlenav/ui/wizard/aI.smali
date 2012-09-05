.class final Lcom/google/googlenav/ui/wizard/aI;
.super Ljava/lang/Object;

# interfaces
.implements LaE/m;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/aH;

.field private final b:LaE/m;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/aH;LaE/m;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/aI;->a:Lcom/google/googlenav/ui/wizard/aH;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/aI;->b:LaE/m;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/aI;)LaE/m;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aI;->b:LaE/m;

    return-object v0
.end method


# virtual methods
.method public a(ILaE/h;)V
    .registers 6

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aI;->a:Lcom/google/googlenav/ui/wizard/aH;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/aH;->a(Lcom/google/googlenav/ui/wizard/aH;Lcom/google/googlenav/ui/wizard/aI;)Lcom/google/googlenav/ui/wizard/aI;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/aI;->a:Lcom/google/googlenav/ui/wizard/aH;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/aH;->a(Lcom/google/googlenav/ui/wizard/aH;)Lcom/google/googlenav/android/ac;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/aK;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/googlenav/ui/wizard/aK;-><init>(Lcom/google/googlenav/ui/wizard/aI;ILaE/h;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/ac;->a(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public a(LaJ/B;LaE/h;)V
    .registers 6

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aI;->a:Lcom/google/googlenav/ui/wizard/aH;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/aH;->a(Lcom/google/googlenav/ui/wizard/aH;Lcom/google/googlenav/ui/wizard/aI;)Lcom/google/googlenav/ui/wizard/aI;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/aI;->a:Lcom/google/googlenav/ui/wizard/aH;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/aH;->a(Lcom/google/googlenav/ui/wizard/aH;)Lcom/google/googlenav/android/ac;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/aJ;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/googlenav/ui/wizard/aJ;-><init>(Lcom/google/googlenav/ui/wizard/aI;LaJ/B;LaE/h;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/ac;->a(Ljava/lang/Runnable;Z)V

    return-void
.end method
