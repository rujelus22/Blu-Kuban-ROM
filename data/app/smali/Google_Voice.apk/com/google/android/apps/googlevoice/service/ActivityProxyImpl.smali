.class public Lcom/google/android/apps/googlevoice/service/ActivityProxyImpl;
.super Ljava/lang/Object;
.source "ActivityProxyImpl.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/service/ActivityProxy;


# instance fields
.field private final activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2
    .parameter "activity"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/service/ActivityProxyImpl;->activity:Landroid/app/Activity;

    .line 29
    return-void
.end method


# virtual methods
.method public dismissDialog(I)V
    .registers 3
    .parameter "id"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/service/ActivityProxyImpl;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->dismissDialog(I)V

    .line 69
    return-void
.end method

.method public finish()V
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/service/ActivityProxyImpl;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 34
    return-void
.end method

.method public getApplicationContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/service/ActivityProxyImpl;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getCallingPackage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/service/ActivityProxyImpl;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDelegate()Landroid/app/Activity;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/service/ActivityProxyImpl;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .registers 4
    .parameter "receiver"
    .parameter "filter"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/service/ActivityProxyImpl;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 79
    return-void
.end method

.method public removeDialog(I)V
    .registers 3
    .parameter "id"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/service/ActivityProxyImpl;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->removeDialog(I)V

    .line 74
    return-void
.end method

.method public setResult(I)V
    .registers 3
    .parameter "result"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/service/ActivityProxyImpl;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 49
    return-void
.end method

.method public showDialog(I)V
    .registers 3
    .parameter "id"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/service/ActivityProxyImpl;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->showDialog(I)V

    .line 64
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .registers 3
    .parameter "intent"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/service/ActivityProxyImpl;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 54
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 4
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/service/ActivityProxyImpl;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 59
    return-void
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .registers 3
    .parameter "receiver"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/service/ActivityProxyImpl;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 84
    return-void
.end method
