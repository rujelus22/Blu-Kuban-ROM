.class Lcom/google/googlenav/ui/view/android/cc;
.super Lbb/b;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/cb;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/cb;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/cc;->a:Lcom/google/googlenav/ui/view/android/cb;

    invoke-direct {p0}, Lbb/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbb/E;)Z
    .registers 6

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/cc;->a:Lcom/google/googlenav/ui/view/android/cb;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/cb;->a(Lcom/google/googlenav/ui/view/android/cb;)Lcom/google/googlenav/ui/p;

    move-result-object v0

    const/16 v1, 0x3f9

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/p;->a(IILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/cc;->a:Lcom/google/googlenav/ui/view/android/cb;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/cb;->a(Lcom/google/googlenav/ui/view/android/cb;)Lcom/google/googlenav/ui/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/p;->o()V

    :cond_19
    const/16 v0, 0x64

    const-string v1, "x"

    invoke-static {v0, v1}, Laf/m;->a(ILjava/lang/String;)Z

    const/4 v0, 0x1

    return v0
.end method
