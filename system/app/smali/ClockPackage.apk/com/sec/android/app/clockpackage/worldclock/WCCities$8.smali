.class Lcom/sec/android/app/clockpackage/worldclock/WCCities$8;
.super Ljava/lang/Object;
.source "WCCities.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/worldclock/WCCities;->showGPSDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/worldclock/WCCities;)V
    .registers 2
    .parameter

    .prologue
    .line 1479
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$8;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1483
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1485
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$8;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    const/4 v4, 0x0

    #setter for: Lcom/sec/android/app/clockpackage/worldclock/WCCities;->gpsDialShow:Z
    invoke-static {v3, v4}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->access$1002(Lcom/sec/android/app/clockpackage/worldclock/WCCities;Z)Z

    .line 1487
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$8;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1489
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1491
    .local v2, resolver:Landroid/content/ContentResolver;
    const-string v3, "gps"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    .line 1499
    .local v1, enabled:Z
    if-nez v1, :cond_27

    .line 1501
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$8;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->startActivity(Landroid/content/Intent;)V

    .line 1503
    :cond_27
    return-void
.end method
