.class Lcom/google/android/maps/driveabout/app/co;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/NavigationService;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/NavigationService;)V
    .registers 2
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/co;->a:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 163
    const-string v0, "android.intent.extra.DOCK_STATE"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 164
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/co;->a:Lcom/google/android/maps/driveabout/app/NavigationService;

    const/4 v2, 0x2

    if-ne v0, v2, :cond_23

    const/4 v0, 0x1

    :goto_d
    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->a(Lcom/google/android/maps/driveabout/app/NavigationService;Z)Z

    .line 167
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/co;->a:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->b(Lcom/google/android/maps/driveabout/app/NavigationService;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 168
    const-string v0, "C"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/dh;->a(Ljava/lang/String;)V

    .line 171
    :cond_1d
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/co;->a:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->c(Lcom/google/android/maps/driveabout/app/NavigationService;)V

    .line 172
    return-void

    .line 164
    :cond_23
    const/4 v0, 0x0

    goto :goto_d
.end method
