.class Lcom/samsung/dmp/layout/DMPAudioActivity$13$1;
.super Ljava/lang/Object;
.source "DMPAudioActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/dmp/layout/DMPAudioActivity$13;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/dmp/layout/DMPAudioActivity$13;


# direct methods
.method constructor <init>(Lcom/samsung/dmp/layout/DMPAudioActivity$13;)V
    .registers 2
    .parameter

    .prologue
    .line 1466
    iput-object p1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$13$1;->this$1:Lcom/samsung/dmp/layout/DMPAudioActivity$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1468
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$13$1;->this$1:Lcom/samsung/dmp/layout/DMPAudioActivity$13;

    iget-object v0, v0, Lcom/samsung/dmp/layout/DMPAudioActivity$13;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$000(Lcom/samsung/dmp/layout/DMPAudioActivity;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->hideBubble()V

    .line 1469
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$13$1;->this$1:Lcom/samsung/dmp/layout/DMPAudioActivity$13;

    iget-object v0, v0, Lcom/samsung/dmp/layout/DMPAudioActivity$13;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$000(Lcom/samsung/dmp/layout/DMPAudioActivity;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->invalidate()V

    .line 1470
    return-void
.end method
