.class Lbd/am;
.super Ljava/lang/Object;

# interfaces
.implements Lbd/aJ;


# instance fields
.field final synthetic a:Lbd/ak;

.field private b:Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;


# direct methods
.method private constructor <init>(Lbd/ak;)V
    .registers 2

    iput-object p1, p0, Lbd/am;->a:Lbd/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lbd/ak;Lbd/al;)V
    .registers 3

    invoke-direct {p0, p1}, Lbd/am;-><init>(Lbd/ak;)V

    return-void
.end method

.method static synthetic a(Lbd/am;)Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;
    .registers 2

    iget-object v0, p0, Lbd/am;->b:Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;

    return-object v0
.end method

.method static synthetic a(Lbd/am;Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;)Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;
    .registers 2

    iput-object p1, p0, Lbd/am;->b:Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;

    return-object p1
.end method
