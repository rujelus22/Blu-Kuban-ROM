.class final Lcom/google/android/apps/plus/views/StreamOneUpCommentView$SetPressedRunnable;
.super Ljava/lang/Object;
.source "StreamOneUpCommentView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/views/StreamOneUpCommentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SetPressedRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/views/StreamOneUpCommentView;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/views/StreamOneUpCommentView;)V
    .registers 2
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView$SetPressedRunnable;->this$0:Lcom/google/android/apps/plus/views/StreamOneUpCommentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/views/StreamOneUpCommentView;Lcom/google/android/apps/plus/views/StreamOneUpCommentView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/views/StreamOneUpCommentView$SetPressedRunnable;-><init>(Lcom/google/android/apps/plus/views/StreamOneUpCommentView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView$SetPressedRunnable;->this$0:Lcom/google/android/apps/plus/views/StreamOneUpCommentView;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->mPressed:Z
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->access$002(Lcom/google/android/apps/plus/views/StreamOneUpCommentView;Z)Z

    .line 93
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentView$SetPressedRunnable;->this$0:Lcom/google/android/apps/plus/views/StreamOneUpCommentView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->invalidate()V

    .line 94
    return-void
.end method
