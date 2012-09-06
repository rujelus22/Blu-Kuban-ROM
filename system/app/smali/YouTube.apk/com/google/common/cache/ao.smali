.class final Lcom/google/common/cache/ao;
.super Lcom/google/common/cache/ad;
.source "SourceFile"


# instance fields
.field final b:I


# direct methods
.method constructor <init>(Ljava/lang/Object;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1828
    invoke-direct {p0, p1}, Lcom/google/common/cache/ad;-><init>(Ljava/lang/Object;)V

    .line 1829
    iput p2, p0, Lcom/google/common/cache/ao;->b:I

    .line 1830
    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    .prologue
    .line 1834
    iget v0, p0, Lcom/google/common/cache/ao;->b:I

    return v0
.end method
