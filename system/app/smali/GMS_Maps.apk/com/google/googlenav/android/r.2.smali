.class Lcom/google/googlenav/android/r;
.super Lcom/google/googlenav/x;


# instance fields
.field final synthetic a:Lcom/google/googlenav/android/l;


# direct methods
.method constructor <init>(Lcom/google/googlenav/android/l;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/android/r;->a:Lcom/google/googlenav/android/l;

    invoke-direct {p0}, Lcom/google/googlenav/x;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/android/r;->a:Lcom/google/googlenav/android/l;

    invoke-static {v0}, Lcom/google/googlenav/android/l;->b(Lcom/google/googlenav/android/l;)LaR/g;

    move-result-object v0

    invoke-interface {v0}, LaR/g;->a()V

    return-void
.end method
