.class Lcom/google/googlenav/android/m;
.super Lcom/google/googlenav/x;


# instance fields
.field final synthetic a:Lcom/google/googlenav/android/l;


# direct methods
.method constructor <init>(Lcom/google/googlenav/android/l;ZZ)V
    .registers 4

    iput-object p1, p0, Lcom/google/googlenav/android/m;->a:Lcom/google/googlenav/android/l;

    invoke-direct {p0, p2, p3}, Lcom/google/googlenav/x;-><init>(ZZ)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    invoke-static {}, Laf/m;->a()Laf/m;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laf/m;->a(Z)V

    return-void
.end method
