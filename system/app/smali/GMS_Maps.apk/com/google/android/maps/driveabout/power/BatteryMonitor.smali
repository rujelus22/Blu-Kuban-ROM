.class public Lcom/google/android/maps/driveabout/power/BatteryMonitor;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 41
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/power/BatteryMonitor;->a()V

    .line 42
    return-void
.end method

.method private a()V
    .registers 2

    .prologue
    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/power/BatteryMonitor;->b:I

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/power/BatteryMonitor;->a:I

    .line 82
    return-void
.end method

.method private a(IF)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x42c8

    .line 88
    iget v0, p0, Lcom/google/android/maps/driveabout/power/BatteryMonitor;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 89
    mul-float v0, p2, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/power/BatteryMonitor;->a:I

    .line 92
    :cond_c
    mul-float v0, p2, v2

    float-to-int v0, v0

    .line 93
    iget v1, p0, Lcom/google/android/maps/driveabout/power/BatteryMonitor;->b:I

    iget v2, p0, Lcom/google/android/maps/driveabout/power/BatteryMonitor;->a:I

    sub-int v2, v0, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/maps/driveabout/power/BatteryMonitor;->b:I

    .line 94
    iput v0, p0, Lcom/google/android/maps/driveabout/power/BatteryMonitor;->a:I

    .line 95
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 28
    new-instance v0, Lcom/google/android/maps/driveabout/power/BatteryMonitor;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/power/BatteryMonitor;-><init>()V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 30
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, -0x1

    .line 50
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "status"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 51
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "level"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    int-to-float v1, v1

    .line 52
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "scale"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    .line 53
    div-float/2addr v1, v2

    .line 57
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2b

    const/high16 v2, 0x3e80

    cmpg-float v2, v1, v2

    if-gez v2, :cond_34

    .line 59
    :cond_2b
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/power/BatteryMonitor;->a()V

    .line 60
    const-string v0, "BatteryMonitor"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/power/a;->b(Ljava/lang/String;)V

    .line 77
    :cond_33
    :goto_33
    return-void

    .line 64
    :cond_34
    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/power/BatteryMonitor;->a(IF)V

    .line 72
    iget v0, p0, Lcom/google/android/maps/driveabout/power/BatteryMonitor;->b:I

    if-ltz v0, :cond_41

    .line 73
    const-string v0, "BatteryMonitor"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/power/a;->a(Ljava/lang/String;)V

    goto :goto_33

    .line 74
    :cond_41
    iget v0, p0, Lcom/google/android/maps/driveabout/power/BatteryMonitor;->b:I

    const/16 v1, -0xa

    if-gt v0, v1, :cond_33

    .line 75
    const-string v0, "BatteryMonitor"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/power/a;->b(Ljava/lang/String;)V

    goto :goto_33
.end method
