.class public Lcom/infraware/common/appwidget/FilePickerActivity$CloseActionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FilePickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/common/appwidget/FilePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CloseActionReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/common/appwidget/FilePickerActivity;


# direct methods
.method public constructor <init>(Lcom/infraware/common/appwidget/FilePickerActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/infraware/common/appwidget/FilePickerActivity$CloseActionReceiver;->this$0:Lcom/infraware/common/appwidget/FilePickerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 206
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_13

    .line 209
    const-string v1, "com.infraware.polarisoffice.CLOSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 211
    iget-object v1, p0, Lcom/infraware/common/appwidget/FilePickerActivity$CloseActionReceiver;->this$0:Lcom/infraware/common/appwidget/FilePickerActivity;

    invoke-virtual {v1}, Lcom/infraware/common/appwidget/FilePickerActivity;->finish()V

    .line 214
    :cond_13
    return-void
.end method
