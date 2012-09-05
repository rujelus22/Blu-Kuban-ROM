.class Lcom/sec/android/widgetapp/weatherclock/MapsActivity$8;
.super Ljava/lang/Object;
.source "MapsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->registerListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 617
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$8;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 621
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "G_Btn Clck"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$8;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$1100(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v0

    if-nez v0, :cond_30

    .line 624
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$8;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$8;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    invoke-direct {v1, v2}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$1102(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;)Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    .line 627
    :cond_30
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$8;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$1100(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getCurrentLocationSettings()I

    move-result v0

    if-nez v0, :cond_62

    .line 629
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$8;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$8;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    const/16 v2, 0x3f5

    new-instance v3, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$8$1;

    invoke-direct {v3, p0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$8$1;-><init>(Lcom/sec/android/widgetapp/weatherclock/MapsActivity$8;)V

    invoke-static {v1, v2, v3}, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog;->showDialog(Landroid/content/Context;ILcom/sec/android/widgetapp/weatherclock/common/DialogInteraction;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->dialog:Landroid/app/Dialog;

    .line 661
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$8;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 663
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$8;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->dialog:Landroid/app/Dialog;

    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$8$2;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$8$2;-><init>(Lcom/sec/android/widgetapp/weatherclock/MapsActivity$8;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 674
    :cond_61
    :goto_61
    return-void

    .line 670
    :cond_62
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$8;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$1100(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getCurrentLocationSettings()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_61

    .line 672
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$8;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #calls: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->performLocation()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$1200(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)V

    goto :goto_61
.end method
