.class Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$InvalidResponseFromServerException;
.super Ljava/lang/Exception;
.source "CloudRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InvalidResponseFromServerException"
.end annotation


# instance fields
.field final errorMessage:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;


# direct methods
.method constructor <init>(Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "e"

    .prologue
    .line 534
    iput-object p1, p0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$InvalidResponseFromServerException;->this$0:Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 535
    iput-object p2, p0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$InvalidResponseFromServerException;->errorMessage:Ljava/lang/String;

    .line 536
    return-void
.end method
