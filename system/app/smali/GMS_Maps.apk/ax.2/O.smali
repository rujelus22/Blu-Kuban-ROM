.class Lax/O;
.super Lax/a;


# instance fields
.field final synthetic a:Lax/N;


# direct methods
.method constructor <init>(Lax/N;Lax/by;)V
    .registers 3

    iput-object p1, p0, Lax/O;->a:Lax/N;

    invoke-direct {p0, p2}, Lax/a;-><init>(Lax/by;)V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 3

    const/16 v0, 0x45

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bw;->a(II)Landroid/widget/Toast;

    return-void
.end method
