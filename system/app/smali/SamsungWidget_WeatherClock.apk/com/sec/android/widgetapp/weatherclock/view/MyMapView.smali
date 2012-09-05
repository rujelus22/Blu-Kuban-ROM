.class public Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;
.super Lcom/google/android/maps/MapView;
.source "MyMapView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/widgetapp/weatherclock/view/MyMapView$Call;
    }
.end annotation


# instance fields
.field call:Lcom/sec/android/widgetapp/weatherclock/view/MyMapView$Call;

.field movecount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/MapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;->movecount:I

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 12
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/maps/MapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;->movecount:I

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/MapView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;->movecount:I

    .line 24
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "e"

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_3c

    .line 63
    :goto_a
    :try_start_a
    invoke-super {p0, p1}, Lcom/google/android/maps/MapView;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_36

    move-result v1

    .line 68
    :goto_e
    return v1

    .line 44
    :pswitch_f
    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->setEnterOnTap(Z)V

    .line 45
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;->call:Lcom/sec/android/widgetapp/weatherclock/view/MyMapView$Call;

    invoke-interface {v2}, Lcom/sec/android/widgetapp/weatherclock/view/MyMapView$Call;->run()V

    goto :goto_a

    .line 48
    :pswitch_18
    iget v2, p0, Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;->movecount:I

    const/16 v3, 0xa

    if-ge v2, v3, :cond_21

    .line 49
    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->setEnterOnTap(Z)V

    .line 51
    :cond_21
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;->call:Lcom/sec/android/widgetapp/weatherclock/view/MyMapView$Call;

    iget v3, p0, Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;->movecount:I

    invoke-interface {v2, v3}, Lcom/sec/android/widgetapp/weatherclock/view/MyMapView$Call;->up(I)V

    .line 52
    iput v1, p0, Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;->movecount:I

    goto :goto_a

    .line 55
    :pswitch_2b
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->setEnterOnTap(Z)V

    .line 57
    iget v2, p0, Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;->movecount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;->movecount:I

    goto :goto_a

    .line 65
    :catch_36
    move-exception v0

    .line 67
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e

    .line 41
    nop

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_f
        :pswitch_18
        :pswitch_2b
    .end packed-switch
.end method

.method public setInterface(Lcom/sec/android/widgetapp/weatherclock/view/MyMapView$Call;)V
    .registers 2
    .parameter "call"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;->call:Lcom/sec/android/widgetapp/weatherclock/view/MyMapView$Call;

    .line 37
    return-void
.end method
