.class final Lcom/google/googlenav/ui/t;
.super Lcom/google/googlenav/ui/android/M;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/ay;

.field final synthetic b:Lbb/l;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/ay;Lbb/l;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/t;->a:Lcom/google/googlenav/ui/view/android/ay;

    iput-object p2, p0, Lcom/google/googlenav/ui/t;->b:Lbb/l;

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/M;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/t;->a:Lcom/google/googlenav/ui/view/android/ay;

    iget-object v1, p0, Lcom/google/googlenav/ui/t;->b:Lbb/l;

    iget-object v1, v1, Lbb/l;->p:Lcom/google/googlenav/ui/bl;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/ay;->b(Lcom/google/googlenav/ui/bb;)Z

    return-void
.end method
