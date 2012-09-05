.class Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$2;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;)V
    .registers 2
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$2;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 79
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 80
    packed-switch p2, :pswitch_data_12

    .line 87
    :cond_a
    :goto_a
    const/4 v0, 0x0

    return v0

    .line 82
    :pswitch_c
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$2;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;

    #calls: Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->setCheckBox()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->access$000(Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;)V

    goto :goto_a

    .line 80
    :pswitch_data_12
    .packed-switch 0x16
        :pswitch_c
    .end packed-switch
.end method
