.class final Lcom/google/common/collect/ay;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:I

.field b:I


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, -0x1

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput v0, p0, Lcom/google/common/collect/ay;->a:I

    .line 146
    iput v0, p0, Lcom/google/common/collect/ay;->b:I

    return-void
.end method
