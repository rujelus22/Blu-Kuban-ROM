.class public Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionRequest;
.super Ljava/lang/Object;
.source "ImeHandwritingRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecognitionRequest"
.end annotation


# instance fields
.field public deviceInfo:Landroid/os/Bundle;

.field public requestId:I

.field public selectedWord:Ljava/lang/String;

.field public strokes:Lcom/google/research/handwriting/base/StrokeList;

.field public strokesHash:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
