.class final Lcom/sec/android/app/voicerecorder/widget/VRRemoteView$1;
.super Ljava/lang/Object;
.source "VRRemoteView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 333
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .prologue
    .line 335
    invoke-static {}, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->hideNotification()Z

    .line 336
    return-void
.end method
