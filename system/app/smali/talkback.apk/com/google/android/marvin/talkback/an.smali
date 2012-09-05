.class final Lcom/google/android/marvin/talkback/an;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/marvin/talkback/ao;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/marvin/talkback/l;

.field private final c:Lcom/google/android/marvin/talkback/aj;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/marvin/talkback/l;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/marvin/talkback/an;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/marvin/talkback/an;->b:Lcom/google/android/marvin/talkback/l;

    new-instance v0, Lcom/google/android/marvin/talkback/aj;

    invoke-direct {v0, p0}, Lcom/google/android/marvin/talkback/aj;-><init>(Lcom/google/android/marvin/talkback/an;)V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/an;->c:Lcom/google/android/marvin/talkback/aj;

    return-void
.end method

.method static synthetic a(Lcom/google/android/marvin/talkback/an;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/marvin/talkback/an;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/marvin/talkback/an;)Lcom/google/android/marvin/talkback/l;
    .registers 2

    iget-object v0, p0, Lcom/google/android/marvin/talkback/an;->b:Lcom/google/android/marvin/talkback/l;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/marvin/talkback/an;->c:Lcom/google/android/marvin/talkback/aj;

    invoke-static {v1}, Lcom/google/android/marvin/talkback/aj;->b(Lcom/google/android/marvin/talkback/aj;)V

    const/16 v1, 0x80

    if-eq v0, v1, :cond_e

    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lcom/google/android/marvin/talkback/an;->c:Lcom/google/android/marvin/talkback/aj;

    invoke-static {v0, p1}, Lcom/google/android/marvin/talkback/aj;->a(Lcom/google/android/marvin/talkback/aj;Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_d
.end method
