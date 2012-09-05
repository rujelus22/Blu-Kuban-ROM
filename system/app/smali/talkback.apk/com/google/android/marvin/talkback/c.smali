.class final Lcom/google/android/marvin/talkback/c;
.super Ljava/util/ArrayList;


# instance fields
.field private a:I


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method private static b(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method public final a(I)Landroid/view/accessibility/AccessibilityEvent;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/marvin/talkback/c;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityEvent;

    if-eqz v0, :cond_14

    invoke-static {v0}, Lcom/google/android/marvin/talkback/c;->b(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-nez v0, :cond_14

    iget v0, p0, Lcom/google/android/marvin/talkback/c;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/marvin/talkback/c;->a:I

    :cond_14
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityEvent;

    return-object v0
.end method

.method public final a(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 6

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/marvin/talkback/c;->b(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-nez v1, :cond_10

    iget v1, p0, Lcom/google/android/marvin/talkback/c;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/marvin/talkback/c;->a:I

    :cond_10
    invoke-super {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/marvin/talkback/c;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_18
    :goto_18
    invoke-virtual {p0}, Lcom/google/android/marvin/talkback/c;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    iget v0, p0, Lcom/google/android/marvin/talkback/c;->a:I

    const/16 v3, 0xa

    if-gt v0, v3, :cond_29

    :cond_28
    return v1

    :cond_29
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityEvent;

    invoke-static {v0}, Lcom/google/android/marvin/talkback/c;->b(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-nez v0, :cond_18

    iget v0, p0, Lcom/google/android/marvin/talkback/c;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/marvin/talkback/c;->a:I

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_18
.end method

.method public final bridge synthetic add(ILjava/lang/Object;)V
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final bridge synthetic add(Ljava/lang/Object;)Z
    .registers 3

    check-cast p1, Landroid/view/accessibility/AccessibilityEvent;

    invoke-virtual {p0, p1}, Lcom/google/android/marvin/talkback/c;->a(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final clear()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/marvin/talkback/c;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/marvin/talkback/c;->a:I

    return-void

    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityEvent;

    invoke-static {v0}, Lcom/google/android/marvin/talkback/c;->b(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_4
.end method

.method public final bridge synthetic remove(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/marvin/talkback/c;->a(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
