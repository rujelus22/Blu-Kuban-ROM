.class Lcom/google/android/maps/driveabout/app/cp;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/NavigationService;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/NavigationService;)V
    .registers 2
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/cp;->a:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 180
    const-string v1, "plugged"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 181
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/cp;->a:Lcom/google/android/maps/driveabout/app/NavigationService;

    if-eqz v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    invoke-static {v2, v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->b(Lcom/google/android/maps/driveabout/app/NavigationService;Z)Z

    .line 182
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cp;->a:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->c(Lcom/google/android/maps/driveabout/app/NavigationService;)V

    .line 183
    return-void
.end method
