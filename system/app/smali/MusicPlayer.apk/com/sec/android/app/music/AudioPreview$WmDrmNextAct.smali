.class Lcom/sec/android/app/music/AudioPreview$WmDrmNextAct;
.super Ljava/lang/Object;
.source "AudioPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/AudioPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WmDrmNextAct"
.end annotation


# instance fields
.field public mCompleteAction:I

.field public mPlay:Z

.field final synthetic this$0:Lcom/sec/android/app/music/AudioPreview;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/music/AudioPreview;)V
    .registers 3
    .parameter

    .prologue
    .line 6070
    iput-object p1, p0, Lcom/sec/android/app/music/AudioPreview$WmDrmNextAct;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6071
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/music/AudioPreview$WmDrmNextAct;->mCompleteAction:I

    .line 6073
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/music/AudioPreview$WmDrmNextAct;->mPlay:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/music/AudioPreview;Lcom/sec/android/app/music/AudioPreview$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6070
    invoke-direct {p0, p1}, Lcom/sec/android/app/music/AudioPreview$WmDrmNextAct;-><init>(Lcom/sec/android/app/music/AudioPreview;)V

    return-void
.end method
