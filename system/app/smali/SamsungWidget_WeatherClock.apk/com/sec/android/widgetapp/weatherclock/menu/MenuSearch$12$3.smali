.class Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12$3;
.super Ljava/lang/Object;
.source "MenuSearch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12;->onReceive(IILjava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12;)V
    .registers 2
    .parameter

    .prologue
    .line 653
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12$3;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 656
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12$3;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    iget-boolean v0, v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->performMapCancled:Z

    if-nez v0, :cond_20

    .line 658
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12$3;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->performMapCancled:Z

    .line 659
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12$3;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #calls: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->hideLoadingDialog()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$1000(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)V

    .line 660
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12$3;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    const v1, 0x7f09001d

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->toast(Landroid/content/Context;I)V

    .line 662
    :cond_20
    return-void
.end method
