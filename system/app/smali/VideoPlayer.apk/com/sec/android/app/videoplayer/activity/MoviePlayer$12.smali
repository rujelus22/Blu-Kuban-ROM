.class Lcom/sec/android/app/videoplayer/activity/MoviePlayer$12;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->popupDivxExit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V
    .registers 2
    .parameter

    .prologue
    .line 2835
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$12;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 2839
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$12;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mDivxExitShow:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$2602(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Z)Z

    .line 2840
    return-void
.end method
