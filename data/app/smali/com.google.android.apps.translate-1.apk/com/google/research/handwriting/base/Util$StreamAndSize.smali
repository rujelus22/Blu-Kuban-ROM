.class public Lcom/google/research/handwriting/base/Util$StreamAndSize;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/research/handwriting/base/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StreamAndSize"
.end annotation


# instance fields
.field public final is:Ljava/io/InputStream;

.field public final size:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;J)V
    .registers 4
    .parameter "is"
    .parameter "size"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/google/research/handwriting/base/Util$StreamAndSize;->is:Ljava/io/InputStream;

    .line 30
    iput-wide p2, p0, Lcom/google/research/handwriting/base/Util$StreamAndSize;->size:J

    .line 31
    return-void
.end method
