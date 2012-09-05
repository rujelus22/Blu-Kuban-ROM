.class Lcom/google/android/music/albumwall/Model$3$1;
.super Ljava/lang/Object;
.source "Model.java"

# interfaces
.implements Lcom/google/android/music/albumwall/AlbumWallCallback$Integer2Reply;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/albumwall/Model$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/music/albumwall/Model$3;


# direct methods
.method constructor <init>(Lcom/google/android/music/albumwall/Model$3;)V
    .registers 2
    .parameter

    .prologue
    .line 1130
    iput-object p1, p0, Lcom/google/android/music/albumwall/Model$3$1;->this$1:Lcom/google/android/music/albumwall/Model$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reply(II)V
    .registers 6
    .parameter "a"
    .parameter "b"

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model$3$1;->this$1:Lcom/google/android/music/albumwall/Model$3;

    iget-object v0, v0, Lcom/google/android/music/albumwall/Model$3;->this$0:Lcom/google/android/music/albumwall/Model;

    #getter for: Lcom/google/android/music/albumwall/Model;->mAlbumWallView:Lcom/google/android/music/albumwall/AlbumWallView;
    invoke-static {v0}, Lcom/google/android/music/albumwall/Model;->access$700(Lcom/google/android/music/albumwall/Model;)Lcom/google/android/music/albumwall/AlbumWallView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/albumwall/Model$3$1;->this$1:Lcom/google/android/music/albumwall/Model$3;

    iget-object v1, v1, Lcom/google/android/music/albumwall/Model$3;->val$epoch:Lcom/google/android/music/albumwall/Model$Epoch;

    iget-object v2, p0, Lcom/google/android/music/albumwall/Model$3$1;->this$1:Lcom/google/android/music/albumwall/Model$3;

    iget-object v2, v2, Lcom/google/android/music/albumwall/Model$3;->val$pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/google/android/music/albumwall/AlbumWallView;->setChildCount(Lcom/google/android/music/albumwall/Model$Epoch;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;II)V

    .line 1134
    return-void
.end method
