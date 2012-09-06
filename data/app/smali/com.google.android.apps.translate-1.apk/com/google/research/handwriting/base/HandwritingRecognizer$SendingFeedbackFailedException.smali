.class public Lcom/google/research/handwriting/base/HandwritingRecognizer$SendingFeedbackFailedException;
.super Ljava/lang/Exception;
.source "HandwritingRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/research/handwriting/base/HandwritingRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SendingFeedbackFailedException"
.end annotation


# instance fields
.field public final e:Ljava/lang/Exception;

.field public final s:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3
    .parameter "s"
    .parameter "e"

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 154
    iput-object p2, p0, Lcom/google/research/handwriting/base/HandwritingRecognizer$SendingFeedbackFailedException;->e:Ljava/lang/Exception;

    .line 155
    iput-object p1, p0, Lcom/google/research/handwriting/base/HandwritingRecognizer$SendingFeedbackFailedException;->s:Ljava/lang/String;

    .line 156
    return-void
.end method
