.class Lcom/google/googlenav/ui/view/android/aC;
.super Lbb/b;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/p;

.field final synthetic b:Lcom/google/googlenav/ui/view/android/aB;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/aB;Lcom/google/googlenav/ui/p;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/aC;->b:Lcom/google/googlenav/ui/view/android/aB;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/aC;->a:Lcom/google/googlenav/ui/p;

    invoke-direct {p0}, Lbb/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbb/E;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aC;->a:Lcom/google/googlenav/ui/p;

    invoke-interface {v0}, Lcom/google/googlenav/ui/p;->o()V

    const/4 v0, 0x1

    return v0
.end method
