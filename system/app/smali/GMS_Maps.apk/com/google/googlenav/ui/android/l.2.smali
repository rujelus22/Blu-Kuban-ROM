.class Lcom/google/googlenav/ui/android/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/V;


# instance fields
.field final synthetic a:Lbb/c;

.field final synthetic b:Lbb/d;

.field final synthetic c:Lcom/google/googlenav/ui/android/AndroidVectorView;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/android/AndroidVectorView;Lbb/c;Lbb/d;)V
    .registers 4

    iput-object p1, p0, Lcom/google/googlenav/ui/android/l;->c:Lcom/google/googlenav/ui/android/AndroidVectorView;

    iput-object p2, p0, Lcom/google/googlenav/ui/android/l;->a:Lbb/c;

    iput-object p3, p0, Lcom/google/googlenav/ui/android/l;->b:Lbb/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/m;)V
    .registers 4

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/google/googlenav/ui/android/l;->a:Lbb/c;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/l;->b:Lbb/d;

    invoke-interface {v0, v1}, Lbb/c;->a(Lbb/E;)Z

    :cond_9
    return-void
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/m;)V
    .registers 2

    return-void
.end method
