.class Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13$2;
.super Ljava/lang/Object;
.source "MenuAdd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13;->onReceive(IILjava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13;)V
    .registers 2
    .parameter

    .prologue
    .line 750
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13$2;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 753
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13$2;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    iget-boolean v0, v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->performMapCancled:Z

    if-nez v0, :cond_20

    .line 755
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13$2;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->performMapCancled:Z

    .line 756
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13$2;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #calls: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->hideLoadingDialog()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$1000(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)V

    .line 757
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13$2;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    const v1, 0x7f09001d

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->toast(Landroid/content/Context;I)V

    .line 759
    :cond_20
    return-void
.end method
