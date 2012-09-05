.class Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5$1;
.super Ljava/lang/Object;
.source "MenuAdd.java"

# interfaces
.implements Lcom/sec/android/widgetapp/weatherclock/common/DialogInteraction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5;Landroid/view/View;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 314
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5;

    iput-object p2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5$1;->val$v:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public click(I)V
    .registers 11
    .parameter "buttonType"

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x1

    .line 317
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5;

    iget-object v4, v4, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->isActivityVisible()Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 319
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5;

    iget-object v4, v4, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;
    invoke-static {v4}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v4

    if-nez v4, :cond_26

    .line 320
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5;

    iget-object v4, v4, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    new-instance v5, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    iget-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5;

    iget-object v6, v6, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    invoke-direct {v5, v6}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;
    invoke-static {v4, v5}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$202(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;)Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    .line 322
    :cond_26
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5;

    iget-object v4, v4, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;
    invoke-static {v4}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getCurrentLocationSettings()I

    move-result v0

    .line 323
    .local v0, location:I
    const/16 v4, 0xa

    if-ne p1, v4, :cond_5c

    .line 325
    if-nez v0, :cond_54

    .line 327
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5;

    iget-object v4, v4, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;
    invoke-static {v4}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->updateCurrentLocationSettings(I)I

    move-result v2

    .line 328
    .local v2, result:I
    if-ne v2, v8, :cond_54

    .line 329
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5;

    iget-object v4, v4, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    invoke-virtual {v4, v2}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->setResult(I)V

    .line 330
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5;

    iget-object v4, v4, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->finish()V

    .line 333
    .end local v2           #result:I
    :cond_54
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5;

    iget-object v4, v4, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #calls: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->getLocationInfo()V
    invoke-static {v4}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$400(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)V

    .line 359
    .end local v0           #location:I
    :cond_5b
    :goto_5b
    return-void

    .line 337
    .restart local v0       #location:I
    :cond_5c
    if-ne v0, v7, :cond_7b

    .line 339
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5;

    iget-object v4, v4, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;
    invoke-static {v4}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->updateCurrentLocationSettings(I)I

    move-result v2

    .line 340
    .restart local v2       #result:I
    if-ne v2, v8, :cond_7b

    .line 341
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5;

    iget-object v4, v4, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    invoke-virtual {v4, v2}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->setResult(I)V

    .line 342
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5;

    iget-object v4, v4, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->finish()V

    .line 346
    .end local v2           #result:I
    :cond_7b
    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5$1$1;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5$1$1;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5$1;)V

    .line 353
    .local v1, myTask:Ljava/util/TimerTask;
    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    .line 354
    .local v3, timer:Ljava/util/Timer;
    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v1, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 356
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5$1;->val$v:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_5b
.end method
