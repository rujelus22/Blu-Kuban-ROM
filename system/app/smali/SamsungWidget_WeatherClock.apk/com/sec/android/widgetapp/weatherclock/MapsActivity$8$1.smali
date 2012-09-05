.class Lcom/sec/android/widgetapp/weatherclock/MapsActivity$8$1;
.super Ljava/lang/Object;
.source "MapsActivity.java"

# interfaces
.implements Lcom/sec/android/widgetapp/weatherclock/common/DialogInteraction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/MapsActivity$8;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/widgetapp/weatherclock/MapsActivity$8;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/MapsActivity$8;)V
    .registers 2
    .parameter

    .prologue
    .line 630
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$8$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/MapsActivity$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public click(I)V
    .registers 7
    .parameter "buttonType"

    .prologue
    const/4 v3, 0x1

    const/4 v4, -0x1

    .line 633
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$8$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/MapsActivity$8;

    iget-object v2, v2, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$8;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;
    invoke-static {v2}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$1100(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getCurrentLocationSettings()I

    move-result v0

    .line 634
    .local v0, location:I
    const/16 v2, 0xa

    if-ne p1, v2, :cond_38

    .line 636
    if-nez v0, :cond_30

    .line 638
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$8$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/MapsActivity$8;

    iget-object v2, v2, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$8;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;
    invoke-static {v2}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$1100(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->updateCurrentLocationSettings(I)I

    move-result v1

    .line 639
    .local v1, result:I
    if-ne v1, v4, :cond_30

    .line 640
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$8$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/MapsActivity$8;

    iget-object v2, v2, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$8;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    invoke-virtual {v2, v1}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->setResult(I)V

    .line 641
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$8$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/MapsActivity$8;

    iget-object v2, v2, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$8;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->finish()V

    .line 644
    .end local v1           #result:I
    :cond_30
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$8$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/MapsActivity$8;

    iget-object v2, v2, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$8;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #calls: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->performLocation()V
    invoke-static {v2}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$1200(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)V

    .line 657
    :cond_37
    :goto_37
    return-void

    .line 648
    :cond_38
    if-ne v0, v3, :cond_37

    .line 650
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$8$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/MapsActivity$8;

    iget-object v2, v2, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$8;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;
    invoke-static {v2}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$1100(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->updateCurrentLocationSettings(I)I

    move-result v1

    .line 651
    .restart local v1       #result:I
    if-ne v1, v4, :cond_37

    .line 652
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$8$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/MapsActivity$8;

    iget-object v2, v2, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$8;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    invoke-virtual {v2, v1}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->setResult(I)V

    .line 653
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$8$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/MapsActivity$8;

    iget-object v2, v2, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$8;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->finish()V

    goto :goto_37
.end method
