.class Lax/B;
.super Lax/bK;


# instance fields
.field final synthetic a:Lax/x;


# direct methods
.method constructor <init>(Lax/x;)V
    .registers 2

    iput-object p1, p0, Lax/B;->a:Lax/x;

    invoke-direct {p0}, Lax/bK;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 5

    iget-object v0, p0, Lax/B;->a:Lax/x;

    invoke-static {v0}, Lax/x;->c(Lax/x;)Lcom/google/googlenav/ui/D;

    move-result-object v0

    const/16 v1, 0x12b

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/D;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    iget-object v1, p0, Lax/B;->a:Lax/x;

    invoke-static {v1}, Lax/x;->a(Lax/x;)Lcom/google/googlenav/android/ac;

    move-result-object v1

    new-instance v2, Lax/D;

    invoke-direct {v2, p0}, Lax/D;-><init>(Lax/B;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/ac;->a(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public a([B)V
    .registers 5

    iget-object v0, p0, Lax/B;->a:Lax/x;

    invoke-static {v0}, Lax/x;->c(Lax/x;)Lcom/google/googlenav/ui/D;

    move-result-object v0

    const/16 v1, 0x19d

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/D;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    iget-object v1, p0, Lax/B;->a:Lax/x;

    invoke-static {v1}, Lax/x;->a(Lax/x;)Lcom/google/googlenav/android/ac;

    move-result-object v1

    new-instance v2, Lax/C;

    invoke-direct {v2, p0}, Lax/C;-><init>(Lax/B;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/ac;->a(Ljava/lang/Runnable;Z)V

    return-void
.end method
