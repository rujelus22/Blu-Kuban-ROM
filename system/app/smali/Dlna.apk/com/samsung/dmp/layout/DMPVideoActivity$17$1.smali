.class Lcom/samsung/dmp/layout/DMPVideoActivity$17$1;
.super Ljava/lang/Object;
.source "DMPVideoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/dmp/layout/DMPVideoActivity$17;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/dmp/layout/DMPVideoActivity$17;


# direct methods
.method constructor <init>(Lcom/samsung/dmp/layout/DMPVideoActivity$17;)V
    .registers 2
    .parameter

    .prologue
    .line 1870
    iput-object p1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$17$1;->this$1:Lcom/samsung/dmp/layout/DMPVideoActivity$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1872
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$17$1;->this$1:Lcom/samsung/dmp/layout/DMPVideoActivity$17;

    iget-object v0, v0, Lcom/samsung/dmp/layout/DMPVideoActivity$17;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$2400(Lcom/samsung/dmp/layout/DMPVideoActivity;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->hideBubble()V

    .line 1873
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$17$1;->this$1:Lcom/samsung/dmp/layout/DMPVideoActivity$17;

    iget-object v0, v0, Lcom/samsung/dmp/layout/DMPVideoActivity$17;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$2400(Lcom/samsung/dmp/layout/DMPVideoActivity;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->invalidate()V

    .line 1874
    return-void
.end method
