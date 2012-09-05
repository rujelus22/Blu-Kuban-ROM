.class Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5$1$1;
.super Ljava/util/TimerTask;
.source "MenuAdd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5$1;->click(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5$1;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5$1;)V
    .registers 2
    .parameter

    .prologue
    .line 347
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5$1$1;->this$2:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5$1;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 350
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5$1$1;->this$2:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5$1;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    const/4 v1, 0x1

    #calls: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->setKeyboardVisible(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$100(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;Z)V

    .line 351
    return-void
.end method
