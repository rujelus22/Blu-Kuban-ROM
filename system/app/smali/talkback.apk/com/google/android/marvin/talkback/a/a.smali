.class Lcom/google/android/marvin/talkback/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/marvin/talkback/a/d;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/CharSequence;
    .registers 6

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    :cond_a
    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v0, ""

    goto :goto_a
.end method

.method public a(Landroid/content/Context;Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .registers 4

    const/4 v0, 0x1

    return v0
.end method
