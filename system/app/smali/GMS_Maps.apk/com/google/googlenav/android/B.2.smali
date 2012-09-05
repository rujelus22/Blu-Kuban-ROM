.class Lcom/google/googlenav/android/B;
.super Lcom/google/googlenav/x;


# instance fields
.field final synthetic a:Lcom/google/googlenav/android/A;


# direct methods
.method constructor <init>(Lcom/google/googlenav/android/A;ZZ)V
    .registers 4

    iput-object p1, p0, Lcom/google/googlenav/android/B;->a:Lcom/google/googlenav/android/A;

    invoke-direct {p0, p2, p3}, Lcom/google/googlenav/x;-><init>(ZZ)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    const-string v0, "LAST_NETWORK_CONNECTED"

    invoke-static {v0}, Lbf/c;->a(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {}, Lcom/google/googlenav/android/J;->f()Z

    move-result v2

    if-eqz v2, :cond_12

    const-string v0, "LAST_NETWORK_CONNECTED"

    invoke-static {v0}, Lbf/c;->b(Ljava/lang/String;)V

    :goto_11
    return-void

    :cond_12
    iget-object v2, p0, Lcom/google/googlenav/android/B;->a:Lcom/google/googlenav/android/A;

    invoke-static {v2, v0, v1}, Lcom/google/googlenav/android/A;->a(Lcom/google/googlenav/android/A;J)V

    goto :goto_11
.end method
