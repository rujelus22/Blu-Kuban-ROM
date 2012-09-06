.class Lcom/google/googlenav/android/z;
.super Lcom/google/googlenav/x;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/android/y;


# direct methods
.method constructor <init>(Lcom/google/googlenav/android/y;ZZ)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/google/googlenav/android/z;->a:Lcom/google/googlenav/android/y;

    invoke-direct {p0, p2, p3}, Lcom/google/googlenav/x;-><init>(ZZ)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 37
    const-string v0, "LAST_NETWORK_CONNECTED"

    invoke-static {v0}, LaT/d;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 40
    invoke-static {}, Lcom/google/googlenav/android/F;->f()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 42
    const-string v0, "LAST_NETWORK_CONNECTED"

    invoke-static {v0}, LaT/d;->b(Ljava/lang/String;)V

    .line 48
    :goto_11
    return-void

    .line 46
    :cond_12
    iget-object v2, p0, Lcom/google/googlenav/android/z;->a:Lcom/google/googlenav/android/y;

    invoke-static {v2, v0, v1}, Lcom/google/googlenav/android/y;->a(Lcom/google/googlenav/android/y;J)V

    goto :goto_11
.end method
