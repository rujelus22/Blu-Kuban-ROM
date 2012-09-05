.class Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24$1;
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
    .line 1831
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1834
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->finish()V

    .line 1835
    return-void
.end method
