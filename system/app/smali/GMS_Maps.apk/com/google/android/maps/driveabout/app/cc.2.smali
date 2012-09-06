.class Lcom/google/android/maps/driveabout/app/cC;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/NavigationView;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/NavigationView;)V
    .registers 2
    .parameter

    .prologue
    .line 908
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/cC;->a:Lcom/google/android/maps/driveabout/app/NavigationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x1388

    .line 913
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/cC;->a:Lcom/google/android/maps/driveabout/app/NavigationView;

    invoke-static {v2}, Lcom/google/android/maps/driveabout/app/NavigationView;->d(Lcom/google/android/maps/driveabout/app/NavigationView;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 914
    cmp-long v2, v0, v4

    if-ltz v2, :cond_18

    .line 915
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cC;->a:Lcom/google/android/maps/driveabout/app/NavigationView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/NavigationView;->g(Z)V

    .line 919
    :goto_17
    return-void

    .line 917
    :cond_18
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/cC;->a:Lcom/google/android/maps/driveabout/app/NavigationView;

    sub-long v0, v4, v0

    invoke-virtual {v2, p0, v0, v1}, Lcom/google/android/maps/driveabout/app/NavigationView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_17
.end method
