.class Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$7;
.super Ljava/lang/Object;
.source "MenuChangeOrderIndices.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->doneRun()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;)V
    .registers 2
    .parameter

    .prologue
    .line 315
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$7;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 317
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$7;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices$7;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09003e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/common/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 318
    return-void
.end method
