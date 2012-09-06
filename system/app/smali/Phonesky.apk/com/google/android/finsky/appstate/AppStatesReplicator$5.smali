.class Lcom/google/android/finsky/appstate/AppStatesReplicator$5;
.super Ljava/lang/Object;
.source "AppStatesReplicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/appstate/AppStatesReplicator;->handleContentSyncResponse(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/appstate/AppStatesReplicator;

.field final synthetic val$expectedCount:I

.field final synthetic val$finished:I

.field final synthetic val$replicationListener:Lcom/google/android/finsky/appstate/AppStatesReplicator$Listener;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/appstate/AppStatesReplicator;Lcom/google/android/finsky/appstate/AppStatesReplicator$Listener;II)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator$5;->this$0:Lcom/google/android/finsky/appstate/AppStatesReplicator;

    iput-object p2, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator$5;->val$replicationListener:Lcom/google/android/finsky/appstate/AppStatesReplicator$Listener;

    iput p3, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator$5;->val$finished:I

    iput p4, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator$5;->val$expectedCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 246
    iget-object v1, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator$5;->val$replicationListener:Lcom/google/android/finsky/appstate/AppStatesReplicator$Listener;

    iget v0, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator$5;->val$finished:I

    iget v2, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator$5;->val$expectedCount:I

    if-ne v0, v2, :cond_d

    const/4 v0, 0x1

    :goto_9
    invoke-interface {v1, v0}, Lcom/google/android/finsky/appstate/AppStatesReplicator$Listener;->onFinished(Z)V

    .line 247
    return-void

    .line 246
    :cond_d
    const/4 v0, 0x0

    goto :goto_9
.end method
