.class public Lcom/google/android/maps/driveabout/app/n;
.super Ljava/lang/Object;


# static fields
.field private static final b:Landroid/content/IntentFilter;

.field private static final c:Landroid/content/IntentFilter;


# instance fields
.field private final a:Landroid/content/BroadcastReceiver;

.field private final d:Landroid/content/Context;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/maps/driveabout/app/n;->b:Landroid/content/IntentFilter;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.app.action.ENTER_CAR_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/maps/driveabout/app/n;->c:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/maps/driveabout/app/o;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/o;-><init>(Lcom/google/android/maps/driveabout/app/n;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/n;->a:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/n;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/n;->e:Z

    if-nez v0, :cond_16

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_17

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/n;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/n;->a:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/google/android/maps/driveabout/app/n;->c:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/n;->e:Z

    :cond_16
    return-void

    :cond_17
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/n;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/n;->a:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/google/android/maps/driveabout/app/n;->b:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_13
.end method

.method public b()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/n;->e:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/n;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/n;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/n;->e:Z

    :cond_e
    return-void
.end method
