.class Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$5;
.super Ljava/lang/Object;
.source "MenuSearch.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)V
    .registers 2
    .parameter

    .prologue
    .line 319
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    .line 322
    invoke-virtual {p1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 323
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getCurrentLocationSettings()I

    move-result v0

    if-nez v0, :cond_35

    .line 325
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    const/16 v2, 0x3f5

    new-instance v3, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$5$1;

    invoke-direct {v3, p0, p1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$5$1;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$5;Landroid/view/View;)V

    invoke-static {v1, v2, v3}, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog;->showDialog(Landroid/content/Context;ILcom/sec/android/widgetapp/weatherclock/common/DialogInteraction;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mPopupDialog:Landroid/app/Dialog;

    .line 357
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mPopupDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 359
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mPopupDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$5$2;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$5$2;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$5;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 371
    :cond_34
    :goto_34
    return-void

    .line 367
    :cond_35
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getCurrentLocationSettings()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_34

    .line 369
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #calls: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->getLocationInfo()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$300(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)V

    goto :goto_34
.end method
