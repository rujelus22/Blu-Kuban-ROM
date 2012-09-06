.class Lcom/google/android/apps/unveil/textinput/TextInput$RecentFrame;
.super Lcom/google/android/apps/unveil/nonstop/FrameProcessor;
.source "TextInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/textinput/TextInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecentFrame"
.end annotation


# instance fields
.field private frame:Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;

.field final synthetic this$0:Lcom/google/android/apps/unveil/textinput/TextInput;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/unveil/textinput/TextInput;)V
    .registers 2
    .parameter

    .prologue
    .line 907
    iput-object p1, p0, Lcom/google/android/apps/unveil/textinput/TextInput$RecentFrame;->this$0:Lcom/google/android/apps/unveil/textinput/TextInput;

    invoke-direct {p0}, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/unveil/textinput/TextInput;Lcom/google/android/apps/unveil/textinput/TextInput$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 907
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/textinput/TextInput$RecentFrame;-><init>(Lcom/google/android/apps/unveil/textinput/TextInput;)V

    return-void
.end method


# virtual methods
.method public finalize()V
    .registers 2

    .prologue
    .line 936
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput$RecentFrame;->frame:Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;

    if-eqz v0, :cond_c

    .line 937
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput$RecentFrame;->frame:Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->removeReference()V

    .line 938
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput$RecentFrame;->frame:Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;

    .line 940
    :cond_c
    return-void
.end method

.method public get()Lcom/google/android/apps/unveil/env/Picture;
    .registers 9

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 923
    iget-object v2, p0, Lcom/google/android/apps/unveil/textinput/TextInput$RecentFrame;->frame:Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;

    if-nez v2, :cond_8

    move-object v0, v1

    .line 931
    :goto_7
    return-object v0

    .line 926
    :cond_8
    invoke-static {}, Lcom/google/android/apps/unveil/textinput/TextInput;->access$1000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v2

    const-string v3, "get recent frame: %dx%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/apps/unveil/textinput/TextInput$RecentFrame;->frame:Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;

    invoke-virtual {v5}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/android/apps/unveil/textinput/TextInput$RecentFrame;->frame:Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;

    invoke-virtual {v6}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 927
    iget-object v2, p0, Lcom/google/android/apps/unveil/textinput/TextInput$RecentFrame;->frame:Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;

    invoke-virtual {v2}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getRawData()[B

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/unveil/textinput/TextInput$RecentFrame;->frame:Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;

    invoke-virtual {v3}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/apps/unveil/textinput/TextInput$RecentFrame;->frame:Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;

    invoke-virtual {v4}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getHeight()I

    move-result v4

    invoke-static {v2, v3, v4, v7}, Lcom/google/android/apps/unveil/env/PictureFactory;->createBitmap([BIII)Lcom/google/android/apps/unveil/env/Picture;

    move-result-object v0

    .line 929
    .local v0, picture:Lcom/google/android/apps/unveil/env/Picture;
    iget-object v2, p0, Lcom/google/android/apps/unveil/textinput/TextInput$RecentFrame;->frame:Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;

    invoke-virtual {v2}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->removeReference()V

    .line 930
    iput-object v1, p0, Lcom/google/android/apps/unveil/textinput/TextInput$RecentFrame;->frame:Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;

    goto :goto_7
.end method

.method protected onDrawDebug(Landroid/graphics/Canvas;)V
    .registers 6
    .parameter "canvas"

    .prologue
    .line 944
    iget-object v1, p0, Lcom/google/android/apps/unveil/textinput/TextInput$RecentFrame;->frame:Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;

    if-eqz v1, :cond_1e

    .line 945
    new-instance v1, Lcom/google/android/apps/unveil/protocol/nonstop/FrameEncoder;

    invoke-direct {v1}, Lcom/google/android/apps/unveil/protocol/nonstop/FrameEncoder;-><init>()V

    iget-object v2, p0, Lcom/google/android/apps/unveil/textinput/TextInput$RecentFrame;->frame:Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/unveil/protocol/nonstop/FrameEncoder;->encode(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;)Lcom/google/android/apps/unveil/protocol/nonstop/FrameEncoder$EncodedFrame;

    move-result-object v0

    .line 946
    .local v0, encodedFrame:Lcom/google/android/apps/unveil/protocol/nonstop/FrameEncoder$EncodedFrame;
    new-instance v1, Lcom/google/android/apps/unveil/protocol/nonstop/TimestampedFrameDebugDrawer;

    iget-object v2, p0, Lcom/google/android/apps/unveil/textinput/TextInput$RecentFrame;->frame:Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;

    iget-object v3, v0, Lcom/google/android/apps/unveil/protocol/nonstop/FrameEncoder$EncodedFrame;->jpegData:[B

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/unveil/protocol/nonstop/TimestampedFrameDebugDrawer;-><init>(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;[B)V

    const/4 v2, 0x0

    const/high16 v3, 0x42c8

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/apps/unveil/protocol/nonstop/TimestampedFrameDebugDrawer;->draw(Landroid/graphics/Canvas;IF)V

    .line 948
    .end local v0           #encodedFrame:Lcom/google/android/apps/unveil/protocol/nonstop/FrameEncoder$EncodedFrame;
    :cond_1e
    return-void
.end method

.method protected onProcessFrame(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;)V
    .registers 3
    .parameter "newFrame"

    .prologue
    .line 912
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput$RecentFrame;->frame:Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;

    if-eqz v0, :cond_9

    .line 913
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput$RecentFrame;->frame:Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->removeReference()V

    .line 915
    :cond_9
    iput-object p1, p0, Lcom/google/android/apps/unveil/textinput/TextInput$RecentFrame;->frame:Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;

    .line 916
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput$RecentFrame;->frame:Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->addReference()V

    .line 917
    return-void
.end method
