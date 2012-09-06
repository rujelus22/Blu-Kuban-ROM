.class Lcom/google/googlenav/ui/android/aq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;)V
    .registers 2
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/google/googlenav/ui/android/aq;->a:Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(JJ)I
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 88
    cmp-long v0, p1, p3

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    cmp-long v0, p1, p3

    if-lez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_5

    :cond_c
    const/4 v0, -0x1

    goto :goto_5
.end method


# virtual methods
.method public a(Lcom/google/googlenav/cn;Lcom/google/googlenav/cn;)I
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 81
    invoke-virtual {p1, v2}, Lcom/google/googlenav/cn;->b(Z)J

    move-result-wide v0

    invoke-virtual {p2, v2}, Lcom/google/googlenav/cn;->b(Z)J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/googlenav/ui/android/aq;->a(JJ)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 77
    check-cast p1, Lcom/google/googlenav/cn;

    check-cast p2, Lcom/google/googlenav/cn;

    invoke-virtual {p0, p1, p2}, Lcom/google/googlenav/ui/android/aq;->a(Lcom/google/googlenav/cn;Lcom/google/googlenav/cn;)I

    move-result v0

    return v0
.end method
