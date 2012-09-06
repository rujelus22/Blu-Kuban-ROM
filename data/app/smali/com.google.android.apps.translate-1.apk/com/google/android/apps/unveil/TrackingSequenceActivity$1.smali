.class Lcom/google/android/apps/unveil/TrackingSequenceActivity$1;
.super Ljava/lang/Object;
.source "TrackingSequenceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/TrackingSequenceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/unveil/TrackingSequenceActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/unveil/TrackingSequenceActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/android/apps/unveil/TrackingSequenceActivity$1;->this$0:Lcom/google/android/apps/unveil/TrackingSequenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x0

    .line 81
    iget-object v5, p0, Lcom/google/android/apps/unveil/TrackingSequenceActivity$1;->this$0:Lcom/google/android/apps/unveil/TrackingSequenceActivity;

    invoke-static {v5}, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera;->getImageSequenceDirectories(Landroid/app/Activity;)[Landroid/util/Pair;

    move-result-object v4

    .line 83
    .local v4, sequences:[Landroid/util/Pair;,"[Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/google/android/apps/unveil/TrackingSequenceActivity$1;->this$0:Lcom/google/android/apps/unveil/TrackingSequenceActivity;

    #setter for: Lcom/google/android/apps/unveil/TrackingSequenceActivity;->averagePerformance:F
    invoke-static {v5, v6}, Lcom/google/android/apps/unveil/TrackingSequenceActivity;->access$002(Lcom/google/android/apps/unveil/TrackingSequenceActivity;F)F

    .line 84
    iget-object v5, p0, Lcom/google/android/apps/unveil/TrackingSequenceActivity$1;->this$0:Lcom/google/android/apps/unveil/TrackingSequenceActivity;

    #setter for: Lcom/google/android/apps/unveil/TrackingSequenceActivity;->averageTimePerFrame:F
    invoke-static {v5, v6}, Lcom/google/android/apps/unveil/TrackingSequenceActivity;->access$102(Lcom/google/android/apps/unveil/TrackingSequenceActivity;F)F

    .line 85
    iget-object v5, p0, Lcom/google/android/apps/unveil/TrackingSequenceActivity$1;->this$0:Lcom/google/android/apps/unveil/TrackingSequenceActivity;

    #setter for: Lcom/google/android/apps/unveil/TrackingSequenceActivity;->numSequences:I
    invoke-static {v5, v9}, Lcom/google/android/apps/unveil/TrackingSequenceActivity;->access$202(Lcom/google/android/apps/unveil/TrackingSequenceActivity;I)I

    .line 87
    move-object v0, v4

    .local v0, arr$:[Landroid/util/Pair;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1a
    if-ge v1, v2, :cond_62

    aget-object v3, v0, v1

    .line 88
    .local v3, sequence:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/google/android/apps/unveil/TrackingSequenceActivity$1;->this$0:Lcom/google/android/apps/unveil/TrackingSequenceActivity;

    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    #setter for: Lcom/google/android/apps/unveil/TrackingSequenceActivity;->activeSequence:Ljava/lang/String;
    invoke-static {v6, v5}, Lcom/google/android/apps/unveil/TrackingSequenceActivity;->access$302(Lcom/google/android/apps/unveil/TrackingSequenceActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 91
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    const-string v6, "asset"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 87
    :goto_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 95
    :cond_36
    iget-object v5, p0, Lcom/google/android/apps/unveil/TrackingSequenceActivity$1;->this$0:Lcom/google/android/apps/unveil/TrackingSequenceActivity;

    #getter for: Lcom/google/android/apps/unveil/TrackingSequenceActivity;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;
    invoke-static {v5}, Lcom/google/android/apps/unveil/TrackingSequenceActivity;->access$400(Lcom/google/android/apps/unveil/TrackingSequenceActivity;)Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v5

    const-string v6, "<<<<<<<<<<<< EVALUATING %s >>>>>>>>>>>>>>"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/google/android/apps/unveil/TrackingSequenceActivity$1;->this$0:Lcom/google/android/apps/unveil/TrackingSequenceActivity;

    #getter for: Lcom/google/android/apps/unveil/TrackingSequenceActivity;->activeSequence:Ljava/lang/String;
    invoke-static {v8}, Lcom/google/android/apps/unveil/TrackingSequenceActivity;->access$300(Lcom/google/android/apps/unveil/TrackingSequenceActivity;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    iget-object v5, p0, Lcom/google/android/apps/unveil/TrackingSequenceActivity$1;->this$0:Lcom/google/android/apps/unveil/TrackingSequenceActivity;

    #setter for: Lcom/google/android/apps/unveil/TrackingSequenceActivity;->resultReceived:Z
    invoke-static {v5, v9}, Lcom/google/android/apps/unveil/TrackingSequenceActivity;->access$502(Lcom/google/android/apps/unveil/TrackingSequenceActivity;Z)Z

    .line 97
    iget-object v5, p0, Lcom/google/android/apps/unveil/TrackingSequenceActivity$1;->this$0:Lcom/google/android/apps/unveil/TrackingSequenceActivity;

    iget-object v6, p0, Lcom/google/android/apps/unveil/TrackingSequenceActivity$1;->this$0:Lcom/google/android/apps/unveil/TrackingSequenceActivity;

    #getter for: Lcom/google/android/apps/unveil/TrackingSequenceActivity;->activeSequence:Ljava/lang/String;
    invoke-static {v6}, Lcom/google/android/apps/unveil/TrackingSequenceActivity;->access$300(Lcom/google/android/apps/unveil/TrackingSequenceActivity;)Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/google/android/apps/unveil/TrackingSequenceActivity;->startTestSequence(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/google/android/apps/unveil/TrackingSequenceActivity;->access$600(Lcom/google/android/apps/unveil/TrackingSequenceActivity;Ljava/lang/String;)V

    .line 98
    iget-object v5, p0, Lcom/google/android/apps/unveil/TrackingSequenceActivity$1;->this$0:Lcom/google/android/apps/unveil/TrackingSequenceActivity;

    #calls: Lcom/google/android/apps/unveil/TrackingSequenceActivity;->waitForResult()V
    invoke-static {v5}, Lcom/google/android/apps/unveil/TrackingSequenceActivity;->access$700(Lcom/google/android/apps/unveil/TrackingSequenceActivity;)V

    goto :goto_33

    .line 100
    .end local v3           #sequence:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_62
    iget-object v5, p0, Lcom/google/android/apps/unveil/TrackingSequenceActivity$1;->this$0:Lcom/google/android/apps/unveil/TrackingSequenceActivity;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lcom/google/android/apps/unveil/TrackingSequenceActivity;->setResult(I)V

    .line 101
    iget-object v5, p0, Lcom/google/android/apps/unveil/TrackingSequenceActivity$1;->this$0:Lcom/google/android/apps/unveil/TrackingSequenceActivity;

    invoke-virtual {v5}, Lcom/google/android/apps/unveil/TrackingSequenceActivity;->finish()V

    .line 102
    return-void
.end method
