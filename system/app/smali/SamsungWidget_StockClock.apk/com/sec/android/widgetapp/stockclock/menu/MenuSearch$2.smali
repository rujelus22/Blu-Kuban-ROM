.class Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$2;
.super Ljava/util/TimerTask;
.source "MenuSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->onCreate(Landroid/os/Bundle;)V
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
    .line 153
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$2;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 156
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$2;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;

    const/4 v1, 0x1

    #calls: Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->setKeyboardVisible(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->access$000(Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;Z)V

    .line 157
    return-void
.end method
