.class Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$2;
.super Ljava/util/TimerTask;
.source "MenuAdd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)V
    .registers 2
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$2;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$2;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->finish()V

    .line 236
    return-void
.end method
