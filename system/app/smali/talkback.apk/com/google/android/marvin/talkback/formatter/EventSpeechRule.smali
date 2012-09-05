.class public Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/StringBuilder;

.field private static final b:Ljava/util/HashMap;

.field private static final c:Ljava/util/HashMap;


# instance fields
.field private final d:Landroid/os/Bundle;

.field private final e:Ljava/util/List;

.field private final f:Ljava/util/List;

.field private final g:Ljava/util/List;

.field private final h:Ljava/util/List;

.field private final i:Ljava/util/HashMap;

.field private final j:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$AccessibilityEventFilter;

.field private final k:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$AccessibilityEventFormatter;

.field private final l:I

.field private final m:Landroid/content/Context;

.field private final n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private final p:Ljava/lang/String;

.field private final q:Lorg/w3c/dom/Node;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->a:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->b:Ljava/util/HashMap;

    const-string v1, "TYPE_VIEW_CLICKED"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->b:Ljava/util/HashMap;

    const-string v1, "TYPE_VIEW_LONG_CLICKED"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->b:Ljava/util/HashMap;

    const-string v1, "TYPE_VIEW_SELECTED"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->b:Ljava/util/HashMap;

    const-string v1, "TYPE_VIEW_FOCUSED"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->b:Ljava/util/HashMap;

    const-string v1, "TYPE_VIEW_TEXT_CHANGED"

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->b:Ljava/util/HashMap;

    const-string v1, "TYPE_WINDOW_STATE_CHANGED"

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->b:Ljava/util/HashMap;

    const-string v1, "TYPE_NOTIFICATION_STATE_CHANGED"

    const/16 v2, 0x40

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->b:Ljava/util/HashMap;

    const-string v1, "TYPE_VIEW_HOVER_ENTER"

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->b:Ljava/util/HashMap;

    const-string v1, "TYPE_VIEW_HOVER_EXIT"

    const/16 v2, 0x100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->b:Ljava/util/HashMap;

    const-string v1, "TYPE_TOUCH_EXPLORATION_GESTURE_START"

    const/16 v2, 0x200

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->b:Ljava/util/HashMap;

    const-string v1, "TYPE_TOUCH_EXPLORATION_GESTURE_END"

    const/16 v2, 0x400

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->b:Ljava/util/HashMap;

    const-string v1, "TYPE_WINDOW_CONTENT_CHANGED"

    const/16 v2, 0x800

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->b:Ljava/util/HashMap;

    const-string v1, "TYPE_VIEW_SCROLLED"

    const/16 v2, 0x1000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->b:Ljava/util/HashMap;

    const-string v1, "TYPE_VIEW_TEXT_SELECTION_CHANGED"

    const/16 v2, 0x2000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->c:Ljava/util/HashMap;

    const-string v1, "INTERRUPT"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->c:Ljava/util/HashMap;

    const-string v1, "QUEUE"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->c:Ljava/util/HashMap;

    const-string v1, "UNINTERRUPTIBLE"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lorg/w3c/dom/Node;I)V
    .registers 13

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->d:Landroid/os/Bundle;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->e:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->f:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->g:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->h:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->i:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->m:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->n:Ljava/lang/String;

    const-string v0, "undefined_package_name"

    iput-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->o:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->p:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->q:Lorg/w3c/dom/Node;

    invoke-interface {p3}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    const/4 v0, 0x0

    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    move v2, v0

    move-object v0, v1

    :goto_45
    if-lt v2, v4, :cond_4e

    iput-object v1, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->j:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$AccessibilityEventFilter;

    iput-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->k:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$AccessibilityEventFormatter;

    iput p4, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->l:I

    return-void

    :cond_4e
    invoke-interface {v3, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_68

    invoke-static {v5}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->g(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "metadata"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6b

    invoke-direct {p0, v5}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->c(Lorg/w3c/dom/Node;)V

    :cond_68
    :goto_68
    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    :cond_6b
    const-string v7, "filter"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_78

    invoke-direct {p0, v5}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->d(Lorg/w3c/dom/Node;)Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$AccessibilityEventFilter;

    move-result-object v1

    goto :goto_68

    :cond_78
    const-string v7, "formatter"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_68

    invoke-direct {p0, v5}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->e(Lorg/w3c/dom/Node;)Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$AccessibilityEventFormatter;

    move-result-object v0

    goto :goto_68
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)I
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    const-string v1, "@(\\w+:)?\\w+/\\w+"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_3
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Comparable;
    .registers 3

    invoke-static {p0, p1}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Landroid/content/Context;Lorg/w3c/dom/Node;)Ljava/lang/String;
    .registers 4

    invoke-static {p1}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->f(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_e
    return-object v0
.end method

.method static synthetic a(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->g(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lorg/w3c/dom/Document;)Ljava/util/ArrayList;
    .registers 15

    const/4 v11, 0x1

    const/4 v3, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_b

    if-nez p0, :cond_c

    :cond_b
    return-object v0

    :cond_c
    invoke-interface {p2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    move v2, v3

    :goto_19
    if-ge v2, v5, :cond_b

    invoke-interface {v4, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    if-ne v1, v11, :cond_2d

    :try_start_25
    new-instance v1, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;

    invoke-direct {v1, p0, p1, v6, v2}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/w3c/dom/Node;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2d
    .catch Ljava/lang/IllegalStateException; {:try_start_25 .. :try_end_2d} :catch_31

    :cond_2d
    :goto_2d
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_19

    :catch_31
    move-exception v1

    const-class v7, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;

    const/4 v8, 0x5

    const-string v9, "Failed loading speech rule: %s %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v6}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->f(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v10, v3

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v11

    invoke-static {v7, v8, v9, v10}, Lcom/google/android/marvin/utils/l;->a(Ljava/lang/Class;ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2d
.end method

.method static synthetic a(Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->i:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->o:Ljava/lang/String;

    return-void
.end method

.method private static a(Lorg/w3c/dom/Node;Ljava/lang/StringBuilder;)V
    .registers 8

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    const/4 v0, 0x0

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    :goto_9
    if-lt v0, v2, :cond_c

    return-void

    :cond_c
    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1e

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1e
    invoke-static {v3, p1}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->a(Lorg/w3c/dom/Node;Ljava/lang/StringBuilder;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method

.method static synthetic a(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->m:Landroid/content/Context;

    return-object v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Comparable;
    .registers 8

    const/4 v0, 0x0

    const/4 v5, 0x5

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v3, "eventType"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    sget-object v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    :goto_14
    return-object v0

    :cond_15
    invoke-static {p0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_31

    :try_start_1b
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_22} :catch_24

    move-result-object v0

    goto :goto_14

    :catch_24
    move-exception v3

    const-class v3, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;

    const-string v4, "Property: \'%s\' not interger. Ignoring!"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    invoke-static {v3, v5, v4, v2}, Lcom/google/android/marvin/utils/l;->a(Ljava/lang/Class;ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_14

    :cond_31
    const-string v3, "eventTime"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4f

    :try_start_39
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    :try_end_40
    .catch Ljava/lang/NumberFormatException; {:try_start_39 .. :try_end_40} :catch_42

    move-result-object v0

    goto :goto_14

    :catch_42
    move-exception v3

    const-class v3, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;

    const-string v4, "Property: \'%s\' not float. Ignoring!"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    invoke-static {v3, v5, v4, v2}, Lcom/google/android/marvin/utils/l;->a(Ljava/lang/Class;ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_14

    :cond_4f
    const-string v0, "checked"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_83

    const-string v0, "enabled"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_83

    const-string v0, "fullScreen"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_83

    const-string v0, "scrollable"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_83

    const-string v0, "password"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_83

    move v0, v1

    :goto_78
    if-eqz v0, :cond_85

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_14

    :cond_83
    move v0, v2

    goto :goto_78

    :cond_85
    const-string v0, "packageName"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c3

    const-string v0, "className"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c3

    const-string v0, "text"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c3

    const-string v0, "beforeText"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c3

    const-string v0, "contentDescription"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c3

    const-string v0, "versionName"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c3

    const-string v0, "platformRelease"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c3

    move v0, v1

    :goto_be
    if-eqz v0, :cond_c5

    move-object v0, p1

    goto/16 :goto_14

    :cond_c3
    move v0, v2

    goto :goto_be

    :cond_c5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown property: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic b(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->f(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "eventTime"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->e:Ljava/util/List;

    return-object v0
.end method

.method private c(Lorg/w3c/dom/Node;)V
    .registers 8

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_a
    if-lt v1, v3, :cond_d

    return-void

    :cond_d
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_39

    invoke-static {v0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->g(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->f(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "queuing"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    sget-object v5, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->c:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v5, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->d:Landroid/os/Bundle;

    invoke-virtual {v5, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_39
    :goto_39
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    :cond_3d
    const-string v5, "earcon"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_55

    iget-object v4, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->m:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iget-object v4, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->e:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_39

    :cond_55
    const-string v5, "vibration"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6d

    iget-object v4, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->m:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iget-object v4, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->f:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_39

    :cond_6d
    const-string v5, "customEarcon"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_85

    iget-object v4, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->g:Ljava/util/List;

    iget-object v5, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->m:Landroid/content/Context;

    invoke-static {v5, v0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_39

    :cond_85
    const-string v5, "customVibration"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9d

    iget-object v4, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->h:Ljava/util/List;

    iget-object v5, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->m:Landroid/content/Context;

    invoke-static {v5, v0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_39

    :cond_9d
    invoke-static {v4, v0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->d:Landroid/os/Bundle;

    invoke-virtual {v5, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_39
.end method

.method private static c(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "eventType"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    const-string v0, "itemCount"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    const-string v0, "currentItemIndex"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    const-string v0, "fromIndex"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    const-string v0, "toIndex"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    const-string v0, "scrollX"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    const-string v0, "scrollY"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    const-string v0, "recordCount"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    const-string v0, "addedCount"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    const-string v0, "removedCount"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    const-string v0, "queuing"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    const-string v0, "versionCode"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    const-string v0, "platformSdk"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    const/4 v0, 0x0

    :goto_69
    return v0

    :cond_6a
    const/4 v0, 0x1

    goto :goto_69
.end method

.method private d(Lorg/w3c/dom/Node;)Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$AccessibilityEventFilter;
    .registers 8

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    const/4 v0, 0x0

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    :goto_9
    if-lt v0, v2, :cond_13

    new-instance v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$DefaultFilter;

    iget-object v1, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->m:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$DefaultFilter;-><init>(Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;Landroid/content/Context;Lorg/w3c/dom/Node;)V

    :goto_12
    return-object v0

    :cond_13
    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_35

    invoke-static {v3}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->g(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "custom"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-static {v3}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->f(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$AccessibilityEventFilter;

    goto :goto_12

    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method

.method private d(Ljava/lang/String;)Ljava/lang/Object;
    .registers 9

    :try_start_0
    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->m:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-ne v0, v1, :cond_1f

    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->m:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :goto_1a
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    :goto_1e
    return-object v0

    :cond_1f
    new-instance v0, Ldalvik/system/DexFile;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->p:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ldalvik/system/DexFile;-><init>(Ljava/io/File;)V

    iget-object v1, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->m:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ldalvik/system/DexFile;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_36

    move-result-object v0

    goto :goto_1a

    :catch_36
    move-exception v0

    const-class v1, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;

    const/4 v2, 0x6

    const-string v3, "Rule: #%d. Could not load class: \'%s\'."

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->l:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/marvin/utils/l;->a(Ljava/lang/Class;ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_1e
.end method

.method static synthetic d(Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;)I
    .registers 2

    iget v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->l:I

    return v0
.end method

.method private e(Lorg/w3c/dom/Node;)Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$AccessibilityEventFormatter;
    .registers 8

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    const/4 v0, 0x0

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    :goto_9
    if-lt v0, v2, :cond_11

    new-instance v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$DefaultFormatter;

    invoke-direct {v0, p0, p1}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$DefaultFormatter;-><init>(Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;Lorg/w3c/dom/Node;)V

    :goto_10
    return-object v0

    :cond_11
    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_33

    invoke-static {v3}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->g(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "custom"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-static {v3}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->f(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$AccessibilityEventFormatter;

    goto :goto_10

    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method

.method private static f(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .registers 5

    sget-object v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->a:Ljava/lang/StringBuilder;

    invoke-static {p0, v0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->a(Lorg/w3c/dom/Node;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    return-object v1
.end method

.method private static g(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .registers 3

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_12

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_12
    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 7

    :try_start_0
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v0

    new-instance v1, Ljavax/xml/transform/dom/DOMSource;

    iget-object v2, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->q:Lorg/w3c/dom/Node;

    invoke-direct {v1, v2}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    new-instance v3, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v3, v2}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    const-string v4, "indent"

    const-string v5, "yes"

    invoke-virtual {v0, v4, v5}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v3}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_26
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_26} :catch_28

    move-result-object v0

    :goto_27
    return-object v0

    :catch_28
    move-exception v0

    invoke-virtual {v0}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    const-string v0, ""

    goto :goto_27
.end method

.method public final a(Landroid/view/accessibility/AccessibilityEvent;Lcom/google/android/marvin/talkback/ac;)Z
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->j:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$AccessibilityEventFilter;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->j:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$AccessibilityEventFilter;

    iget-object v2, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->m:Landroid/content/Context;

    invoke-interface {v1, p1, v2}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$AccessibilityEventFilter;->a(Landroid/view/accessibility/AccessibilityEvent;Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_10

    :cond_f
    :goto_f
    return v0

    :cond_10
    iget-object v1, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->k:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$AccessibilityEventFormatter;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->k:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$AccessibilityEventFormatter;

    iget-object v2, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->m:Landroid/content/Context;

    invoke-interface {v1, p1, v2, p2}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$AccessibilityEventFormatter;->a(Landroid/view/accessibility/AccessibilityEvent;Landroid/content/Context;Lcom/google/android/marvin/talkback/ac;)Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_1e
    invoke-virtual {p2}, Lcom/google/android/marvin/talkback/ac;->g()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->d:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    invoke-virtual {p2}, Lcom/google/android/marvin/talkback/ac;->c()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p2}, Lcom/google/android/marvin/talkback/ac;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p2}, Lcom/google/android/marvin/talkback/ac;->e()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p2}, Lcom/google/android/marvin/talkback/ac;->f()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x1

    goto :goto_f
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->o:Ljava/lang/String;

    return-object v0
.end method
