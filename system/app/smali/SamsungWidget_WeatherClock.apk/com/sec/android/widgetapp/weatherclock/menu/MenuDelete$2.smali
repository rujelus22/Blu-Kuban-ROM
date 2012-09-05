.class Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$2;
.super Ljava/lang/Object;
.source "MenuDelete.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;)V
    .registers 2
    .parameter

    .prologue
    .line 329
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$2;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 332
    sget v0, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->log_on:I

    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->access$302(I)I

    .line 333
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$2;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mSlogText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->access$400(Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 334
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->access$300()I

    move-result v0

    packed-switch v0, :pswitch_data_40

    .line 349
    :cond_14
    :goto_14
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 350
    return-void

    .line 337
    :pswitch_18
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$2;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->LogGroup:Landroid/widget/RadioGroup;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->access$500(Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;)Landroid/widget/RadioGroup;

    move-result-object v0

    const v1, 0x7f0c0014

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_14

    .line 341
    :pswitch_25
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$2;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->LogGroup:Landroid/widget/RadioGroup;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->access$500(Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;)Landroid/widget/RadioGroup;

    move-result-object v0

    const v1, 0x7f0c0015

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_14

    .line 345
    :pswitch_32
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$2;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->LogGroup:Landroid/widget/RadioGroup;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->access$500(Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;)Landroid/widget/RadioGroup;

    move-result-object v0

    const v1, 0x7f0c0016

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_14

    .line 334
    nop

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_18
        :pswitch_25
        :pswitch_32
    .end packed-switch
.end method
