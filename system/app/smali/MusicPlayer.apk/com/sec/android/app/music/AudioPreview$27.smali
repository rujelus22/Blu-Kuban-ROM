.class Lcom/sec/android/app/music/AudioPreview$27;
.super Ljava/lang/Object;
.source "AudioPreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/AudioPreview;
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
    .line 4228
    iput-object p1, p0, Lcom/sec/android/app/music/AudioPreview$27;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 4233
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$27;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$27;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/AudioPreview;->showLowBatteryMsg(Landroid/app/Activity;)V

    .line 4234
    return-void
.end method
