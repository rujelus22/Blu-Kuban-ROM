.class Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$7;
.super Landroid/os/Handler;
.source "WeatherClockList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;

.field wcl:Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;)V
    .registers 3
    .parameter

    .prologue
    .line 704
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$7;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 705
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$7;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$7;->wcl:Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    .line 709
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v4, :cond_4a

    .line 711
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$7;->wcl:Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->mCityCount:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->access$900(Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/10  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 713
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$7;->wcl:Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;

    iget-object v1, v1, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->add_btn:Landroid/view/View;

    const v2, 0x7f0c0004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 714
    .local v0, add_btn2:Landroid/widget/ImageView;
    iget v1, p1, Landroid/os/Message;->arg1:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_4e

    .line 716
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$7;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;

    iget-object v1, v1, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->add_btn:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 717
    const v1, 0x7f020029

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 725
    .end local v0           #add_btn2:Landroid/widget/ImageView;
    :cond_4a
    :goto_4a
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 726
    return-void

    .line 721
    .restart local v0       #add_btn2:Landroid/widget/ImageView;
    :cond_4e
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$7;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;

    iget-object v1, v1, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->add_btn:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 722
    const v1, 0x7f020028

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4a
.end method
