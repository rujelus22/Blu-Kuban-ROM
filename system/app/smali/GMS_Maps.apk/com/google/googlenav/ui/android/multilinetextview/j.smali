.class Lcom/google/googlenav/ui/android/multilinetextview/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/method/TransformationMethod;


# static fields
.field static a:Lcom/google/googlenav/ui/android/multilinetextview/j;

.field private static final b:Lcom/google/common/base/G;

.field private static final c:Lcom/google/common/base/Y;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0xa

    .line 156
    invoke-static {v1}, Lcom/google/common/base/G;->a(C)Lcom/google/common/base/G;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/android/multilinetextview/j;->b:Lcom/google/common/base/G;

    .line 157
    invoke-static {v1}, Lcom/google/common/base/Y;->a(C)Lcom/google/common/base/Y;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/android/multilinetextview/j;->c:Lcom/google/common/base/Y;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/googlenav/ui/android/multilinetextview/j;
    .registers 1

    .prologue
    .line 163
    sget-object v0, Lcom/google/googlenav/ui/android/multilinetextview/j;->a:Lcom/google/googlenav/ui/android/multilinetextview/j;

    if-nez v0, :cond_b

    .line 164
    new-instance v0, Lcom/google/googlenav/ui/android/multilinetextview/j;

    invoke-direct {v0}, Lcom/google/googlenav/ui/android/multilinetextview/j;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/android/multilinetextview/j;->a:Lcom/google/googlenav/ui/android/multilinetextview/j;

    .line 166
    :cond_b
    sget-object v0, Lcom/google/googlenav/ui/android/multilinetextview/j;->a:Lcom/google/googlenav/ui/android/multilinetextview/j;

    return-object v0
.end method

.method private a(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/android/multilinetextview/MultilineTextView;)Ljava/lang/CharSequence;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 178
    sget-object v0, Lcom/google/googlenav/ui/android/multilinetextview/j;->c:Lcom/google/common/base/Y;

    invoke-virtual {v0, p1}, Lcom/google/common/base/Y;->a(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v0

    .line 179
    invoke-virtual {p0, p2}, Lcom/google/googlenav/ui/android/multilinetextview/j;->a(Lcom/google/googlenav/ui/android/multilinetextview/MultilineTextView;)Lcom/google/common/base/D;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/bT;->a(Ljava/lang/Iterable;Lcom/google/common/base/D;)Ljava/lang/Iterable;

    move-result-object v0

    .line 181
    sget-object v1, Lcom/google/googlenav/ui/android/multilinetextview/j;->b:Lcom/google/common/base/G;

    invoke-static {v0}, Lcom/google/common/collect/bT;->d(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/base/G;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/google/googlenav/ui/android/multilinetextview/MultilineTextView;)I
    .registers 3
    .parameter

    .prologue
    .line 195
    invoke-virtual {p1}, Lcom/google/googlenav/ui/android/multilinetextview/MultilineTextView;->getMaxLines()I

    move-result v0

    return v0
.end method


# virtual methods
.method protected a(Lcom/google/googlenav/ui/android/multilinetextview/MultilineTextView;)Lcom/google/common/base/D;
    .registers 5
    .parameter

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/multilinetextview/j;->b(Lcom/google/googlenav/ui/android/multilinetextview/MultilineTextView;)I

    move-result v1

    .line 187
    invoke-virtual {p1}, Lcom/google/googlenav/ui/android/multilinetextview/MultilineTextView;->a()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 188
    new-instance v0, Lcom/google/googlenav/ui/android/multilinetextview/a;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/android/multilinetextview/MultilineTextView;->b()I

    move-result v2

    invoke-direct {v0, p1, v1, v2}, Lcom/google/googlenav/ui/android/multilinetextview/a;-><init>(Landroid/widget/TextView;II)V

    .line 190
    :goto_13
    return-object v0

    :cond_14
    new-instance v0, Lcom/google/googlenav/ui/android/multilinetextview/g;

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/android/multilinetextview/g;-><init>(I)V

    goto :goto_13
.end method

.method public getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 171
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laa/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 174
    :goto_a
    return-object p1

    :cond_b
    check-cast p2, Lcom/google/googlenav/ui/android/multilinetextview/MultilineTextView;

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/android/multilinetextview/j;->a(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/android/multilinetextview/MultilineTextView;)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_a
.end method

.method public onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 200
    return-void
.end method
