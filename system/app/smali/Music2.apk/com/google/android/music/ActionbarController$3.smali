.class Lcom/google/android/music/ActionbarController$3;
.super Ljava/lang/Object;
.source "ActionbarController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/ActionbarController;->setSyncStatus(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/ActionbarController;

.field final synthetic val$targetVisibility:I


# direct methods
.method constructor <init>(Lcom/google/android/music/ActionbarController;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 251
    iput-object p1, p0, Lcom/google/android/music/ActionbarController$3;->this$0:Lcom/google/android/music/ActionbarController;

    iput p2, p0, Lcom/google/android/music/ActionbarController$3;->val$targetVisibility:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/android/music/ActionbarController$3;->this$0:Lcom/google/android/music/ActionbarController;

    #getter for: Lcom/google/android/music/ActionbarController;->mSyncProgress:Lcom/google/android/music/ActionbarController$SplitActionBarViews;
    invoke-static {v0}, Lcom/google/android/music/ActionbarController;->access$300(Lcom/google/android/music/ActionbarController;)Lcom/google/android/music/ActionbarController$SplitActionBarViews;

    move-result-object v0

    iget v1, p0, Lcom/google/android/music/ActionbarController$3;->val$targetVisibility:I

    invoke-virtual {v0, v1}, Lcom/google/android/music/ActionbarController$SplitActionBarViews;->setVisibility(I)V

    .line 254
    return-void
.end method
