.class Lcom/google/android/apps/googlevoice/LoginActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/LoginActivity;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/LoginActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/LoginActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/LoginActivity$1;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity$1;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/googlevoice/LoginActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 159
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity$1;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/LoginActivity;->setResult(I)V

    .line 160
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity$1;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/LoginActivity;->finish()V

    .line 161
    return-void
.end method
