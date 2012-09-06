.class Lcom/google/android/maps/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/SearchManager$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/MapsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/maps/MapsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 708
    iput-object p1, p0, Lcom/google/android/maps/v;->a:Lcom/google/android/maps/MapsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 3

    .prologue
    .line 711
    iget-object v0, p0, Lcom/google/android/maps/v;->a:Lcom/google/android/maps/MapsActivity;

    #calls: Lcom/google/android/maps/MapsActivity;->getController()Lcom/google/googlenav/ui/v;
    invoke-static {v0}, Lcom/google/android/maps/MapsActivity;->access$800(Lcom/google/android/maps/MapsActivity;)Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->aA()Lab/a;

    move-result-object v0

    invoke-virtual {v0}, Lab/a;->b()V

    .line 712
    invoke-static {}, LaI/o;->a()LaI/o;

    move-result-object v0

    .line 717
    if-eqz v0, :cond_20

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->ar()Z

    move-result v1

    if-nez v1, :cond_20

    .line 718
    invoke-virtual {v0}, LaI/o;->j()V

    .line 720
    :cond_20
    return-void
.end method
