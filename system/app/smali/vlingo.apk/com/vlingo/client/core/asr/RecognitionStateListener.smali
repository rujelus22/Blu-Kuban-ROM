.class public interface abstract Lcom/vlingo/client/core/asr/RecognitionStateListener;
.super Ljava/lang/Object;
.source "RecognitionStateListener.java"


# static fields
.field public static final ERROR:I = 0x4

.field public static final INFO:I = 0x5

.field public static final POPUP:I = 0x2

.field public static final REC_STATE_ABORTED:I = 0x69

.field public static final REC_STATE_CONNECTING:I = 0x66

.field public static final REC_STATE_FAIL_CONNECT:I = 0x6a

.field public static final REC_STATE_FAIL_OPEN_RECORDER:I = 0x6c

.field public static final REC_STATE_LISTENING:I = 0x65

.field public static final REC_STATE_NO_RESULTS:I = 0x6f

.field public static final REC_STATE_OTHER:I = 0xc8

.field public static final REC_STATE_RECORDED:I = 0x67

.field public static final REC_STATE_RECORD_STARTED:I = 0x64

.field public static final REC_STATE_RESULT:I = 0x70

.field public static final REC_STATE_TIMEOUT:I = 0x6b

.field public static final REC_STATE_TOO_LONG:I = 0x6e

.field public static final REC_STATE_TOO_SHORT:I = 0x6d

.field public static final REC_STATE_WORKING:I = 0x68

.field public static final WARNING:I = 0x3


# virtual methods
.method public abstract onRecognitionEvent(Lcom/vlingo/client/core/asr/RecognitionManager;IILjava/lang/String;Ljava/lang/String;ZZ)V
.end method

.method public abstract onRecognitionResults(Lcom/vlingo/client/core/asr/RecognitionManager;Lcom/vlingo/client/core/recognizer/results/TaggedResults;)Z
.end method
