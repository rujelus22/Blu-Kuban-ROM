.class Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$3$2;
.super Landroid/os/Handler;
.source "MenuIndicesAdd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$3;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$3;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$3;)V
    .registers 2
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$3$2;->this$1:Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$3;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 197
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$3$2;->this$1:Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$3;

    iget-object v0, v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$3;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;

    iget-object v0, v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->mIntent:Landroid/content/Intent;

    const-string v1, "tab"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 198
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$3$2;->this$1:Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$3;

    iget-object v0, v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$3;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$3$2;->this$1:Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$3;

    iget-object v2, v2, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$3;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;

    iget-object v2, v2, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->setResult(ILandroid/content/Intent;)V

    .line 199
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$3$2;->this$1:Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$3;

    iget-object v0, v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$3;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "after_add_goto_list"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 201
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$3$2;->this$1:Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$3;

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$3;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;

    const-class v2, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 202
    const-string v1, "for_index"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 203
    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 204
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$3$2;->this$1:Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$3;

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$3;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;

    invoke-virtual {v1, v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->startActivity(Landroid/content/Intent;)V

    .line 205
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$3$2;->this$1:Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$3;

    iget-object v0, v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$3;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->finish()V

    .line 210
    :goto_4e
    return-void

    .line 209
    :cond_4f
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$3$2;->this$1:Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$3;

    iget-object v0, v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$3;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->finish()V

    goto :goto_4e
.end method
