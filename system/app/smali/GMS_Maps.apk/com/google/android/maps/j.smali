.class Lcom/google/android/maps/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/wizard/dG;


# instance fields
.field final synthetic a:Lcom/google/googlenav/friend/aS;

.field final synthetic b:Ljava/lang/Class;

.field final synthetic c:Lcom/google/android/maps/MapsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/maps/MapsActivity;Lcom/google/googlenav/friend/aS;Ljava/lang/Class;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1886
    iput-object p1, p0, Lcom/google/android/maps/j;->c:Lcom/google/android/maps/MapsActivity;

    iput-object p2, p0, Lcom/google/android/maps/j;->a:Lcom/google/googlenav/friend/aS;

    iput-object p3, p0, Lcom/google/android/maps/j;->b:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public R_()Z
    .registers 2

    .prologue
    .line 1916
    const/4 v0, 0x1

    return v0
.end method

.method public S_()V
    .registers 3

    .prologue
    .line 1921
    iget-object v0, p0, Lcom/google/android/maps/j;->b:Ljava/lang/Class;

    if-eqz v0, :cond_d

    .line 1922
    invoke-static {}, Lcom/google/googlenav/android/Q;->a()Lcom/google/googlenav/android/Q;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/j;->b:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/android/Q;->a(Ljava/lang/Class;)V

    .line 1924
    :cond_d
    return-void
.end method

.method public a(Lad/y;Ljava/lang/Long;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/aW;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1891
    iget-object v0, p0, Lcom/google/android/maps/j;->c:Lcom/google/android/maps/MapsActivity;

    #calls: Lcom/google/android/maps/MapsActivity;->getController()Lcom/google/googlenav/ui/v;
    invoke-static {v0}, Lcom/google/android/maps/MapsActivity;->access$800(Lcom/google/android/maps/MapsActivity;)Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->r()Lcom/google/googlenav/friend/ai;

    move-result-object v0

    invoke-virtual {p1}, Lad/y;->f()Lat/B;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/maps/j;->a:Lcom/google/googlenav/friend/aS;

    invoke-virtual {v0, v1, p2, v2, v3}, Lcom/google/googlenav/friend/ai;->a(Lat/B;Ljava/lang/Long;ZLcom/google/googlenav/friend/aS;)V

    .line 1894
    invoke-static {}, Lcom/google/googlenav/android/c;->a()Lcom/google/googlenav/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->i()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/friend/reporting/r;->b(Landroid/content/Context;)V

    .line 1899
    iget-object v0, p0, Lcom/google/android/maps/j;->b:Ljava/lang/Class;

    if-eqz v0, :cond_39

    .line 1900
    invoke-static {}, Lcom/google/googlenav/android/Q;->a()Lcom/google/googlenav/android/Q;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/j;->b:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/android/Q;->a(Ljava/lang/Class;)V

    .line 1906
    :goto_2c
    const/4 v0, 0x0

    .line 1907
    if-eqz p3, :cond_35

    .line 1908
    const/16 v0, 0xb

    invoke-static {p3, v0}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    .line 1911
    :cond_35
    invoke-static {v0}, Lcom/google/googlenav/friend/af;->b(Ljava/lang/String;)V

    .line 1912
    return-void

    .line 1902
    :cond_39
    iget-object v0, p0, Lcom/google/android/maps/j;->c:Lcom/google/android/maps/MapsActivity;

    #calls: Lcom/google/android/maps/MapsActivity;->getController()Lcom/google/googlenav/ui/v;
    invoke-static {v0}, Lcom/google/android/maps/MapsActivity;->access$800(Lcom/google/android/maps/MapsActivity;)Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->t()Lat/u;

    move-result-object v0

    invoke-virtual {p1}, Lad/y;->f()Lat/B;

    move-result-object v1

    invoke-virtual {v0, v1}, Lat/u;->c(Lat/B;)V

    goto :goto_2c
.end method
