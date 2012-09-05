.class public Lcom/google/android/marvin/talkback/PlayableListPreference;
.super Landroid/preference/ListPreference;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/google/android/marvin/talkback/n;

.field private final c:Landroid/view/View$AccessibilityDelegate;

.field private final d:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/google/android/marvin/talkback/PlayableListPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/marvin/talkback/PlayableListPreference;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/google/android/marvin/talkback/v;

    invoke-direct {v0, p0}, Lcom/google/android/marvin/talkback/v;-><init>(Lcom/google/android/marvin/talkback/PlayableListPreference;)V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/PlayableListPreference;->c:Landroid/view/View$AccessibilityDelegate;

    new-instance v0, Lcom/google/android/marvin/talkback/w;

    invoke-direct {v0, p0}, Lcom/google/android/marvin/talkback/w;-><init>(Lcom/google/android/marvin/talkback/PlayableListPreference;)V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/PlayableListPreference;->d:Landroid/view/View$OnClickListener;

    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/google/android/marvin/talkback/PlayableListPreference;->setWidgetLayoutResource(I)V

    invoke-static {p1}, Lcom/google/android/marvin/talkback/n;->a(Landroid/content/Context;)Lcom/google/android/marvin/talkback/n;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/marvin/talkback/PlayableListPreference;->b:Lcom/google/android/marvin/talkback/n;

    return-void
.end method

.method static synthetic a(Lcom/google/android/marvin/talkback/PlayableListPreference;)V
    .registers 5

    invoke-virtual {p0}, Lcom/google/android/marvin/talkback/PlayableListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    const-string v1, "\\w+/\\w+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_23

    :cond_e
    sget-object v1, Lcom/google/android/marvin/talkback/PlayableListPreference;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid resource format: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_22
    return-void

    :cond_23
    invoke-virtual {p0}, Lcom/google/android/marvin/talkback/PlayableListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_4b

    sget-object v1, Lcom/google/android/marvin/talkback/PlayableListPreference;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to load resource identifier: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    :cond_4b
    const-string v2, "raw/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5b

    iget-object v0, p0, Lcom/google/android/marvin/talkback/PlayableListPreference;->b:Lcom/google/android/marvin/talkback/n;

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v1, v2}, Lcom/google/android/marvin/talkback/n;->a(IF)Z

    goto :goto_22

    :cond_5b
    const-string v2, "array/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_69

    iget-object v0, p0, Lcom/google/android/marvin/talkback/PlayableListPreference;->b:Lcom/google/android/marvin/talkback/n;

    invoke-virtual {v0, v1}, Lcom/google/android/marvin/talkback/n;->b(I)Z

    goto :goto_22

    :cond_69
    sget-object v1, Lcom/google/android/marvin/talkback/PlayableListPreference;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown resource type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .registers 4

    const v0, 0x7f0a0002

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_15

    iget-object v1, p0, Lcom/google/android/marvin/talkback/PlayableListPreference;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/google/android/marvin/talkback/PlayableListPreference;->c:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_15
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onBindView(Landroid/view/View;)V

    return-void
.end method
