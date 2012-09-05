.class Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$4;
.super Ljava/lang/Object;
.source "MenuChangeOrders.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;)V
    .registers 2
    .parameter

    .prologue
    .line 355
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$4;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 358
    sget v0, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->log_on:I

    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->access$002(I)I

    .line 359
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$4;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->mSlogText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->access$100(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 360
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->access$000()I

    move-result v0

    packed-switch v0, :pswitch_data_40

    .line 375
    :cond_14
    :goto_14
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 376
    return-void

    .line 363
    :pswitch_18
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$4;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->LogGroup:Landroid/widget/RadioGroup;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->access$200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;)Landroid/widget/RadioGroup;

    move-result-object v0

    const v1, 0x7f0c0014

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_14

    .line 367
    :pswitch_25
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$4;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->LogGroup:Landroid/widget/RadioGroup;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->access$200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;)Landroid/widget/RadioGroup;

    move-result-object v0

    const v1, 0x7f0c0015

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_14

    .line 371
    :pswitch_32
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders$4;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->LogGroup:Landroid/widget/RadioGroup;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;->access$200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;)Landroid/widget/RadioGroup;

    move-result-object v0

    const v1, 0x7f0c0016

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_14

    .line 360
    nop

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_18
        :pswitch_25
        :pswitch_32
    .end packed-switch
.end method
