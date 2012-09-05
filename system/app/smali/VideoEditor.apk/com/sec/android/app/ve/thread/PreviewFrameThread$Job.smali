.class Lcom/sec/android/app/ve/thread/PreviewFrameThread$Job;
.super Ljava/lang/Object;
.source "PreviewFrameThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/thread/PreviewFrameThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Job"
.end annotation


# instance fields
.field private firstElement:Lcom/samsung/app/video/editor/external/Element;

.field private height:I

.field private secondElement:Lcom/samsung/app/video/editor/external/Element;

.field final synthetic this$0:Lcom/sec/android/app/ve/thread/PreviewFrameThread;

.field private time:I

.field private width:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/ve/thread/PreviewFrameThread;Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;JII)V
    .registers 9
    .parameter
    .parameter "firstElement"
    .parameter "secondElement"
    .parameter "time"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 132
    iput-object p1, p0, Lcom/sec/android/app/ve/thread/PreviewFrameThread$Job;->this$0:Lcom/sec/android/app/ve/thread/PreviewFrameThread;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p2, p0, Lcom/sec/android/app/ve/thread/PreviewFrameThread$Job;->firstElement:Lcom/samsung/app/video/editor/external/Element;

    .line 128
    iput-object p3, p0, Lcom/sec/android/app/ve/thread/PreviewFrameThread$Job;->secondElement:Lcom/samsung/app/video/editor/external/Element;

    .line 129
    iput p6, p0, Lcom/sec/android/app/ve/thread/PreviewFrameThread$Job;->width:I

    .line 130
    iput p7, p0, Lcom/sec/android/app/ve/thread/PreviewFrameThread$Job;->height:I

    .line 131
    long-to-int v0, p4

    iput v0, p0, Lcom/sec/android/app/ve/thread/PreviewFrameThread$Job;->time:I

    return-void
.end method

.method static synthetic access$0(Lcom/sec/android/app/ve/thread/PreviewFrameThread$Job;)Lcom/samsung/app/video/editor/external/Element;
    .registers 2
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcom/sec/android/app/ve/thread/PreviewFrameThread$Job;->firstElement:Lcom/samsung/app/video/editor/external/Element;

    return-object v0
.end method

.method static synthetic access$1(Lcom/sec/android/app/ve/thread/PreviewFrameThread$Job;)I
    .registers 2
    .parameter

    .prologue
    .line 123
    iget v0, p0, Lcom/sec/android/app/ve/thread/PreviewFrameThread$Job;->time:I

    return v0
.end method

.method static synthetic access$2(Lcom/sec/android/app/ve/thread/PreviewFrameThread$Job;)Lcom/samsung/app/video/editor/external/Element;
    .registers 2
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sec/android/app/ve/thread/PreviewFrameThread$Job;->secondElement:Lcom/samsung/app/video/editor/external/Element;

    return-object v0
.end method

.method static synthetic access$3(Lcom/sec/android/app/ve/thread/PreviewFrameThread$Job;)I
    .registers 2
    .parameter

    .prologue
    .line 121
    iget v0, p0, Lcom/sec/android/app/ve/thread/PreviewFrameThread$Job;->width:I

    return v0
.end method

.method static synthetic access$4(Lcom/sec/android/app/ve/thread/PreviewFrameThread$Job;)I
    .registers 2
    .parameter

    .prologue
    .line 122
    iget v0, p0, Lcom/sec/android/app/ve/thread/PreviewFrameThread$Job;->height:I

    return v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/android/app/ve/thread/PreviewFrameThread$Job;->firstElement:Lcom/samsung/app/video/editor/external/Element;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/sec/android/app/ve/thread/PreviewFrameThread$Job;->firstElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Element;->getFilePath()Ljava/lang/String;

    move-result-object v0

    :goto_d
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "   "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/ve/thread/PreviewFrameThread$Job;->secondElement:Lcom/samsung/app/video/editor/external/Element;

    if-eqz v2, :cond_24

    iget-object v1, p0, Lcom/sec/android/app/ve/thread/PreviewFrameThread$Job;->secondElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getFilePath()Ljava/lang/String;

    move-result-object v1

    :cond_24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/ve/thread/PreviewFrameThread$Job;->time:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_39
    move-object v0, v1

    goto :goto_d
.end method
