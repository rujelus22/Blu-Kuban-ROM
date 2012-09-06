.class Lcom/google/googlenav/ui/android/at;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ca;

.field final synthetic b:Lcom/google/googlenav/ui/g;

.field final synthetic c:Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;Lcom/google/googlenav/ca;Lcom/google/googlenav/ui/g;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 396
    iput-object p1, p0, Lcom/google/googlenav/ui/android/at;->c:Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;

    iput-object p2, p0, Lcom/google/googlenav/ui/android/at;->a:Lcom/google/googlenav/ca;

    iput-object p3, p0, Lcom/google/googlenav/ui/android/at;->b:Lcom/google/googlenav/ui/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter

    .prologue
    .line 401
    const/16 v0, 0x54

    const-string v1, "ts"

    const-string v2, "n"

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/google/googlenav/ui/android/at;->a:Lcom/google/googlenav/ca;

    invoke-virtual {v0}, Lcom/google/googlenav/ca;->j()Lat/B;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 405
    new-instance v0, Lcom/google/googlenav/W;

    const-string v1, "s"

    iget-object v2, p0, Lcom/google/googlenav/ui/android/at;->a:Lcom/google/googlenav/ca;

    invoke-virtual {v2}, Lcom/google/googlenav/ca;->h()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/ui/android/at;->a:Lcom/google/googlenav/ca;

    invoke-virtual {v3}, Lcom/google/googlenav/ca;->j()Lat/B;

    move-result-object v3

    iget-object v4, p0, Lcom/google/googlenav/ui/android/at;->a:Lcom/google/googlenav/ca;

    invoke-virtual {v4}, Lcom/google/googlenav/ca;->i()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/googlenav/W;-><init>(Ljava/lang/String;Ljava/lang/String;Lat/B;Ljava/lang/String;)V

    .line 408
    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/google/googlenav/W;->a(B)V

    .line 412
    iget-object v1, p0, Lcom/google/googlenav/ui/android/at;->b:Lcom/google/googlenav/ui/g;

    const/16 v2, 0x3fa

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3, v0}, Lcom/google/googlenav/ui/g;->a(IILjava/lang/Object;)Z

    .line 414
    :cond_37
    return-void
.end method
