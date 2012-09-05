.class Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$1;
.super Landroid/content/BroadcastReceiver;
.source "MenuAdd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)V
    .registers 2
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$1;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 123
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_76

    .line 125
    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LocPrvdr action:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$1;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    const-string v5, "location"

    invoke-virtual {v4, v5}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/LocationManager;

    .line 127
    .local v3, locationManager:Landroid/location/LocationManager;
    const-string v4, "gps"

    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    .line 129
    .local v1, isGpsEnabled:Z
    const-string v4, "network"

    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    .line 130
    .local v2, isNetworkEnabled:Z
    if-nez v1, :cond_42

    if-eqz v2, :cond_54

    .line 132
    :cond_42
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$1;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->gps_btn:Landroid/widget/Button;
    invoke-static {v4}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$000(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Landroid/widget/Button;

    move-result-object v4

    if-eqz v4, :cond_77

    .line 133
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$1;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->gps_btn:Landroid/widget/Button;
    invoke-static {v4}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$000(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Landroid/widget/Button;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 138
    :cond_54
    :goto_54
    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LocPrvdr G_Stts:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "LocPrvdr N_Stts:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .end local v1           #isGpsEnabled:Z
    .end local v2           #isNetworkEnabled:Z
    .end local v3           #locationManager:Landroid/location/LocationManager;
    :cond_76
    return-void

    .line 135
    .restart local v1       #isGpsEnabled:Z
    .restart local v2       #isNetworkEnabled:Z
    .restart local v3       #locationManager:Landroid/location/LocationManager;
    :cond_77
    const-string v4, ""

    const-string v5, "G_btn is null"

    invoke-static {v4, v5}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54
.end method
