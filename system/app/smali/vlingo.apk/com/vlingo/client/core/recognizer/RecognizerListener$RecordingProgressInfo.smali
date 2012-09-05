.class public Lcom/vlingo/client/core/recognizer/RecognizerListener$RecordingProgressInfo;
.super Ljava/lang/Object;
.source "RecognizerListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/core/recognizer/RecognizerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecordingProgressInfo"
.end annotation


# instance fields
.field public lastEnergy:I

.field public lastSpeechSample:I

.field public numSamples:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
