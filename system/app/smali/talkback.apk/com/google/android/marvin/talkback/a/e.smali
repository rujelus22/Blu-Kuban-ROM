.class final Lcom/google/android/marvin/talkback/a/e;
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
.method public final a(Landroid/content/Context;Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/CharSequence;
    .registers 8

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1e

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isPassword()Z

    move-result v1

    if-nez v1, :cond_1e

    :cond_10
    :goto_10
    const v1, 0x7f070033

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1e
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isPassword()Z

    move-result v0

    if-eqz v0, :cond_36

    const v0, 0x7f07004b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_36
    const-string v0, ""

    goto :goto_10
.end method

.method public final a(Landroid/content/Context;Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .registers 4

    const-class v0, Landroid/widget/EditText;

    invoke-static {p1, p2, v0}, Lcom/google/android/marvin/talkback/p;->a(Landroid/content/Context;Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method
