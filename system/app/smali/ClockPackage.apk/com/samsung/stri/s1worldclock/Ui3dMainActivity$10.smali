.class Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$10;
.super Landroid/content/BroadcastReceiver;
.source "Ui3dMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;


# direct methods
.method constructor <init>(Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1384
    iput-object p1, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$10;->this$0:Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1386
    iget-object v0, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$10;->this$0:Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->removeDialog(I)V

    .line 1387
    return-void
.end method
