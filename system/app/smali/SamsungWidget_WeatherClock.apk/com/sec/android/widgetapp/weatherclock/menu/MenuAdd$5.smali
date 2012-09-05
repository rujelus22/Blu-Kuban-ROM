.class Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5;
.super Ljava/lang/Object;
.source "MenuAdd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 302
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    .line 305
    invoke-virtual {p1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 306
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "G_BtnClck"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v0

    if-nez v0, :cond_34

    .line 309
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    invoke-direct {v1, v2}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$202(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;)Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    .line 311
    :cond_34
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getCurrentLocationSettings()I

    move-result v0

    if-nez v0, :cond_6d

    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->COLLAB_MODE:Z
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$300(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Z

    move-result v0

    if-nez v0, :cond_6d

    .line 313
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    const/16 v2, 0x3f5

    new-instance v3, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5$1;

    invoke-direct {v3, p0, p1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5$1;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5;Landroid/view/View;)V

    invoke-static {v1, v2, v3}, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog;->showDialog(Landroid/content/Context;ILcom/sec/android/widgetapp/weatherclock/common/DialogInteraction;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mPopupDialog:Landroid/app/Dialog;

    .line 362
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mPopupDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 364
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mPopupDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5$2;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5$2;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 376
    :cond_6c
    :goto_6c
    return-void

    .line 372
    :cond_6d
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getCurrentLocationSettings()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_82

    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->COLLAB_MODE:Z
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$300(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 374
    :cond_82
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #calls: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->getLocationInfo()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$400(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)V

    goto :goto_6c
.end method
