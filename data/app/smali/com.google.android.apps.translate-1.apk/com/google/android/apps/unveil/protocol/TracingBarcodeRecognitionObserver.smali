.class public Lcom/google/android/apps/unveil/protocol/TracingBarcodeRecognitionObserver;
.super Ljava/lang/Object;
.source "TracingBarcodeRecognitionObserver.java"

# interfaces
.implements Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/protocol/TracingBarcodeRecognitionObserver$1;
    }
.end annotation


# static fields
.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# instance fields
.field private final traceTracker:Lcom/google/android/apps/unveil/protocol/TraceTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/protocol/TracingBarcodeRecognitionObserver;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/unveil/protocol/TraceTracker;)V
    .registers 2
    .parameter "traceTracker"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/google/android/apps/unveil/protocol/TracingBarcodeRecognitionObserver;->traceTracker:Lcom/google/android/apps/unveil/protocol/TraceTracker;

    .line 17
    return-void
.end method

.method private static spanFor(Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;)Lcom/google/goggles/TracingProtos$SpanVariable$Type;
    .registers 3
    .parameter "stage"

    .prologue
    .line 20
    sget-object v0, Lcom/google/android/apps/unveil/protocol/TracingBarcodeRecognitionObserver$1;->$SwitchMap$com$google$android$apps$unveil$barcode$BarcodeRecognizer$Stage:[I

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1a

    .line 28
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 22
    :pswitch_11
    sget-object v0, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->BARCODE_RECOGNIZER_LANDSCAPE_AND_QR:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    .line 26
    :goto_13
    return-object v0

    .line 24
    :pswitch_14
    sget-object v0, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->BARCODE_RECOGNIZER_LOAD:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    goto :goto_13

    .line 26
    :pswitch_17
    sget-object v0, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->BARCODE_RECOGNIZER_PORTRAIT:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    goto :goto_13

    .line 20
    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_11
        :pswitch_14
        :pswitch_17
    .end packed-switch
.end method


# virtual methods
.method public onDoneAnalyzing(JI)V
    .registers 9
    .parameter "durationMs"
    .parameter "frameNum"

    .prologue
    .line 44
    sget-object v0, Lcom/google/android/apps/unveil/protocol/TracingBarcodeRecognitionObserver;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "Adding BARCODE_TOTAL_LATENCY of length %d to frame %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/TracingBarcodeRecognitionObserver;->traceTracker:Lcom/google/android/apps/unveil/protocol/TraceTracker;

    sget-object v1, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->BARCODE_TOTAL_LATENCY:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    long-to-int v2, p1

    invoke-virtual {v0, v1, v2, p3}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->addDurationInterval(Lcom/google/goggles/TracingProtos$SpanVariable$Type;II)V

    .line 47
    return-void
.end method

.method public onEndStage(Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;I)V
    .registers 5
    .parameter "stage"
    .parameter "frameNum"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/TracingBarcodeRecognitionObserver;->traceTracker:Lcom/google/android/apps/unveil/protocol/TraceTracker;

    invoke-static {p1}, Lcom/google/android/apps/unveil/protocol/TracingBarcodeRecognitionObserver;->spanFor(Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;)Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->endInterval(Lcom/google/goggles/TracingProtos$SpanVariable$Type;I)V

    .line 40
    return-void
.end method

.method public onStartStage(Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;I)V
    .registers 5
    .parameter "stage"
    .parameter "frameNum"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/TracingBarcodeRecognitionObserver;->traceTracker:Lcom/google/android/apps/unveil/protocol/TraceTracker;

    invoke-virtual {v0, p2}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->beginTraceAction(I)V

    .line 34
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/TracingBarcodeRecognitionObserver;->traceTracker:Lcom/google/android/apps/unveil/protocol/TraceTracker;

    invoke-static {p1}, Lcom/google/android/apps/unveil/protocol/TracingBarcodeRecognitionObserver;->spanFor(Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;)Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->beginInterval(Lcom/google/goggles/TracingProtos$SpanVariable$Type;I)V

    .line 35
    return-void
.end method
