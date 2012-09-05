.class Lcom/sec/android/widgetapp/weatherclock/MapsActivity$20;
.super Ljava/lang/Object;
.source "MapsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->showCities(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

.field final synthetic val$citylist:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;Ljava/util/ArrayList;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 924
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iput-object p2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$20;->val$citylist:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 5
    .parameter "dialog"

    .prologue
    const/4 v2, 0x0

    .line 927
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget-boolean v1, v1, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->positive:Z

    if-eqz v1, :cond_1e

    .line 929
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #calls: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->setKeyboardVisible(Z)V
    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$1300(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;Z)V

    .line 930
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$20;->val$citylist:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget v2, v2, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->dialog_selected:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    .line 931
    .local v0, i:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    invoke-virtual {v1, v0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->perform_Acity(Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;)V

    .line 940
    .end local v0           #i:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;
    :goto_1d
    return-void

    .line 935
    :cond_1e
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #setter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->retry:Z
    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$902(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;Z)Z

    .line 937
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #calls: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->setKeyboardVisible(Z)V
    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$1300(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;Z)V

    .line 938
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #calls: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->hideLoadingDialog()V
    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$800(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)V

    goto :goto_1d
.end method
