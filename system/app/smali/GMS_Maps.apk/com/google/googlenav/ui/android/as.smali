.class Lcom/google/googlenav/ui/android/as;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ck;

.field final synthetic b:Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;Lcom/google/googlenav/ck;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/google/googlenav/ui/android/as;->b:Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;

    iput-object p2, p0, Lcom/google/googlenav/ui/android/as;->a:Lcom/google/googlenav/ck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/googlenav/ui/android/as;->b:Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->a(Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;)Lcom/google/googlenav/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->c()Lcom/google/googlenav/android/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->i()Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ac()Lcom/google/googlenav/aA;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/android/as;->a:Lcom/google/googlenav/ck;

    invoke-virtual {v1}, Lcom/google/googlenav/ck;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/aA;->a(Ljava/lang/String;)V

    .line 255
    return-void
.end method
