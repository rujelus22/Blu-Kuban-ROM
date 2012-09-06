.class Lcom/google/research/handwriting/base/InkUtils$FloatStrokeIdPair;
.super Ljava/lang/Object;
.source "InkUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/research/handwriting/base/InkUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FloatStrokeIdPair"
.end annotation


# instance fields
.field public final f:F

.field public final i:I


# direct methods
.method public constructor <init>(FI)V
    .registers 3
    .parameter "f"
    .parameter "i"

    .prologue
    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    iput p1, p0, Lcom/google/research/handwriting/base/InkUtils$FloatStrokeIdPair;->f:F

    .line 222
    iput p2, p0, Lcom/google/research/handwriting/base/InkUtils$FloatStrokeIdPair;->i:I

    .line 223
    return-void
.end method
