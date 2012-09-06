.class public LaB/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lan/h;Lat/B;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 68
    if-eqz p1, :cond_5

    if-nez p0, :cond_6

    .line 76
    :cond_5
    :goto_5
    return v0

    .line 71
    :cond_6
    invoke-static {p0}, LaB/g;->a(Lan/h;)Lat/B;

    move-result-object v1

    .line 72
    if-eqz v1, :cond_5

    .line 76
    invoke-static {v1, p1}, Lcom/google/googlenav/ui/o;->a(Lat/B;Lat/B;)I

    move-result v0

    goto :goto_5
.end method

.method private static a(Lan/h;)Lat/B;
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-interface {p0}, Lan/h;->g()Z

    move-result v1

    if-nez v1, :cond_8

    .line 57
    :cond_7
    :goto_7
    return-object v0

    .line 53
    :cond_8
    invoke-interface {p0}, Lan/h;->m()Lan/s;

    move-result-object v1

    .line 54
    if-eqz v1, :cond_7

    .line 55
    invoke-virtual {v1}, Lan/s;->a()Lat/B;

    move-result-object v0

    goto :goto_7
.end method

.method public static a(Lcom/google/googlenav/ui/view/android/DistanceView;Lcom/google/googlenav/ui/view/android/HeadingView;Lat/B;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 109
    .line 111
    if-eqz p2, :cond_25

    .line 112
    invoke-static {}, Lan/l;->p()Lan/h;

    move-result-object v1

    .line 113
    invoke-static {}, LaB/h;->i()LaB/h;

    move-result-object v0

    .line 116
    :goto_b
    if-eqz p0, :cond_16

    .line 117
    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/android/DistanceView;->setLocationProvider(Lan/h;)V

    .line 118
    invoke-virtual {p0, p2}, Lcom/google/googlenav/ui/view/android/DistanceView;->setInitialVisibility(Lat/B;)V

    .line 119
    invoke-virtual {p0, p2}, Lcom/google/googlenav/ui/view/android/DistanceView;->setDestination(Lat/B;)V

    .line 122
    :cond_16
    if-eqz p1, :cond_24

    .line 123
    invoke-virtual {p1, v0}, Lcom/google/googlenav/ui/view/android/HeadingView;->setOrientationProvider(LaB/h;)V

    .line 124
    invoke-virtual {p1, v1}, Lcom/google/googlenav/ui/view/android/HeadingView;->setLocationProvider(Lan/h;)V

    .line 125
    invoke-virtual {p1, p2}, Lcom/google/googlenav/ui/view/android/HeadingView;->setInitialVisibility(Lat/B;)V

    .line 126
    invoke-virtual {p1, p2}, Lcom/google/googlenav/ui/view/android/HeadingView;->setDestination(Lat/B;)V

    .line 128
    :cond_24
    return-void

    :cond_25
    move-object v1, v0

    goto :goto_b
.end method
