.class Lcom/sec/android/app/videoplayer/popup/VideoListDeletePopup$1;
.super Ljava/lang/Object;
.source "VideoListDeletePopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 54
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/popup/VideoListDeletePopup$1;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoListDeletePopup;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoListDeletePopup$1;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoListDeletePopup;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/popup/VideoListDeletePopup;->finish()V

    .line 57
    return-void
.end method
