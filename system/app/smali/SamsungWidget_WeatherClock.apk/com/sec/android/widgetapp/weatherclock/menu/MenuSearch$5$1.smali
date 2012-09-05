.class Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$5$1;
.super Ljava/lang/Object;
.source "MenuSearch.java"

# interfaces
.implements Lcom/sec/android/widgetapp/weatherclock/common/DialogInteraction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$5;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$5;Landroid/view/View;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 326
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$5$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$5;

    iput-object p2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$5$1;->val$v:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public click(I)V
    .registers 8
    .parameter "buttonType"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 329
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$5$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$5;

    iget-object v2, v2, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;
    invoke-static {v2}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getCurrentLocationSettings()I

    move-result v0

    .line 330
    .local v0, location:I
    const/16 v2, 0xa

    if-ne p1, v2, :cond_38

    .line 332
    if-nez v0, :cond_30

    .line 334
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$5$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$5;

    iget-object v2, v2, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;
    invoke-static {v2}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->updateCurrentLocationSettings(I)I

    move-result v1

    .line 335
    .local v1, result:I
    if-ne v1, v5, :cond_30

    .line 336
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$5$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$5;

    iget-object v2, v2, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    invoke-virtual {v2, v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->setResult(I)V

    .line 337
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$5$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$5;

    iget-object v2, v2, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->finish()V

    .line 340
    .end local v1           #result:I
    :cond_30
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$5$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$5;

    iget-object v2, v2, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #calls: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->getLocationInfo()V
    invoke-static {v2}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$300(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)V

    .line 354
    :goto_37
    return-void

    .line 344
    :cond_38
    if-ne v0, v4, :cond_57

    .line 346
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$5$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$5;

    iget-object v2, v2, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;
    invoke-static {v2}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->updateCurrentLocationSettings(I)I

    move-result v1

    .line 347
    .restart local v1       #result:I
    if-ne v1, v5, :cond_57

    .line 348
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$5$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$5;

    iget-object v2, v2, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    invoke-virtual {v2, v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->setResult(I)V

    .line 349
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$5$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$5;

    iget-object v2, v2, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->finish()V

    .line 352
    .end local v1           #result:I
    :cond_57
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$5$1;->val$v:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_37
.end method
