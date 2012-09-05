.class public interface abstract Lcom/vlingo/client/core/recognizer/RecognizerListener;
.super Ljava/lang/Object;
.source "RecognizerListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/core/recognizer/RecognizerListener$RecordingProgressInfo;
    }
.end annotation


# static fields
.field public static final REC_STATE_ABORTED:I = -0x2

.field public static final REC_STATE_CONNECTING:I = 0x6

.field public static final REC_STATE_CONNECT_FAILURE:I = -0x3

.field public static final REC_STATE_IDLE:I = 0xc

.field public static final REC_STATE_RECEIVING:I = 0x8

.field public static final REC_STATE_RECORDED:I = 0x5

.field public static final REC_STATE_RECORDED_MAX:I = 0xa

.field public static final REC_STATE_RECORDER_ERROR:I = -0x5

.field public static final REC_STATE_RECORDER_STARTED:I = 0x1

.field public static final REC_STATE_RECORDER_STOPPED:I = 0x4

.field public static final REC_STATE_RECORDING:I = 0x2

.field public static final REC_STATE_RECORDING_PROGRESS:I = 0x3

.field public static final REC_STATE_RESULT:I = 0x9

.field public static final REC_STATE_SENDING:I = 0x7

.field public static final REC_STATE_TIMEOUT:I = -0x4

.field public static final REC_STATE_TOO_LONG:I = -0x7

.field public static final REC_STATE_TOO_SHORT:I = -0x6

.field public static final REC_STATE_UNINITIALIZED:I = -0x1


# virtual methods
.method public abstract notifyRecognitionState(ILjava/lang/Object;)V
.end method
