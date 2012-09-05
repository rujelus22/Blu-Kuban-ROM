.class final Lcom/google/android/marvin/talkback/a/f;
.super Lcom/google/android/marvin/talkback/a/a;


# instance fields
.field private final a:Ljava/lang/Class;

.field private final b:I


# direct methods
.method public constructor <init>(Ljava/lang/Class;I)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/marvin/talkback/a/a;-><init>()V

    iput-object p1, p0, Lcom/google/android/marvin/talkback/a/f;->a:Ljava/lang/Class;

    iput p2, p0, Lcom/google/android/marvin/talkback/a/f;->b:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/CharSequence;
    .registers 8

    invoke-super {p0, p1, p2, p3}, Lcom/google/android/marvin/talkback/a/a;->a(Landroid/content/Context;Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/CharSequence;

    move-result-object v0

    iget v1, p0, Lcom/google/android/marvin/talkback/a/f;->b:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Context;Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/marvin/talkback/a/f;->a:Ljava/lang/Class;

    invoke-static {p1, p2, v0}, Lcom/google/android/marvin/talkback/p;->a(Landroid/content/Context;Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method
