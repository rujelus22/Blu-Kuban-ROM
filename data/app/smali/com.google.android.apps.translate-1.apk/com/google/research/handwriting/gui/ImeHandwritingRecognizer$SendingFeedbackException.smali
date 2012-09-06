.class Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$SendingFeedbackException;
.super Ljava/lang/Exception;
.source "ImeHandwritingRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SendingFeedbackException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x53ae1d21ecbce823L


# instance fields
.field final e:Ljava/lang/Exception;

.field final synthetic this$0:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;


# direct methods
.method public constructor <init>(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;Ljava/lang/Exception;)V
    .registers 3
    .parameter
    .parameter "e"

    .prologue
    .line 479
    iput-object p1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$SendingFeedbackException;->this$0:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 480
    iput-object p2, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$SendingFeedbackException;->e:Ljava/lang/Exception;

    .line 481
    return-void
.end method
