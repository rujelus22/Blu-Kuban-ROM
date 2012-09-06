.class Lcom/google/android/apps/plus/fragments/HostedEventFragment$9;
.super Ljava/lang/Object;
.source "HostedEventFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/HostedEventFragment;->updateActiveEventState(Lcom/google/api/services/plusi/model/PlusEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/HostedEventFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/HostedEventFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 1490
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$9;->this$0:Lcom/google/android/apps/plus/fragments/HostedEventFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1493
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$9;->this$0:Lcom/google/android/apps/plus/fragments/HostedEventFragment;

    #calls: Lcom/google/android/apps/plus/fragments/HostedEventFragment;->isPaused()Z
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->access$1900(Lcom/google/android/apps/plus/fragments/HostedEventFragment;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1494
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$9;->this$0:Lcom/google/android/apps/plus/fragments/HostedEventFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->onInstantShareToggle(Z)V

    .line 1496
    :cond_e
    return-void
.end method
