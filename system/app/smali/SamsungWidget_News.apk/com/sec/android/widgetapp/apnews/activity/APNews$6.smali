.class Lcom/sec/android/widgetapp/apnews/activity/APNews$6;
.super Ljava/lang/Object;
.source "APNews.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/apnews/activity/APNews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/apnews/activity/APNews;)V
    .registers 2
    .parameter

    .prologue
    .line 804
    iput-object p1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$6;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .parameter "name"
    .parameter "service"

    .prologue
    .line 807
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$6;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    check-cast p2, Lcom/sec/android/widgetapp/apnews/engine/DataService$DataBinder;

    .end local p2
    invoke-virtual {p2}, Lcom/sec/android/widgetapp/apnews/engine/DataService$DataBinder;->getService()Lcom/sec/android/widgetapp/apnews/engine/DataService;

    move-result-object v1

    #setter for: Lcom/sec/android/widgetapp/apnews/activity/APNews;->mBoundService:Lcom/sec/android/widgetapp/apnews/engine/DataService;
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$602(Lcom/sec/android/widgetapp/apnews/activity/APNews;Lcom/sec/android/widgetapp/apnews/engine/DataService;)Lcom/sec/android/widgetapp/apnews/engine/DataService;

    .line 808
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$6;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/APNews;->mBoundService:Lcom/sec/android/widgetapp/apnews/engine/DataService;
    invoke-static {v0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$600(Lcom/sec/android/widgetapp/apnews/activity/APNews;)Lcom/sec/android/widgetapp/apnews/engine/DataService;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$6;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    iget-object v1, v1, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/apnews/engine/DataService;->setHandler(Landroid/os/Handler;)V

    .line 809
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 812
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$6;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/APNews;->mBoundService:Lcom/sec/android/widgetapp/apnews/engine/DataService;
    invoke-static {v0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$600(Lcom/sec/android/widgetapp/apnews/activity/APNews;)Lcom/sec/android/widgetapp/apnews/engine/DataService;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/apnews/engine/DataService;->setHandler(Landroid/os/Handler;)V

    .line 813
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$6;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    #setter for: Lcom/sec/android/widgetapp/apnews/activity/APNews;->mBoundService:Lcom/sec/android/widgetapp/apnews/engine/DataService;
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$602(Lcom/sec/android/widgetapp/apnews/activity/APNews;Lcom/sec/android/widgetapp/apnews/engine/DataService;)Lcom/sec/android/widgetapp/apnews/engine/DataService;

    .line 814
    return-void
.end method
