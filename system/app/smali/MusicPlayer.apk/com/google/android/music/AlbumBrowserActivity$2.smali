.class Lcom/google/android/music/AlbumBrowserActivity$2;
.super Ljava/lang/Object;
.source "AlbumBrowserActivity.java"

# interfaces
.implements Lcom/google/android/music/utils/async/AsyncRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/AlbumBrowserActivity;->setTitle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/AlbumBrowserActivity;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/music/AlbumBrowserActivity;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/google/android/music/AlbumBrowserActivity$2;->this$0:Lcom/google/android/music/AlbumBrowserActivity;

    iput-object p2, p0, Lcom/google/android/music/AlbumBrowserActivity$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public backgroundTask()V
    .registers 4

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity$2;->this$0:Lcom/google/android/music/AlbumBrowserActivity;

    iget-object v1, p0, Lcom/google/android/music/AlbumBrowserActivity$2;->this$0:Lcom/google/android/music/AlbumBrowserActivity;

    #getter for: Lcom/google/android/music/AlbumBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/AlbumList;
    invoke-static {v1}, Lcom/google/android/music/AlbumBrowserActivity;->access$200(Lcom/google/android/music/AlbumBrowserActivity;)Lcom/google/android/music/medialist/AlbumList;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/AlbumBrowserActivity$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/music/medialist/AlbumList;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/google/android/music/AlbumBrowserActivity;->mFragmentTitle:Ljava/lang/CharSequence;
    invoke-static {v0, v1}, Lcom/google/android/music/AlbumBrowserActivity;->access$102(Lcom/google/android/music/AlbumBrowserActivity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 252
    return-void
.end method

.method public taskCompleted()V
    .registers 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity$2;->this$0:Lcom/google/android/music/AlbumBrowserActivity;

    #calls: Lcom/google/android/music/AlbumBrowserActivity;->requestReconfig()V
    invoke-static {v0}, Lcom/google/android/music/AlbumBrowserActivity;->access$300(Lcom/google/android/music/AlbumBrowserActivity;)V

    .line 256
    return-void
.end method
