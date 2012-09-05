.class Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup$2;
.super Ljava/lang/Object;
.source "VideoAutoPlayPopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup;)V
    .registers 2
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup$2;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 2
    .parameter "dialog"

    .prologue
    .line 78
    return-void
.end method
