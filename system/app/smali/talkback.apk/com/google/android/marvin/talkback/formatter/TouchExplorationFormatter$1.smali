.class Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/marvin/talkback/h;


# instance fields
.field private synthetic a:Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter;


# direct methods
.method constructor <init>(Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter$1;->a:Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .registers 3

    invoke-static {p1}, Lcom/google/android/marvin/talkback/p;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method
