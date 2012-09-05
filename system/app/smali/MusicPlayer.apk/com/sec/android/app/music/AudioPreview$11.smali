.class Lcom/sec/android/app/music/AudioPreview$11;
.super Ljava/lang/Object;
.source "AudioPreview.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/music/AudioPreview;->initializeControls()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/AudioPreview;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/AudioPreview;)V
    .registers 2
    .parameter

    .prologue
    .line 1342
    iput-object p1, p0, Lcom/sec/android/app/music/AudioPreview$11;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "arg0"

    .prologue
    .line 1346
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$11;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->isShownVolumeBar:Z
    invoke-static {v0}, Lcom/sec/android/app/music/AudioPreview;->access$1500(Lcom/sec/android/app/music/AudioPreview;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1347
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$11;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v0}, Lcom/sec/android/app/music/AudioPreview;->hideVolumePanel()V

    .line 1355
    :goto_d
    return-void

    .line 1351
    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$11;->this$0:Lcom/sec/android/app/music/AudioPreview;

    const/4 v1, 0x0

    #calls: Lcom/sec/android/app/music/AudioPreview;->changeVolume(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/music/AudioPreview;->access$1600(Lcom/sec/android/app/music/AudioPreview;I)V

    goto :goto_d
.end method
