.class final Lcom/dropbox/android/activity/ce;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/VideoPlayerActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/dropbox/android/activity/ce;->a:Lcom/dropbox/android/activity/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/dropbox/android/activity/ce;->a:Lcom/dropbox/android/activity/VideoPlayerActivity;

    invoke-static {v0}, Lcom/dropbox/android/activity/VideoPlayerActivity;->c(Lcom/dropbox/android/activity/VideoPlayerActivity;)V

    .line 121
    return-void
.end method
