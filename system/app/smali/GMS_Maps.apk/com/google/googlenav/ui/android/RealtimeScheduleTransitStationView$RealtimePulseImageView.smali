.class public Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView$RealtimePulseImageView;
.super Landroid/widget/ImageView;


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput p2, p0, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView$RealtimePulseImageView;->a:I

    return-void
.end method


# virtual methods
.method public getBaseline()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView$RealtimePulseImageView;->a:I

    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 7

    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    new-instance v0, Lcom/google/googlenav/ui/android/X;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/android/X;-><init>(Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView$RealtimePulseImageView;)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView$RealtimePulseImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
