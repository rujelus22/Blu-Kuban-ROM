.class Ly/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ly/a;


# direct methods
.method constructor <init>(Ly/a;)V
    .registers 2

    iput-object p1, p0, Ly/b;->a:Ly/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->b()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    const-string v1, "0"

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/app/ds;->a(Ljava/lang/String;I)V

    return-void
.end method
