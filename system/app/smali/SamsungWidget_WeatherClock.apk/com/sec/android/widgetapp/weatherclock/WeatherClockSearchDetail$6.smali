.class Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$6;
.super Ljava/lang/Object;
.source "WeatherClockSearchDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->setEventListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;)V
    .registers 2
    .parameter

    .prologue
    .line 992
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$6;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 995
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$6;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->detail_focus:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->access$600(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 997
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$6;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    const-string v3, "config"

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 998
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 999
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "NETWORK_TRY"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1000
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1001
    sput-boolean v4, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->NETWORK_TRY:Z

    .line 1003
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$6;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    #calls: Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->dataUpdate()V
    invoke-static {v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->access$700(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;)V

    .line 1005
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$6;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    #setter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->setLanddirection:Z
    invoke-static {v2, v5}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->access$802(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;Z)Z

    .line 1006
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$6;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->detail_focus:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->access$600(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setFocusableInTouchMode(Z)V

    .line 1007
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$6;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->detail_focus:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->access$600(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    .line 1009
    return-void
.end method
