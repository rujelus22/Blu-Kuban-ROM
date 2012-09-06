.class Lcom/google/android/apps/plus/fragments/HostedStreamFragment$1;
.super Ljava/lang/Object;
.source "HostedStreamFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->prefetchContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/HostedStreamFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/HostedStreamFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 1035
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamFragment;

    #calls: Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->isPaused()Z
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->access$300(Lcom/google/android/apps/plus/fragments/HostedStreamFragment;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 1039
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->fetchContent(Z)V

    .line 1043
    :cond_e
    :goto_e
    return-void

    .line 1040
    :cond_f
    const-string v0, "HostedStreamFrag"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1041
    const-string v0, "HostedStreamFrag"

    const-string v1, "prefetchContent - paused!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method
