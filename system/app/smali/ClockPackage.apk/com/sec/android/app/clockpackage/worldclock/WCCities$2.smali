.class Lcom/sec/android/app/clockpackage/worldclock/WCCities$2;
.super Landroid/content/BroadcastReceiver;
.source "WCCities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/worldclock/WCCities;
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
    .line 593
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$2;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 597
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$2;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    invoke-static {v0}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->initCity(Landroid/content/Context;)V

    .line 599
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$2;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    #calls: Lcom/sec/android/app/clockpackage/worldclock/WCCities;->updateCityChoice()V
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->access$300(Lcom/sec/android/app/clockpackage/worldclock/WCCities;)V

    .line 601
    return-void
.end method
