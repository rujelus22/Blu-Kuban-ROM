.class Lcom/google/android/apps/googlevoice/AndroidServiceManager$1;
.super Landroid/content/BroadcastReceiver;
.source "AndroidServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/AndroidServiceManager;->refreshShadowNumberMappings(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/AndroidServiceManager;

.field final synthetic val$onDone:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/AndroidServiceManager;Ljava/lang/Runnable;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/AndroidServiceManager$1;->this$0:Lcom/google/android/apps/googlevoice/AndroidServiceManager;

    iput-object p2, p0, Lcom/google/android/apps/googlevoice/AndroidServiceManager$1;->val$onDone:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .parameter "theContext"
    .parameter "intent"

    .prologue
    .line 140
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 141
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidServiceManager$1;->val$onDone:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 142
    return-void
.end method
