.class Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$19$1;
.super Ljava/lang/Object;
.source "MenuSearch.java"

# interfaces
.implements Lcom/sec/android/widgetapp/weatherclock/common/DialogInteraction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$19;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$19;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$19;)V
    .registers 2
    .parameter

    .prologue
    .line 1274
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$19$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$19;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public click(I)V
    .registers 3
    .parameter "buttonType"

    .prologue
    .line 1276
    const/16 v0, 0xa

    if-ne p1, v0, :cond_c

    .line 1277
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$19$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$19;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$19;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #calls: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->getLocationInfo()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$300(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)V

    .line 1284
    :cond_b
    :goto_b
    return-void

    .line 1279
    :cond_c
    const/16 v0, 0xb

    if-ne p1, v0, :cond_b

    .line 1281
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$19$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$19;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$19;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #calls: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->hideAllDialog()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$2100(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)V

    goto :goto_b
.end method
