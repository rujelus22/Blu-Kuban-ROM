.class Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$11;
.super Ljava/lang/Object;
.source "WeatherClockSearchDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->setWebLink()V
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
    .line 1836
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$11;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "v"

    .prologue
    .line 1840
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$11;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$11;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    const-string v4, "DETAIL_MORE"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->setViewUri(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    .line 1841
    .local v1, uri:Landroid/net/Uri;
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uri"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1843
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$11;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    invoke-virtual {v2, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->startActivity(Landroid/content/Intent;)V

    .line 1844
    return-void
.end method
