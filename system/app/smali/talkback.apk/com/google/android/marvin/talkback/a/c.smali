.class public final Lcom/google/android/marvin/talkback/a/c;
.super Lcom/google/android/marvin/talkback/a/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/marvin/talkback/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/CharSequence;
    .registers 10

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0, p1, p2, p3}, Lcom/google/android/marvin/talkback/a/a;->a(Landroid/content/Context;Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f07003c

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v1, v2, v4

    invoke-static {v0, v2}, Lcom/google/android/marvin/utils/a;->a(Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_46

    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->getItemCount()I

    move-result v1

    if-lez v1, :cond_46

    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->getCurrentItemIndex()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->getItemCount()I

    move-result v2

    div-int/2addr v1, v2

    const v2, 0x7f07003d

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v1, v2, v4

    invoke-static {v0, v2}, Lcom/google/android/marvin/utils/a;->a(Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_46
    return-object v0
.end method

.method public final a(Landroid/content/Context;Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .registers 4

    const-class v0, Landroid/widget/SeekBar;

    invoke-static {p1, p2, v0}, Lcom/google/android/marvin/talkback/p;->a(Landroid/content/Context;Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method
