.class Lax/G;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/aX;


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lax/x;


# direct methods
.method constructor <init>(Lax/x;Ljava/lang/Runnable;)V
    .registers 3

    iput-object p1, p0, Lax/G;->b:Lax/x;

    iput-object p2, p0, Lax/G;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/aV;)V
    .registers 5

    const/4 v0, 0x1

    iget-object v1, p0, Lax/G;->b:Lax/x;

    invoke-static {v1}, Lax/x;->a(Lax/x;)Lcom/google/googlenav/android/ac;

    move-result-object v1

    iget-object v2, p0, Lax/G;->a:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/ac;->a(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public a(Lcom/google/googlenav/aV;Z)V
    .registers 6

    const/4 v0, 0x1

    iget-object v1, p0, Lax/G;->b:Lax/x;

    invoke-static {v1}, Lax/x;->a(Lax/x;)Lcom/google/googlenav/android/ac;

    move-result-object v1

    iget-object v2, p0, Lax/G;->a:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/ac;->a(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public b(Lcom/google/googlenav/aV;)V
    .registers 5

    const/4 v0, 0x1

    iget-object v1, p0, Lax/G;->b:Lax/x;

    invoke-static {v1}, Lax/x;->a(Lax/x;)Lcom/google/googlenav/android/ac;

    move-result-object v1

    iget-object v2, p0, Lax/G;->a:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/ac;->a(Ljava/lang/Runnable;Z)V

    return-void
.end method
