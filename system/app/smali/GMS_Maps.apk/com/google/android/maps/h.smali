.class Lcom/google/android/maps/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/wizard/cv;


# instance fields
.field final synthetic a:Ljava/lang/Class;

.field final synthetic b:Lcom/google/android/maps/MapsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/maps/MapsActivity;Ljava/lang/Class;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/maps/h;->b:Lcom/google/android/maps/MapsActivity;

    iput-object p2, p0, Lcom/google/android/maps/h;->a:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/h;->a:Ljava/lang/Class;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-static {}, Lcom/google/googlenav/android/U;->a()Lcom/google/googlenav/android/U;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/h;->a:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/android/U;->a(Ljava/lang/Class;)V

    goto :goto_4
.end method


# virtual methods
.method public a()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/maps/h;->c()V

    return-void
.end method

.method public b()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/maps/h;->c()V

    return-void
.end method
