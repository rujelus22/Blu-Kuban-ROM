.class Lcom/google/android/apps/books/app/VolumeCarouselFragment$RequeryHandler;
.super Landroid/os/Handler;
.source "VolumeCarouselFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/VolumeCarouselFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequeryHandler"
.end annotation


# instance fields
.field private mQueued:Z

.field final synthetic this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)V
    .registers 3
    .parameter

    .prologue
    .line 1157
    iput-object p1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$RequeryHandler;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$RequeryHandler;->mQueued:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/books/app/VolumeCarouselFragment;Lcom/google/android/apps/books/app/VolumeCarouselFragment$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1157
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment$RequeryHandler;-><init>(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 1161
    iget v0, p1, Landroid/os/Message;->what:I

    .line 1162
    .local v0, msgType:I
    if-nez v0, :cond_11

    .line 1163
    iget-boolean v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$RequeryHandler;->mQueued:Z

    if-nez v1, :cond_10

    .line 1164
    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v3, v1, v2}, Lcom/google/android/apps/books/app/VolumeCarouselFragment$RequeryHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1165
    iput-boolean v3, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$RequeryHandler;->mQueued:Z

    .line 1179
    :cond_10
    :goto_10
    return-void

    .line 1167
    :cond_11
    if-ne v0, v3, :cond_34

    .line 1168
    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$RequeryHandler;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_24

    .line 1171
    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$RequeryHandler;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    #setter for: Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mRequeryOnResume:Z
    invoke-static {v1, v3}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1802(Lcom/google/android/apps/books/app/VolumeCarouselFragment;Z)Z

    .line 1175
    :goto_20
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$RequeryHandler;->mQueued:Z

    goto :goto_10

    .line 1173
    :cond_24
    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$RequeryHandler;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/high16 v2, 0x7f0f

    invoke-virtual {v1, v2}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Loader;->forceLoad()V

    goto :goto_20

    .line 1177
    :cond_34
    const-string v1, "VolumeCarouselFragment"

    const-string v2, "Unexpected message type delivered to RequeryHandler"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method
