.class Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24$9;
.super Ljava/lang/Object;
.source "MenuAdd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->onReceive(IILjava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;)V
    .registers 2
    .parameter

    .prologue
    .line 2002
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24$9;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 2005
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24$9;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #calls: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->hideLoadingDialog()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$1000(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)V

    .line 2006
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24$9;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->isActivityVisible()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2008
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24$9;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    const v1, 0x7f09001d

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->toast(Landroid/content/Context;I)V

    .line 2010
    :cond_1b
    return-void
.end method
