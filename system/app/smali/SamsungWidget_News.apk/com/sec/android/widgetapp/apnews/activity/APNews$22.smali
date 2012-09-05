.class Lcom/sec/android/widgetapp/apnews/activity/APNews$22;
.super Ljava/lang/Object;
.source "APNews.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/apnews/activity/APNews;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/apnews/activity/APNews;)V
    .registers 2
    .parameter

    .prologue
    .line 1575
    iput-object p1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$22;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1578
    sget v0, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->log_on:I

    invoke-static {v0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$1102(I)I

    .line 1579
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$22;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/APNews;->mSlogText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$1200(Lcom/sec/android/widgetapp/apnews/activity/APNews;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 1580
    invoke-static {}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$1100()I

    move-result v0

    packed-switch v0, :pswitch_data_48

    .line 1595
    :cond_14
    :goto_14
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$22;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    const-string v1, ""

    const/4 v2, 0x0

    #calls: Lcom/sec/android/widgetapp/apnews/activity/APNews;->setKeyBuffer(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$1400(Lcom/sec/android/widgetapp/apnews/activity/APNews;Ljava/lang/String;Z)V

    .line 1596
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1598
    return-void

    .line 1583
    :pswitch_20
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$22;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/APNews;->LogGroup:Landroid/widget/RadioGroup;
    invoke-static {v0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$1300(Lcom/sec/android/widgetapp/apnews/activity/APNews;)Landroid/widget/RadioGroup;

    move-result-object v0

    const v1, 0x7f0c0054

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_14

    .line 1587
    :pswitch_2d
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$22;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/APNews;->LogGroup:Landroid/widget/RadioGroup;
    invoke-static {v0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$1300(Lcom/sec/android/widgetapp/apnews/activity/APNews;)Landroid/widget/RadioGroup;

    move-result-object v0

    const v1, 0x7f0c0055

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_14

    .line 1591
    :pswitch_3a
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$22;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/APNews;->LogGroup:Landroid/widget/RadioGroup;
    invoke-static {v0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$1300(Lcom/sec/android/widgetapp/apnews/activity/APNews;)Landroid/widget/RadioGroup;

    move-result-object v0

    const v1, 0x7f0c0056

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_14

    .line 1580
    nop

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_20
        :pswitch_2d
        :pswitch_3a
    .end packed-switch
.end method
