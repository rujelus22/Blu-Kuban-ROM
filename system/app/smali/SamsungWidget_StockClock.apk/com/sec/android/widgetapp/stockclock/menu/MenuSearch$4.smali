.class Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$4;
.super Ljava/lang/Object;
.source "MenuSearch.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;)V
    .registers 2
    .parameter

    .prologue
    .line 352
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$4;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 355
    sget v0, Lcom/sec/android/widgetapp/stockclock/common/SLog;->log_on:I

    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->access$102(I)I

    .line 356
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$4;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mSlogText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->access$200(Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 357
    invoke-static {}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->access$100()I

    move-result v0

    packed-switch v0, :pswitch_data_40

    .line 372
    :cond_14
    :goto_14
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 373
    return-void

    .line 360
    :pswitch_18
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$4;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->LogGroup:Landroid/widget/RadioGroup;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->access$300(Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;)Landroid/widget/RadioGroup;

    move-result-object v0

    const v1, 0x7f0b0076

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_14

    .line 364
    :pswitch_25
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$4;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->LogGroup:Landroid/widget/RadioGroup;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->access$300(Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;)Landroid/widget/RadioGroup;

    move-result-object v0

    const v1, 0x7f0b0075

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_14

    .line 368
    :pswitch_32
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$4;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->LogGroup:Landroid/widget/RadioGroup;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->access$300(Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;)Landroid/widget/RadioGroup;

    move-result-object v0

    const v1, 0x7f0b0077

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_14

    .line 357
    nop

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_18
        :pswitch_25
        :pswitch_32
    .end packed-switch
.end method