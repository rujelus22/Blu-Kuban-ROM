.class Lcom/google/googlenav/ui/android/X;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView$RealtimePulseImageView;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView$RealtimePulseImageView;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/android/X;->a:Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView$RealtimePulseImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/X;->a:Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView$RealtimePulseImageView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView$RealtimePulseImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void
.end method
