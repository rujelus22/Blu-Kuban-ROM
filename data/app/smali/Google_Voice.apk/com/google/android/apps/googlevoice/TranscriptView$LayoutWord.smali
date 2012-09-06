.class Lcom/google/android/apps/googlevoice/TranscriptView$LayoutWord;
.super Ljava/lang/Object;
.source "TranscriptView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/TranscriptView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LayoutWord"
.end annotation


# instance fields
.field public centerX:I

.field public centerY:I

.field public confidenceColor:I

.field public left:F

.field public top:F

.field public word:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;FFFFI)V
    .registers 9
    .parameter "word"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "confidenceColor"

    .prologue
    const/high16 v1, 0x4000

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/TranscriptView$LayoutWord;->word:Ljava/lang/String;

    .line 276
    iput p2, p0, Lcom/google/android/apps/googlevoice/TranscriptView$LayoutWord;->left:F

    .line 277
    iput p3, p0, Lcom/google/android/apps/googlevoice/TranscriptView$LayoutWord;->top:F

    .line 278
    iput p6, p0, Lcom/google/android/apps/googlevoice/TranscriptView$LayoutWord;->confidenceColor:I

    .line 280
    div-float v0, p4, v1

    add-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/apps/googlevoice/TranscriptView$LayoutWord;->centerX:I

    .line 281
    div-float v0, p5, v1

    add-float/2addr v0, p3

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/apps/googlevoice/TranscriptView$LayoutWord;->centerY:I

    .line 282
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 285
    const-string v0, "\'%s\'@(%.2f,%.2f)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/TranscriptView$LayoutWord;->word:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/google/android/apps/googlevoice/TranscriptView$LayoutWord;->left:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/google/android/apps/googlevoice/TranscriptView$LayoutWord;->top:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
