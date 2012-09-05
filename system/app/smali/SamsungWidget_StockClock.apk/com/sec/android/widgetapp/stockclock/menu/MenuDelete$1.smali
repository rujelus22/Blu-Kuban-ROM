.class Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete$1;
.super Ljava/lang/Object;
.source "MenuDelete.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete;)V
    .registers 2
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete$1;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 268
    sget v0, Lcom/sec/android/widgetapp/stockclock/common/SLog;->log_on:I

    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete;->access$002(I)I

    .line 269
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete$1;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete;->mSlogText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete;->access$100(Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 270
    invoke-static {}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete;->access$000()I

    move-result v0

    packed-switch v0, :pswitch_data_40

    .line 285
    :cond_14
    :goto_14
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 286
    return-void

    .line 273
    :pswitch_18
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete$1;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete;->LogGroup:Landroid/widget/RadioGroup;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete;->access$200(Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete;)Landroid/widget/RadioGroup;

    move-result-object v0

    const v1, 0x7f0b0076

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_14

    .line 277
    :pswitch_25
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete$1;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete;->LogGroup:Landroid/widget/RadioGroup;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete;->access$200(Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete;)Landroid/widget/RadioGroup;

    move-result-object v0

    const v1, 0x7f0b0075

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_14

    .line 281
    :pswitch_32
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete$1;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete;->LogGroup:Landroid/widget/RadioGroup;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete;->access$200(Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete;)Landroid/widget/RadioGroup;

    move-result-object v0

    const v1, 0x7f0b0077

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_14

    .line 270
    nop

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_18
        :pswitch_25
        :pswitch_32
    .end packed-switch
.end method
