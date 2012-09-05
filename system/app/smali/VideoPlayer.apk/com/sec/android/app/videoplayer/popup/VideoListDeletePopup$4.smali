.class Lcom/sec/android/app/videoplayer/popup/VideoListDeletePopup$4;
.super Ljava/lang/Object;
.source "VideoListDeletePopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/videoplayer/popup/VideoListDeletePopup;->createPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/popup/VideoListDeletePopup;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/popup/VideoListDeletePopup;)V
    .registers 2
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/popup/VideoListDeletePopup$4;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoListDeletePopup;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 37
    const/16 v1, 0x54

    if-ne p2, v1, :cond_b

    .line 38
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoListDeletePopup$4;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoListDeletePopup;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/popup/VideoListDeletePopup;->finish()V

    .line 42
    :cond_a
    :goto_a
    return v0

    .line 40
    :cond_b
    const/16 v1, 0x52

    if-eq p2, v1, :cond_a

    .line 42
    const/4 v0, 0x0

    goto :goto_a
.end method
