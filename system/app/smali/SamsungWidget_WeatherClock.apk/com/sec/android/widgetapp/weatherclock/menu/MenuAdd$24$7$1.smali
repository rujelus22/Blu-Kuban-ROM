.class Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24$7$1;
.super Landroid/os/Handler;
.source "MenuAdd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24$7;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24$7;)V
    .registers 2
    .parameter

    .prologue
    .line 1952
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24$7$1;->this$2:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24$7;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 1955
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24$7$1;->this$2:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24$7;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24$7;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->finish()V

    .line 1956
    return-void
.end method
