.class Lcom/sec/android/app/music/common/richinfo/RichInfoView$1;
.super Landroid/os/Handler;
.source "RichInfoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/common/richinfo/RichInfoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/common/richinfo/RichInfoView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/common/richinfo/RichInfoView;)V
    .registers 2
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView$1;->this$0:Lcom/sec/android/app/music/common/richinfo/RichInfoView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView$1;->this$0:Lcom/sec/android/app/music/common/richinfo/RichInfoView;

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    #calls: Lcom/sec/android/app/music/common/richinfo/RichInfoView;->showView(IZ)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->access$000(Lcom/sec/android/app/music/common/richinfo/RichInfoView;IZ)V

    .line 213
    return-void
.end method
