.class Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$1;
.super Landroid/os/Handler;
.source "ThumbnailViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$1;->this$0:Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    .line 79
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 81
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_b

    .line 82
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$1;->this$0:Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->updateCurrentView()V

    .line 84
    :cond_b
    return-void
.end method
