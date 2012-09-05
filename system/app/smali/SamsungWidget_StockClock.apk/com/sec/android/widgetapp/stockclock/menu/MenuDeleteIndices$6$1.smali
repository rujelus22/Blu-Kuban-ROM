.class Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices$6$1;
.super Ljava/lang/Object;
.source "MenuDeleteIndices.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices$6;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices$6;)V
    .registers 2
    .parameter

    .prologue
    .line 565
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices$6$1;->this$1:Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices$6;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 567
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices$6$1;->this$1:Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices$6;

    iget-object v0, v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices$6;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mIntent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->access$900(Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 569
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices$6$1;->this$1:Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices$6;

    iget-object v0, v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices$6;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices$6$1;->this$1:Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices$6;

    iget-object v2, v2, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices$6;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->access$900(Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->setResult(ILandroid/content/Intent;)V

    .line 572
    :cond_1a
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices$6$1;->this$1:Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices$6;

    iget-object v0, v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices$6;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices$6$1;->this$1:Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices$6;

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices$6;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09003f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/common/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 573
    return-void
.end method
