.class Lcom/google/android/music/albumwall/Model$3;
.super Ljava/lang/Object;
.source "Model.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/albumwall/Model;->getChildCount(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Z)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/albumwall/Model;

.field final synthetic val$epoch:Lcom/google/android/music/albumwall/Model$Epoch;

.field final synthetic val$expanded:Z

.field final synthetic val$pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;


# direct methods
.method constructor <init>(Lcom/google/android/music/albumwall/Model;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZLcom/google/android/music/albumwall/Model$Epoch;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1120
    iput-object p1, p0, Lcom/google/android/music/albumwall/Model$3;->this$0:Lcom/google/android/music/albumwall/Model;

    iput-object p2, p0, Lcom/google/android/music/albumwall/Model$3;->val$pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    iput-boolean p3, p0, Lcom/google/android/music/albumwall/Model$3;->val$expanded:Z

    iput-object p4, p0, Lcom/google/android/music/albumwall/Model$3;->val$epoch:Lcom/google/android/music/albumwall/Model$Epoch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1126
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model$3;->val$epoch:Lcom/google/android/music/albumwall/Model$Epoch;

    iget-object v1, p0, Lcom/google/android/music/albumwall/Model$3;->this$0:Lcom/google/android/music/albumwall/Model;

    #getter for: Lcom/google/android/music/albumwall/Model;->mEpoch:Lcom/google/android/music/albumwall/Model$Epoch;
    invoke-static {v1}, Lcom/google/android/music/albumwall/Model;->access$600(Lcom/google/android/music/albumwall/Model;)Lcom/google/android/music/albumwall/Model$Epoch;

    move-result-object v1

    if-eq v0, v1, :cond_19

    .line 1127
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model$3;->this$0:Lcom/google/android/music/albumwall/Model;

    #getter for: Lcom/google/android/music/albumwall/Model;->mAlbumWallView:Lcom/google/android/music/albumwall/AlbumWallView;
    invoke-static {v0}, Lcom/google/android/music/albumwall/Model;->access$700(Lcom/google/android/music/albumwall/Model;)Lcom/google/android/music/albumwall/AlbumWallView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/albumwall/Model$3;->val$epoch:Lcom/google/android/music/albumwall/Model$Epoch;

    iget-object v2, p0, Lcom/google/android/music/albumwall/Model$3;->val$pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/google/android/music/albumwall/AlbumWallView;->setChildCount(Lcom/google/android/music/albumwall/Model$Epoch;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;II)V

    .line 1136
    :goto_18
    return-void

    .line 1129
    :cond_19
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model$3;->this$0:Lcom/google/android/music/albumwall/Model;

    #getter for: Lcom/google/android/music/albumwall/Model;->mDelegate:Lcom/google/android/music/albumwall/AlbumWallCallback;
    invoke-static {v0}, Lcom/google/android/music/albumwall/Model;->access$800(Lcom/google/android/music/albumwall/Model;)Lcom/google/android/music/albumwall/AlbumWallCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/albumwall/Model$3;->val$pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    new-instance v2, Lcom/google/android/music/albumwall/Model$3$1;

    invoke-direct {v2, p0}, Lcom/google/android/music/albumwall/Model$3$1;-><init>(Lcom/google/android/music/albumwall/Model$3;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/music/albumwall/AlbumWallCallback;->onRequestChildCount(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Lcom/google/android/music/albumwall/AlbumWallCallback$Integer2Reply;)V

    goto :goto_18
.end method
