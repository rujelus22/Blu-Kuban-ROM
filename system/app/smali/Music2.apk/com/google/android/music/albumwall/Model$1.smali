.class Lcom/google/android/music/albumwall/Model$1;
.super Ljava/lang/Object;
.source "Model.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/albumwall/Model;->getPileCount()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/albumwall/Model;

.field final synthetic val$epoch:Lcom/google/android/music/albumwall/Model$Epoch;


# direct methods
.method constructor <init>(Lcom/google/android/music/albumwall/Model;Lcom/google/android/music/albumwall/Model$Epoch;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 983
    iput-object p1, p0, Lcom/google/android/music/albumwall/Model$1;->this$0:Lcom/google/android/music/albumwall/Model;

    iput-object p2, p0, Lcom/google/android/music/albumwall/Model$1;->val$epoch:Lcom/google/android/music/albumwall/Model$Epoch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 986
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model$1;->val$epoch:Lcom/google/android/music/albumwall/Model$Epoch;

    iget-object v1, p0, Lcom/google/android/music/albumwall/Model$1;->this$0:Lcom/google/android/music/albumwall/Model;

    #getter for: Lcom/google/android/music/albumwall/Model;->mEpoch:Lcom/google/android/music/albumwall/Model$Epoch;
    invoke-static {v1}, Lcom/google/android/music/albumwall/Model;->access$600(Lcom/google/android/music/albumwall/Model;)Lcom/google/android/music/albumwall/Model$Epoch;

    move-result-object v1

    if-eq v0, v1, :cond_13

    .line 987
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model$1;->this$0:Lcom/google/android/music/albumwall/Model;

    iget-object v1, p0, Lcom/google/android/music/albumwall/Model$1;->val$epoch:Lcom/google/android/music/albumwall/Model$Epoch;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/albumwall/Model;->setPileCount(Lcom/google/android/music/albumwall/Model$Epoch;I)V

    .line 996
    :goto_12
    return-void

    .line 989
    :cond_13
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model$1;->this$0:Lcom/google/android/music/albumwall/Model;

    #getter for: Lcom/google/android/music/albumwall/Model;->mDelegate:Lcom/google/android/music/albumwall/AlbumWallCallback;
    invoke-static {v0}, Lcom/google/android/music/albumwall/Model;->access$800(Lcom/google/android/music/albumwall/Model;)Lcom/google/android/music/albumwall/AlbumWallCallback;

    move-result-object v0

    new-instance v1, Lcom/google/android/music/albumwall/Model$1$1;

    invoke-direct {v1, p0}, Lcom/google/android/music/albumwall/Model$1$1;-><init>(Lcom/google/android/music/albumwall/Model$1;)V

    invoke-interface {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallCallback;->onRequestPileCount(Lcom/google/android/music/albumwall/AlbumWallCallback$IntegerReply;)V

    goto :goto_12
.end method
