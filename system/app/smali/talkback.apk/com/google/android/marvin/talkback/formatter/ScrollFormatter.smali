.class public Lcom/google/android/marvin/talkback/formatter/ScrollFormatter;
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
    .registers 12

    const/4 v7, 0x1

    invoke-static {p1}, Lcom/google/android/marvin/talkback/ae;->a(Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    invoke-virtual {p3}, Lcom/google/android/marvin/talkback/ac;->b()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_12
    return v7

    :cond_13
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getItemCount()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getFromIndex()I

    move-result v1

    if-ltz v1, :cond_57

    if-lez v0, :cond_57

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    :goto_23
    const/high16 v1, 0x42c8

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v0, v1

    const-wide/high16 v1, 0x4000

    float-to-double v3, v0

    const-wide/high16 v5, 0x4049

    div-double/2addr v3, v5

    const-wide/high16 v5, 0x3ff0

    sub-double/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p3}, Lcom/google/android/marvin/talkback/ac;->c()Ljava/util/List;

    move-result-object v1

    const v2, 0x7f050007

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3}, Lcom/google/android/marvin/talkback/ac;->g()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "earcon_rate"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_12

    :cond_57
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getScrollY()I

    move-result v1

    invoke-static {p1}, Lcom/google/android/marvin/talkback/b/b;->a(Landroid/view/accessibility/AccessibilityEvent;)I

    move-result v2

    if-ltz v1, :cond_67

    if-lez v2, :cond_67

    int-to-float v0, v1

    int-to-float v1, v2

    div-float/2addr v0, v1

    goto :goto_23

    :cond_67
    if-ltz v1, :cond_72

    if-lez v0, :cond_72

    if-gt v1, v0, :cond_72

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    goto :goto_23

    :cond_72
    const/high16 v0, 0x3f00

    goto :goto_23
.end method
