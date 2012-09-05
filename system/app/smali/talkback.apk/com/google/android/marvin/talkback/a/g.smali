.class public final Lcom/google/android/marvin/talkback/a/g;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/LinkedList;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/a/g;->a:Ljava/util/LinkedList;

    iput-object p1, p0, Lcom/google/android/marvin/talkback/a/g;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/marvin/talkback/a/g;->a:Ljava/util/LinkedList;

    new-instance v1, Lcom/google/android/marvin/talkback/a/b;

    invoke-direct {v1}, Lcom/google/android/marvin/talkback/a/b;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/marvin/talkback/a/g;->a:Ljava/util/LinkedList;

    new-instance v1, Lcom/google/android/marvin/talkback/a/e;

    invoke-direct {v1}, Lcom/google/android/marvin/talkback/a/e;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/marvin/talkback/a/g;->a:Ljava/util/LinkedList;

    new-instance v1, Lcom/google/android/marvin/talkback/a/c;

    invoke-direct {v1}, Lcom/google/android/marvin/talkback/a/c;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/marvin/talkback/a/g;->a:Ljava/util/LinkedList;

    new-instance v1, Lcom/google/android/marvin/talkback/a/f;

    const-class v2, Landroid/widget/Spinner;

    const v3, 0x7f070040

    invoke-direct {v1, v2, v3}, Lcom/google/android/marvin/talkback/a/f;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/marvin/talkback/a/g;->a:Ljava/util/LinkedList;

    new-instance v1, Lcom/google/android/marvin/talkback/a/f;

    const-class v2, Landroid/webkit/WebView;

    const v3, 0x7f070062

    invoke-direct {v1, v2, v3}, Lcom/google/android/marvin/talkback/a/f;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/marvin/talkback/a/g;->a:Ljava/util/LinkedList;

    new-instance v1, Lcom/google/android/marvin/talkback/a/a;

    invoke-direct {v1}, Lcom/google/android/marvin/talkback/a/a;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/CharSequence;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_1b

    const v1, 0x7f070057

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/marvin/talkback/a/g;->a(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)V

    :cond_1b
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z

    move-result v1

    if-eqz v1, :cond_2b

    const v1, 0x7f070058

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/marvin/talkback/a/g;->a(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)V

    :cond_2b
    return-object v0
.end method

.method private static a(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)V
    .registers 3

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private b(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/CharSequence;
    .registers 6

    iget-object v0, p0, Lcom/google/android/marvin/talkback/a/g;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    :goto_d
    return-object v0

    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/marvin/talkback/a/d;

    iget-object v2, p0, Lcom/google/android/marvin/talkback/a/g;->b:Landroid/content/Context;

    invoke-interface {v0, v2, p1}, Lcom/google/android/marvin/talkback/a/d;->a(Landroid/content/Context;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v1, p0, Lcom/google/android/marvin/talkback/a/g;->b:Landroid/content/Context;

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/marvin/talkback/a/d;->a(Landroid/content/Context;Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_d
.end method


# virtual methods
.method public final a(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/CharSequence;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isCheckable()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/google/android/marvin/talkback/a/g;->b:Landroid/content/Context;

    const v2, 0x7f070054

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/marvin/talkback/a/g;->a(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)V

    :cond_1d
    :goto_1d
    invoke-direct {p0, p1, p2}, Lcom/google/android/marvin/talkback/a/g;->b(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2a

    invoke-static {v1, v0}, Lcom/google/android/marvin/talkback/a/g;->a(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)V

    :cond_2a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3f

    const/4 v0, 0x0

    :cond_31
    :goto_31
    return-object v0

    :cond_32
    iget-object v1, p0, Lcom/google/android/marvin/talkback/a/g;->b:Landroid/content/Context;

    const v2, 0x7f070055

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/marvin/talkback/a/g;->a(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)V

    goto :goto_1d

    :cond_3f
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_31

    iget-object v1, p0, Lcom/google/android/marvin/talkback/a/g;->b:Landroid/content/Context;

    const v2, 0x7f070056

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/marvin/talkback/a/g;->a(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)V

    goto :goto_31
.end method
