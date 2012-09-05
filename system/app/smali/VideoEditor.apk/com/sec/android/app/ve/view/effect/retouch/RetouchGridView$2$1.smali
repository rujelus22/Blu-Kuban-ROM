.class Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView$2$1;
.super Ljava/lang/Object;
.source "RetouchGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView$2;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView$2;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView$2;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView$2$1;->this$1:Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView$2;

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 179
    invoke-static {}, Lcom/sec/android/app/ve/thread/PreviewFrameThread;->getInstance()Lcom/sec/android/app/ve/thread/PreviewFrameThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/thread/PreviewFrameThread;->refersh()V

    .line 180
    return-void
.end method
