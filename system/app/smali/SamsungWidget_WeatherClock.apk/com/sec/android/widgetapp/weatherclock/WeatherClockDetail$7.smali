.class Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$7;
.super Ljava/lang/Object;
.source "WeatherClockDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->setEventListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)V
    .registers 2
    .parameter

    .prologue
    .line 1101
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$7;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

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

    .line 1104
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$7;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->detail_focus:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$900(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 1105
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$7;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    const-string v3, "config"

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1106
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1107
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "NETWORK_TRY"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1108
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1109
    sput-boolean v4, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->NETWORK_TRY:Z

    .line 1111
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$7;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    #calls: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->dataUpdate()V
    invoke-static {v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$1000(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)V

    .line 1113
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$7;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    #setter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->setLanddirection:Z
    invoke-static {v2, v5}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$1102(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;Z)Z

    .line 1114
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$7;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->detail_focus:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$900(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setFocusableInTouchMode(Z)V

    .line 1116
    return-void
.end method
