.class public Lcom/google/research/handwriting/base/StrokeList$Cut;
.super Ljava/lang/Object;
.source "StrokeList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/research/handwriting/base/StrokeList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Cut"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/research/handwriting/base/StrokeList$Cut$CutType;
    }
.end annotation


# instance fields
.field public final cost:F

.field public final point:I

.field public final stroke:I

.field public final type:Lcom/google/research/handwriting/base/StrokeList$Cut$CutType;


# direct methods
.method public constructor <init>(II)V
    .registers 4
    .parameter "stroke"
    .parameter "point"

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput p1, p0, Lcom/google/research/handwriting/base/StrokeList$Cut;->stroke:I

    .line 114
    iput p2, p0, Lcom/google/research/handwriting/base/StrokeList$Cut;->point:I

    .line 115
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/research/handwriting/base/StrokeList$Cut;->cost:F

    .line 116
    sget-object v0, Lcom/google/research/handwriting/base/StrokeList$Cut$CutType;->STROKES:Lcom/google/research/handwriting/base/StrokeList$Cut$CutType;

    iput-object v0, p0, Lcom/google/research/handwriting/base/StrokeList$Cut;->type:Lcom/google/research/handwriting/base/StrokeList$Cut$CutType;

    .line 117
    return-void
.end method

.method public constructor <init>(IIFLcom/google/research/handwriting/base/StrokeList$Cut$CutType;)V
    .registers 5
    .parameter "stroke"
    .parameter "point"
    .parameter "cost"
    .parameter "type"

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput p1, p0, Lcom/google/research/handwriting/base/StrokeList$Cut;->stroke:I

    .line 121
    iput p2, p0, Lcom/google/research/handwriting/base/StrokeList$Cut;->point:I

    .line 122
    iput p3, p0, Lcom/google/research/handwriting/base/StrokeList$Cut;->cost:F

    .line 123
    iput-object p4, p0, Lcom/google/research/handwriting/base/StrokeList$Cut;->type:Lcom/google/research/handwriting/base/StrokeList$Cut$CutType;

    .line 124
    return-void
.end method
