.class public Lcom/infraware/polarisoffice/OfficeMainActivity$UpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OfficeMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/polarisoffice/OfficeMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpdateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/OfficeMainActivity;


# direct methods
.method public constructor <init>(Lcom/infraware/polarisoffice/OfficeMainActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 594
    iput-object p1, p0, Lcom/infraware/polarisoffice/OfficeMainActivity$UpdateReceiver;->this$0:Lcom/infraware/polarisoffice/OfficeMainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 597
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 598
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_13

    .line 599
    const-string v1, "com.infraware.polarisoffice.ACTION_UPDATE_AVAILABE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 600
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeMainActivity$UpdateReceiver;->this$0:Lcom/infraware/polarisoffice/OfficeMainActivity;

    invoke-virtual {v1}, Lcom/infraware/polarisoffice/OfficeMainActivity;->onStopService()Z

    .line 602
    :cond_13
    return-void
.end method
