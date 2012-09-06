.class public LDe;
.super Ljava/lang/Object;
.source "TextView.java"


# instance fields
.field public a:I

.field public a:Landroid/graphics/Rect;

.field public a:Landroid/graphics/RectF;

.field public final a:Landroid/view/inputmethod/ExtractedText;

.field public a:Landroid/view/inputmethod/ExtractedTextRequest;

.field final synthetic a:Lcom/google/android/apps/docs/editors/text/TextView;

.field public a:Z

.field public a:[F

.field public b:I

.field public b:Z

.field public c:I

.field public c:Z

.field public d:I


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/editors/text/TextView;)V
    .registers 3
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, LDe;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, LDe;->a:Landroid/graphics/Rect;

    .line 229
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, LDe;->a:Landroid/graphics/RectF;

    .line 230
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, LDe;->a:[F

    .line 232
    new-instance v0, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v0}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    iput-object v0, p0, LDe;->a:Landroid/view/inputmethod/ExtractedText;

    return-void
.end method
