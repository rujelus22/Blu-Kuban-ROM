.class Lcom/google/googlenav/ui/aH;
.super Ljava/lang/Object;

# interfaces
.implements LaR/f;


# instance fields
.field final synthetic a:LaJ/B;

.field final synthetic b:Lcom/google/googlenav/ui/aG;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/aG;LaJ/B;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/aH;->b:Lcom/google/googlenav/ui/aG;

    iput-object p2, p0, Lcom/google/googlenav/ui/aH;->a:LaJ/B;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlenav/ui/aH;->b:Lcom/google/googlenav/ui/aG;

    invoke-static {v1}, Lcom/google/googlenav/ui/aG;->a(Lcom/google/googlenav/ui/aG;)Lcom/google/googlenav/ui/D;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->ae()Lcom/google/googlenav/android/ac;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/aJ;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/aJ;-><init>(Lcom/google/googlenav/ui/aH;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/ac;->a(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public a(II)V
    .registers 6

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/googlenav/ui/aH;->b:Lcom/google/googlenav/ui/aG;

    invoke-static {v1}, Lcom/google/googlenav/ui/aG;->a(Lcom/google/googlenav/ui/aG;)Lcom/google/googlenav/ui/D;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->ae()Lcom/google/googlenav/android/ac;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/aI;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/googlenav/ui/aI;-><init>(Lcom/google/googlenav/ui/aH;II)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/ac;->a(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public b()V
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlenav/ui/aH;->b:Lcom/google/googlenav/ui/aG;

    invoke-static {v1}, Lcom/google/googlenav/ui/aG;->a(Lcom/google/googlenav/ui/aG;)Lcom/google/googlenav/ui/D;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->ae()Lcom/google/googlenav/android/ac;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/aK;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/aK;-><init>(Lcom/google/googlenav/ui/aH;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/ac;->a(Ljava/lang/Runnable;Z)V

    return-void
.end method
