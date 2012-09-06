.class public Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognizerUISettings;
.super Ljava/lang/Object;
.source "ImeHandwritingRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecognizerUISettings"
.end annotation


# instance fields
.field public inputType:I

.field public useBackGesture:Z

.field public useSpaceGesture:Z

.field public writingGuideHeight:I

.field public writingGuideWidth:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-boolean v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognizerUISettings;->useBackGesture:Z

    .line 122
    iput-boolean v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognizerUISettings;->useSpaceGesture:Z

    return-void
.end method
