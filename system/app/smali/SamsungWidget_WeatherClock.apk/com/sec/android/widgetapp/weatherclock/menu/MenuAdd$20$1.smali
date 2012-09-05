.class Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$20$1;
.super Ljava/lang/Object;
.source "MenuAdd.java"

# interfaces
.implements Lcom/sec/android/widgetapp/weatherclock/common/DialogInteraction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$20;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$20;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$20;)V
    .registers 2
    .parameter

    .prologue
    .line 1442
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$20$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$20;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public click(I)V
    .registers 3
    .parameter "buttonType"

    .prologue
    .line 1444
    const/16 v0, 0xa

    if-ne p1, v0, :cond_c

    .line 1445
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$20$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$20;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #calls: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->getLocationInfo()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$400(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)V

    .line 1452
    :cond_b
    :goto_b
    return-void

    .line 1447
    :cond_c
    const/16 v0, 0xb

    if-ne p1, v0, :cond_b

    .line 1449
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$20$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$20;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$20;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #calls: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->hideAllDialog()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$2100(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)V

    goto :goto_b
.end method
