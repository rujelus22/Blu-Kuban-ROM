.class public final Lcom/google/android/marvin/talkback/ap;
.super Lcom/google/android/marvin/utils/k;


# static fields
.field private static a:Lcom/google/android/marvin/talkback/ap;


# instance fields
.field private final b:Lcom/google/android/marvin/utils/HighlightBoundsView;

.field private final c:Lcom/google/android/marvin/utils/HighlightBoundsView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/google/android/marvin/utils/k;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/google/android/marvin/talkback/ap;->e()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x7da

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x100

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p0, v0}, Lcom/google/android/marvin/talkback/ap;->a(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0}, Lcom/google/android/marvin/talkback/ap;->f()V

    const v0, 0x7f0a0001

    invoke-virtual {p0, v0}, Lcom/google/android/marvin/talkback/ap;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/marvin/utils/HighlightBoundsView;

    iput-object v0, p0, Lcom/google/android/marvin/talkback/ap;->b:Lcom/google/android/marvin/utils/HighlightBoundsView;

    iget-object v0, p0, Lcom/google/android/marvin/talkback/ap;->b:Lcom/google/android/marvin/utils/HighlightBoundsView;

    const/16 v1, -0x100

    invoke-virtual {v0, v1}, Lcom/google/android/marvin/utils/HighlightBoundsView;->a(I)V

    const/high16 v0, 0x7f0a

    invoke-virtual {p0, v0}, Lcom/google/android/marvin/talkback/ap;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/marvin/utils/HighlightBoundsView;

    iput-object v0, p0, Lcom/google/android/marvin/talkback/ap;->c:Lcom/google/android/marvin/utils/HighlightBoundsView;

    iget-object v0, p0, Lcom/google/android/marvin/talkback/ap;->c:Lcom/google/android/marvin/utils/HighlightBoundsView;

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/android/marvin/utils/HighlightBoundsView;->a(I)V

    return-void
.end method

.method public static a(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3

    sget-object v0, Lcom/google/android/marvin/talkback/ap;->a:Lcom/google/android/marvin/talkback/ap;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    sget-object v0, Lcom/google/android/marvin/talkback/ap;->a:Lcom/google/android/marvin/talkback/ap;

    iget-object v0, v0, Lcom/google/android/marvin/talkback/ap;->c:Lcom/google/android/marvin/utils/HighlightBoundsView;

    invoke-virtual {v0}, Lcom/google/android/marvin/utils/HighlightBoundsView;->a()V

    sget-object v0, Lcom/google/android/marvin/talkback/ap;->a:Lcom/google/android/marvin/talkback/ap;

    iget-object v0, v0, Lcom/google/android/marvin/talkback/ap;->c:Lcom/google/android/marvin/utils/HighlightBoundsView;

    invoke-virtual {v0, p0}, Lcom/google/android/marvin/utils/HighlightBoundsView;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    sget-object v0, Lcom/google/android/marvin/talkback/ap;->a:Lcom/google/android/marvin/talkback/ap;

    iget-object v0, v0, Lcom/google/android/marvin/talkback/ap;->c:Lcom/google/android/marvin/utils/HighlightBoundsView;

    invoke-virtual {v0}, Lcom/google/android/marvin/utils/HighlightBoundsView;->postInvalidate()V

    sget-object v0, Lcom/google/android/marvin/talkback/ap;->a:Lcom/google/android/marvin/talkback/ap;

    iget-object v0, v0, Lcom/google/android/marvin/talkback/ap;->b:Lcom/google/android/marvin/utils/HighlightBoundsView;

    invoke-virtual {v0}, Lcom/google/android/marvin/utils/HighlightBoundsView;->a()V

    sget-object v0, Lcom/google/android/marvin/talkback/ap;->a:Lcom/google/android/marvin/talkback/ap;

    iget-object v0, v0, Lcom/google/android/marvin/talkback/ap;->b:Lcom/google/android/marvin/utils/HighlightBoundsView;

    invoke-virtual {v0, p1}, Lcom/google/android/marvin/utils/HighlightBoundsView;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    sget-object v0, Lcom/google/android/marvin/talkback/ap;->a:Lcom/google/android/marvin/talkback/ap;

    iget-object v0, v0, Lcom/google/android/marvin/talkback/ap;->b:Lcom/google/android/marvin/utils/HighlightBoundsView;

    invoke-virtual {v0}, Lcom/google/android/marvin/utils/HighlightBoundsView;->postInvalidate()V

    goto :goto_4
.end method


# virtual methods
.method public final b()V
    .registers 1

    sput-object p0, Lcom/google/android/marvin/talkback/ap;->a:Lcom/google/android/marvin/talkback/ap;

    return-void
.end method

.method public final d()V
    .registers 2

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/marvin/talkback/ap;->a:Lcom/google/android/marvin/talkback/ap;

    iget-object v0, p0, Lcom/google/android/marvin/talkback/ap;->c:Lcom/google/android/marvin/utils/HighlightBoundsView;

    invoke-virtual {v0}, Lcom/google/android/marvin/utils/HighlightBoundsView;->a()V

    iget-object v0, p0, Lcom/google/android/marvin/talkback/ap;->b:Lcom/google/android/marvin/utils/HighlightBoundsView;

    invoke-virtual {v0}, Lcom/google/android/marvin/utils/HighlightBoundsView;->a()V

    return-void
.end method
