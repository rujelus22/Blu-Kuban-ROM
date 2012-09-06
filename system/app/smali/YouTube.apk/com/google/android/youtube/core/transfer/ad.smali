.class final Lcom/google/android/youtube/core/transfer/ad;
.super Lorg/apache/http/entity/InputStreamEntity;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/transfer/ab;

.field private final b:J


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/transfer/ab;Ljava/io/InputStream;JJ)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 522
    iput-object p1, p0, Lcom/google/android/youtube/core/transfer/ad;->a:Lcom/google/android/youtube/core/transfer/ab;

    .line 523
    invoke-direct {p0, p2, p3, p4}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 524
    iput-wide p5, p0, Lcom/google/android/youtube/core/transfer/ad;->b:J

    .line 525
    return-void
.end method


# virtual methods
.method public final writeTo(Ljava/io/OutputStream;)V
    .registers 6
    .parameter

    .prologue
    .line 529
    new-instance v0, Lcom/google/android/youtube/core/transfer/ae;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/ad;->a:Lcom/google/android/youtube/core/transfer/ab;

    iget-wide v2, p0, Lcom/google/android/youtube/core/transfer/ad;->b:J

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/google/android/youtube/core/transfer/ae;-><init>(Lcom/google/android/youtube/core/transfer/ab;Ljava/io/OutputStream;J)V

    invoke-super {p0, v0}, Lorg/apache/http/entity/InputStreamEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 530
    return-void
.end method
