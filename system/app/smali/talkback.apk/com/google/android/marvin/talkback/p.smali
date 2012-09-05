.class public final Lcom/google/android/marvin/talkback/p;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/ArrayList;Ljava/util/Comparator;Lcom/google/android/marvin/talkback/h;)I
    .registers 11

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    move v2, v0

    :goto_f
    if-lt v2, v3, :cond_21

    if-eqz p2, :cond_16

    invoke-static {v4, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_16
    invoke-interface {p1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v0

    :goto_1e
    if-lt v1, v3, :cond_3b

    return v2

    :cond_21
    invoke-virtual {p0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    if-eqz v5, :cond_32

    if-eqz p3, :cond_2f

    invoke-interface {p3, v5}, Lcom/google/android/marvin/talkback/h;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v6

    if-eqz v6, :cond_35

    :cond_2f
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_32
    :goto_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_35
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    :cond_3b
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-static {v0, p1, p2, p3}, Lcom/google/android/marvin/talkback/p;->a(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/ArrayList;Ljava/util/Comparator;Lcom/google/android/marvin/talkback/h;)I

    move-result v0

    add-int/2addr v2, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1e
.end method

.method private static a(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;)V
    .registers 3

    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    :cond_4
    return-void

    :cond_5
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParent()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    :goto_9
    if-eqz v0, :cond_4

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParent()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    goto :goto_9
.end method

.method public static a(Ljava/util/ArrayList;)V
    .registers 3

    if-nez p0, :cond_3

    :goto_2
    return-void

    :cond_3
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    goto :goto_2

    :cond_11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    goto :goto_7
.end method

.method public static varargs a([Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 4

    if-nez p0, :cond_3

    :cond_2
    return-void

    :cond_3
    array-length v1, p0

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v1, :cond_2

    aget-object v2, p0, v0

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method public static a(Landroid/content/Context;Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v1

    if-gtz v1, :cond_12

    const-class v1, Landroid/view/ViewGroup;

    invoke-static {p0, p1, v1}, Lcom/google/android/marvin/talkback/p;->a(Landroid/content/Context;Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_12
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static a(Landroid/content/Context;Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/Class;)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    invoke-static {}, Lcom/google/android/marvin/utils/i;->a()Lcom/google/android/marvin/utils/i;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, p0, v2, v3}, Lcom/google/android/marvin/utils/i;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    goto :goto_5
.end method

.method public static a(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isCheckable()Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1c
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static b(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_6

    move v0, v1

    :goto_5
    return v0

    :cond_6
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v2

    goto :goto_5

    :cond_e
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {p0, v0}, Lcom/google/android/marvin/talkback/p;->a(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_22

    move v0, v1

    goto :goto_5

    :cond_22
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    move-result v0

    if-eqz v0, :cond_1a

    move v0, v2

    goto :goto_5
.end method
