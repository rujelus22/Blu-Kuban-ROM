.class Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$4;
.super Ljava/lang/Object;
.source "WeatherClockList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 448
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$4;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 451
    sget v0, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->log_on:I

    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->access$402(I)I

    .line 452
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$4;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->mSlogText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->access$500(Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 453
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->access$400()I

    move-result v0

    packed-switch v0, :pswitch_data_40

    .line 468
    :cond_14
    :goto_14
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 469
    return-void

    .line 456
    :pswitch_18
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$4;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->LogGroup:Landroid/widget/RadioGroup;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->access$600(Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;)Landroid/widget/RadioGroup;

    move-result-object v0

    const v1, 0x7f0c0014

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_14

    .line 460
    :pswitch_25
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$4;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->LogGroup:Landroid/widget/RadioGroup;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->access$600(Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;)Landroid/widget/RadioGroup;

    move-result-object v0

    const v1, 0x7f0c0015

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_14

    .line 464
    :pswitch_32
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$4;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->LogGroup:Landroid/widget/RadioGroup;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->access$600(Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;)Landroid/widget/RadioGroup;

    move-result-object v0

    const v1, 0x7f0c0016

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_14

    .line 453
    nop

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_18
        :pswitch_25
        :pswitch_32
    .end packed-switch
.end method
