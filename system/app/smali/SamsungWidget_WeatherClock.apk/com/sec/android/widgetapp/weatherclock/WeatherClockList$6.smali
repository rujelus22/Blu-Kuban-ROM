.class Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$6;
.super Ljava/lang/Object;
.source "WeatherClockList.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


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


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;)V
    .registers 2
    .parameter

    .prologue
    .line 476
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$6;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .registers 5
    .parameter "group"
    .parameter "checkedId"

    .prologue
    .line 479
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getId()I

    move-result v0

    const v1, 0x7f0c0013

    if-ne v0, v1, :cond_c

    .line 481
    packed-switch p2, :pswitch_data_1c

    .line 496
    :cond_c
    :goto_c
    return-void

    .line 484
    :pswitch_d
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->access$402(I)I

    goto :goto_c

    .line 488
    :pswitch_12
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->access$402(I)I

    goto :goto_c

    .line 492
    :pswitch_17
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->access$402(I)I

    goto :goto_c

    .line 481
    :pswitch_data_1c
    .packed-switch 0x7f0c0014
        :pswitch_d
        :pswitch_12
        :pswitch_17
    .end packed-switch
.end method
