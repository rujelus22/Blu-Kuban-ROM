.class Lcom/google/android/maps/driveabout/app/cv;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/NavigationService;


# direct methods
.method private constructor <init>(Lcom/google/android/maps/driveabout/app/NavigationService;)V
    .registers 2
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/cv;->a:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/driveabout/app/NavigationService;Lcom/google/android/maps/driveabout/app/co;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/cv;-><init>(Lcom/google/android/maps/driveabout/app/NavigationService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 148
    const-string v0, "noConnectivity"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 150
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cv;->a:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->a(Lcom/google/android/maps/driveabout/app/NavigationService;)Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/aN;->a(Z)V

    .line 154
    :goto_12
    return-void

    .line 152
    :cond_13
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cv;->a:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->a(Lcom/google/android/maps/driveabout/app/NavigationService;)Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->Z()V

    goto :goto_12
.end method
