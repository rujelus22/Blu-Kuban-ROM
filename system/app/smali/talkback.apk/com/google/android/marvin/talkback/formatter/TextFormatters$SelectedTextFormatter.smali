.class public final Lcom/google/android/marvin/talkback/formatter/TextFormatters$SelectedTextFormatter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$AccessibilityEventFormatter;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/accessibility/AccessibilityEvent;Landroid/content/Context;Lcom/google/android/marvin/talkback/ac;)Z
    .registers 11

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/google/android/marvin/talkback/formatter/TextFormatters;->a(Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p3}, Lcom/google/android/marvin/talkback/ac;->b()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->isPassword()Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getFromIndex()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getToIndex()I

    move-result v4

    if-gt v4, v0, :cond_1c

    move v0, v1

    :goto_1b
    return v0

    :cond_1c
    const v5, 0x7f070048

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v2

    invoke-virtual {p2, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Lcom/google/android/marvin/utils/a;->a(Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v0, v2

    goto :goto_1b

    :cond_3b
    if-nez v0, :cond_3f

    move v0, v1

    goto :goto_1b

    :cond_3f
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getFromIndex()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getToIndex()I

    move-result v5

    invoke-static {v0, v4, v5}, Lcom/google/android/marvin/talkback/formatter/TextFormatters;->a(Ljava/lang/CharSequence;II)Z

    move-result v6

    if-nez v6, :cond_4f

    move v0, v1

    goto :goto_1b

    :cond_4f
    if-ne v4, v5, :cond_6a

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v5, v6, :cond_6a

    add-int/lit8 v5, v5, 0x1

    invoke-interface {v0, v4, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_5d
    invoke-static {p2, v0}, Lcom/google/android/marvin/talkback/g;->a(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Lcom/google/android/marvin/utils/a;->a(Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v0, v2

    goto :goto_1b

    :cond_6a
    invoke-interface {v0, v4, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_5d
.end method
