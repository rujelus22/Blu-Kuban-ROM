.class Lcom/google/android/music/albumwall/AlbumWallView$23;
.super Ljava/lang/Object;
.source "AlbumWallView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/albumwall/AlbumWallView;->onPileFocused(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/albumwall/AlbumWallView;


# direct methods
.method constructor <init>(Lcom/google/android/music/albumwall/AlbumWallView;)V
    .registers 2
    .parameter

    .prologue
    .line 746
    iput-object p1, p0, Lcom/google/android/music/albumwall/AlbumWallView$23;->this$0:Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 748
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$23;->this$0:Lcom/google/android/music/albumwall/AlbumWallView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallView;->sendAccessibilityEvent(I)V

    .line 749
    return-void
.end method
