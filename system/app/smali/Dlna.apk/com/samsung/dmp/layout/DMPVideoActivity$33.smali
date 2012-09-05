.class Lcom/samsung/dmp/layout/DMPVideoActivity$33;
.super Landroid/content/BroadcastReceiver;
.source "DMPVideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/dmp/layout/DMPVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;


# direct methods
.method constructor <init>(Lcom/samsung/dmp/layout/DMPVideoActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 2490
    iput-object p1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$33;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2492
    const-string v1, "time-zone"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2493
    .local v0, tz:Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$33;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    #setter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mCalendar:Ljava/util/Calendar;
    invoke-static {v1, v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$6602(Lcom/samsung/dmp/layout/DMPVideoActivity;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 2494
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$33;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$33;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mCalendar:Ljava/util/Calendar;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$6600(Lcom/samsung/dmp/layout/DMPVideoActivity;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->setTimeZone(Ljava/util/Calendar;)V

    .line 2495
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$33;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    invoke-virtual {v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->updateClock()V

    .line 2496
    return-void
.end method
