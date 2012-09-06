.class public Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;
.super Lcom/google/research/handwriting/base/HandwritingRecognizer$HandwritingRecognizerSettings;
.source "CloudRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CloudRecognizerSettings"
.end annotation


# instance fields
.field public compressRequests:Z

.field public recoPath:Ljava/lang/String;

.field public sendFeedbackImmediately:Z

.field public server:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 44
    invoke-direct {p0}, Lcom/google/research/handwriting/base/HandwritingRecognizer$HandwritingRecognizerSettings;-><init>()V

    .line 45
    const-string v0, "https://inputtools.google.com"

    iput-object v0, p0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;->server:Ljava/lang/String;

    .line 46
    const-string v0, "/request"

    iput-object v0, p0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;->recoPath:Ljava/lang/String;

    .line 47
    iput-boolean v1, p0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;->compressRequests:Z

    .line 48
    iput-boolean v1, p0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;->sendFeedbackImmediately:Z

    return-void
.end method
