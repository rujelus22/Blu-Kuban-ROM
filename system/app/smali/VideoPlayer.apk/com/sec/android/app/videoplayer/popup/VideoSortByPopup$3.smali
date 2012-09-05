.class Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup$3;
.super Ljava/lang/Object;
.source "VideoSortByPopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;)V
    .registers 2
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup$3;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 2
    .parameter "dialog"

    .prologue
    .line 84
    return-void
.end method
