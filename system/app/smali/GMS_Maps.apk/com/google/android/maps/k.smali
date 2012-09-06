.class Lcom/google/android/maps/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/maps/MapsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/maps/MapsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1948
    iput-object p1, p0, Lcom/google/android/maps/k;->a:Lcom/google/android/maps/MapsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1954
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/googlenav/common/io/j;->a(Z)V

    .line 1957
    iget-object v0, p0, Lcom/google/android/maps/k;->a:Lcom/google/android/maps/MapsActivity;

    #calls: Lcom/google/android/maps/MapsActivity;->getController()Lcom/google/googlenav/ui/v;
    invoke-static {v0}, Lcom/google/android/maps/MapsActivity;->access$800(Lcom/google/android/maps/MapsActivity;)Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->aa()Lcom/google/googlenav/android/Y;

    move-result-object v0

    new-instance v1, Lcom/google/android/maps/l;

    invoke-direct {v1, p0}, Lcom/google/android/maps/l;-><init>(Lcom/google/android/maps/k;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    .line 1984
    return-void
.end method
