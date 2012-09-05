.class Lcom/google/googlenav/ui/view/android/aG;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lbb/c;

.field private final b:Lbb/c;


# direct methods
.method public constructor <init>(Lbb/c;Lbb/c;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/aG;->a:Lbb/c;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/aG;->b:Lbb/c;

    return-void
.end method


# virtual methods
.method public notifyClick(Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_10

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aG;->a:Lbb/c;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aG;->a:Lbb/c;

    new-instance v1, Lbb/A;

    invoke-direct {v1, p1}, Lbb/A;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lbb/c;->a(Lbb/E;)Z

    :cond_10
    return-void
.end method

.method public notifyPageLoad(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aG;->b:Lbb/c;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aG;->b:Lbb/c;

    new-instance v1, Lbb/A;

    invoke-direct {v1, p2, p1}, Lbb/A;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lbb/c;->a(Lbb/E;)Z

    :cond_e
    return-void
.end method
