.class public Lcom/sdgtl/mediahub/spr/customview/CoverFlowGLNative;
.super Ljava/lang/Object;


# static fields
.field private static sNextInstanceId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "mediahubnative"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput v0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGLNative;->sNextInstanceId:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synchronized native declared-synchronized create(II)V
.end method

.method public static synchronized native declared-synchronized destroy(I)V
.end method

.method public static declared-synchronized init(I)I
    .registers 4

    const-class v1, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGLNative;

    monitor-enter v1

    :try_start_3
    sget v0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGLNative;->sNextInstanceId:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGLNative;->sNextInstanceId:I

    invoke-static {v0, p0}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGLNative;->create(II)V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    monitor-exit v1

    return v0

    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static synchronized native declared-synchronized render(I)V
.end method

.method public static synchronized native declared-synchronized setCount(II)V
.end method

.method public static synchronized native declared-synchronized setCoverTextures(IIII)I
.end method

.method public static synchronized native declared-synchronized setDimensions(IFFFFFFF)I
.end method

.method public static synchronized native declared-synchronized setExpand(IIF)I
.end method

.method public static synchronized native declared-synchronized setProgress(IF)I
.end method

.method public static synchronized native declared-synchronized setProjectionMatrix(I[F)V
.end method

.method public static synchronized native declared-synchronized setResourceTextures(IIIIIII)V
.end method
