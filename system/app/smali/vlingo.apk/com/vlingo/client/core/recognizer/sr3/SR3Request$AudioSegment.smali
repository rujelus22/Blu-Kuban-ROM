.class Lcom/vlingo/client/core/recognizer/sr3/SR3Request$AudioSegment;
.super Ljava/lang/Object;
.source "SR3Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/core/recognizer/sr3/SR3Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AudioSegment"
.end annotation


# instance fields
.field audio:[B

.field length:I

.field offset:I


# direct methods
.method constructor <init>([BII)V
    .registers 4
    .parameter "audio"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 608
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 609
    iput-object p1, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request$AudioSegment;->audio:[B

    .line 610
    iput p2, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request$AudioSegment;->offset:I

    .line 611
    iput p3, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request$AudioSegment;->length:I

    .line 612
    return-void
.end method
