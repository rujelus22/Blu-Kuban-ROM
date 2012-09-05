.class Lcom/sprint/dsa/PageAlerts$AlertOnClickListener;
.super Ljava/lang/Object;
.source "PageAlerts.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/dsa/PageAlerts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlertOnClickListener"
.end annotation


# instance fields
.field private m_alert:Lcom/sprint/dsa/data/Alert;

.field final synthetic this$0:Lcom/sprint/dsa/PageAlerts;


# direct methods
.method public constructor <init>(Lcom/sprint/dsa/PageAlerts;Lcom/sprint/dsa/data/Alert;)V
    .registers 4
    .parameter
    .parameter "alert"

    .prologue
    .line 287
    iput-object p1, p0, Lcom/sprint/dsa/PageAlerts$AlertOnClickListener;->this$0:Lcom/sprint/dsa/PageAlerts;

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprint/dsa/PageAlerts$AlertOnClickListener;->m_alert:Lcom/sprint/dsa/data/Alert;

    .line 286
    iput-object p2, p0, Lcom/sprint/dsa/PageAlerts$AlertOnClickListener;->m_alert:Lcom/sprint/dsa/data/Alert;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 290
    iget-object v1, p0, Lcom/sprint/dsa/PageAlerts$AlertOnClickListener;->m_alert:Lcom/sprint/dsa/data/Alert;

    if-nez v1, :cond_33

    .line 293
    iget-object v1, p0, Lcom/sprint/dsa/PageAlerts$AlertOnClickListener;->this$0:Lcom/sprint/dsa/PageAlerts;

    #getter for: Lcom/sprint/dsa/PageAlerts;->mAlerts:Lcom/sprint/dsa/data/Alerts;
    invoke-static {v1}, Lcom/sprint/dsa/PageAlerts;->access$0(Lcom/sprint/dsa/PageAlerts;)Lcom/sprint/dsa/data/Alerts;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/dsa/PageAlerts$AlertOnClickListener;->this$0:Lcom/sprint/dsa/PageAlerts;

    #getter for: Lcom/sprint/dsa/PageAlerts;->mDbHelper:Lcom/sprint/dsa/data/DbAdapter;
    invoke-static {v2}, Lcom/sprint/dsa/PageAlerts;->access$2(Lcom/sprint/dsa/PageAlerts;)Lcom/sprint/dsa/data/DbAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sprint/dsa/data/Alerts;->deleteTable(Lcom/sprint/dsa/data/DbAdapter;)V

    .line 295
    iget-object v1, p0, Lcom/sprint/dsa/PageAlerts$AlertOnClickListener;->this$0:Lcom/sprint/dsa/PageAlerts;

    #getter for: Lcom/sprint/dsa/PageAlerts;->mAlerts:Lcom/sprint/dsa/data/Alerts;
    invoke-static {v1}, Lcom/sprint/dsa/PageAlerts;->access$0(Lcom/sprint/dsa/PageAlerts;)Lcom/sprint/dsa/data/Alerts;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sprint/dsa/data/Alerts;->clear()V

    .line 301
    :goto_1c
    iget-object v1, p0, Lcom/sprint/dsa/PageAlerts$AlertOnClickListener;->this$0:Lcom/sprint/dsa/PageAlerts;

    #getter for: Lcom/sprint/dsa/PageAlerts;->mListAdapter:Lcom/sprint/dsa/PageAlerts$AlertListAdapter;
    invoke-static {v1}, Lcom/sprint/dsa/PageAlerts;->access$3(Lcom/sprint/dsa/PageAlerts;)Lcom/sprint/dsa/PageAlerts$AlertListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sprint/dsa/PageAlerts$AlertListAdapter;->notifyDataSetChanged()V

    .line 302
    iget-object v1, p0, Lcom/sprint/dsa/PageAlerts$AlertOnClickListener;->this$0:Lcom/sprint/dsa/PageAlerts;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Lcom/sprint/dsa/PageAlerts;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 303
    .local v0, nm:Landroid/app/NotificationManager;
    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 306
    return-void

    .line 298
    .end local v0           #nm:Landroid/app/NotificationManager;
    :cond_33
    iget-object v1, p0, Lcom/sprint/dsa/PageAlerts$AlertOnClickListener;->this$0:Lcom/sprint/dsa/PageAlerts;

    #getter for: Lcom/sprint/dsa/PageAlerts;->mDbHelper:Lcom/sprint/dsa/data/DbAdapter;
    invoke-static {v1}, Lcom/sprint/dsa/PageAlerts;->access$2(Lcom/sprint/dsa/PageAlerts;)Lcom/sprint/dsa/data/DbAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/dsa/PageAlerts$AlertOnClickListener;->m_alert:Lcom/sprint/dsa/data/Alert;

    invoke-static {v1, v2}, Lcom/sprint/dsa/data/Alerts;->deleteAlert(Lcom/sprint/dsa/data/DbAdapter;Lcom/sprint/dsa/data/Alert;)V

    .line 299
    iget-object v1, p0, Lcom/sprint/dsa/PageAlerts$AlertOnClickListener;->this$0:Lcom/sprint/dsa/PageAlerts;

    #getter for: Lcom/sprint/dsa/PageAlerts;->mAlerts:Lcom/sprint/dsa/data/Alerts;
    invoke-static {v1}, Lcom/sprint/dsa/PageAlerts;->access$0(Lcom/sprint/dsa/PageAlerts;)Lcom/sprint/dsa/data/Alerts;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sprint/dsa/data/Alerts;->getAllAlerts()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/dsa/PageAlerts$AlertOnClickListener;->m_alert:Lcom/sprint/dsa/data/Alert;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1c
.end method
