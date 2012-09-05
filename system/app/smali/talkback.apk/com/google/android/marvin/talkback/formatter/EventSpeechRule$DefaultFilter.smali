.class Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$DefaultFilter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$AccessibilityEventFilter;


# instance fields
.field private synthetic a:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;


# direct methods
.method public constructor <init>(Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;Landroid/content/Context;Lorg/w3c/dom/Node;)V
    .registers 11

    iput-object p1, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$DefaultFilter;->a:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p3}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    const/4 v0, 0x0

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    :goto_e
    if-lt v0, v2, :cond_11

    return-void

    :cond_11
    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3b

    invoke-static {v3}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->b(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;

    invoke-direct {v5, p2, v4, v3}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->a(Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "packageName"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-static {p1, v3}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->a(Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;Ljava/lang/String;)V

    :cond_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_e
.end method


# virtual methods
.method public final a(Landroid/view/accessibility/AccessibilityEvent;Landroid/content/Context;)Z
    .registers 10

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$DefaultFilter;->a:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;

    invoke-static {v0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->a(Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "eventType"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;

    if-eqz v0, :cond_24

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->a(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    move v0, v3

    :goto_23
    return v0

    :cond_24
    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$DefaultFilter;->a:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;

    invoke-static {v0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->a(Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "packageName"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;

    if-eqz v0, :cond_42

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->a(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    move v0, v3

    goto :goto_23

    :cond_42
    iget-object v1, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$DefaultFilter;->a:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;

    invoke-static {v1}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->a(Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "className"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;

    if-eqz v1, :cond_74

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getClassName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v2, 0x0

    if-eqz v0, :cond_370

    invoke-virtual {v0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->a()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v3

    check-cast v0, Ljava/lang/String;

    :goto_65
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v6, v2, v3

    aput-object v0, v2, v4

    invoke-virtual {v1, v5, v2}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->a(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_74

    move v0, v3

    goto :goto_23

    :cond_74
    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$DefaultFilter;->a:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;

    invoke-static {v0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->a(Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "text"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;

    if-eqz v0, :cond_92

    invoke-static {p1}, Lcom/google/android/marvin/talkback/ae;->a(Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/CharSequence;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->a(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_92

    move v0, v3

    goto :goto_23

    :cond_92
    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$DefaultFilter;->a:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;

    invoke-static {v0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->a(Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "beforeText"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;

    if-eqz v0, :cond_b1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getBeforeText()Ljava/lang/CharSequence;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->a(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b1

    move v0, v3

    goto/16 :goto_23

    :cond_b1
    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$DefaultFilter;->a:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;

    invoke-static {v0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->a(Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "contentDescription"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;

    if-eqz v0, :cond_d0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->a(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d0

    move v0, v3

    goto/16 :goto_23

    :cond_d0
    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$DefaultFilter;->a:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;

    invoke-static {v0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->a(Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "eventTime"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;

    if-eqz v0, :cond_f3

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->a(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f3

    move v0, v3

    goto/16 :goto_23

    :cond_f3
    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$DefaultFilter;->a:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;

    invoke-static {v0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->a(Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "itemCount"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;

    if-eqz v0, :cond_116

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getItemCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->a(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_116

    move v0, v3

    goto/16 :goto_23

    :cond_116
    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$DefaultFilter;->a:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;

    invoke-static {v0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->a(Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "currentItemIndex"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;

    if-eqz v0, :cond_139

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getCurrentItemIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->a(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_139

    move v0, v3

    goto/16 :goto_23

    :cond_139
    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$DefaultFilter;->a:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;

    invoke-static {v0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->a(Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "fromIndex"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;

    if-eqz v0, :cond_15c

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getFromIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->a(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15c

    move v0, v3

    goto/16 :goto_23

    :cond_15c
    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$DefaultFilter;->a:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;

    invoke-static {v0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->a(Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "toIndex"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;

    if-eqz v0, :cond_17f

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getToIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->a(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17f

    move v0, v3

    goto/16 :goto_23

    :cond_17f
    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$DefaultFilter;->a:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;

    invoke-static {v0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->a(Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "scrollable"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;

    if-eqz v0, :cond_1a2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->isScrollable()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->a(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a2

    move v0, v3

    goto/16 :goto_23

    :cond_1a2
    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$DefaultFilter;->a:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;

    invoke-static {v0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->a(Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "scrollX"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;

    if-eqz v0, :cond_1c5

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getScrollX()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->a(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c5

    move v0, v3

    goto/16 :goto_23

    :cond_1c5
    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$DefaultFilter;->a:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;

    invoke-static {v0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->a(Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "scrollY"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;

    if-eqz v0, :cond_1e8

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getScrollY()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->a(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e8

    move v0, v3

    goto/16 :goto_23

    :cond_1e8
    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$DefaultFilter;->a:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;

    invoke-static {v0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->a(Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "recordCount"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;

    if-eqz v0, :cond_20b

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getRecordCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->a(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20b

    move v0, v3

    goto/16 :goto_23

    :cond_20b
    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$DefaultFilter;->a:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;

    invoke-static {v0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->a(Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "checked"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;

    if-eqz v0, :cond_22e

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->isChecked()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->a(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22e

    move v0, v3

    goto/16 :goto_23

    :cond_22e
    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$DefaultFilter;->a:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;

    invoke-static {v0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->a(Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;

    if-eqz v0, :cond_251

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->isEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->a(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_251

    move v0, v3

    goto/16 :goto_23

    :cond_251
    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$DefaultFilter;->a:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;

    invoke-static {v0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->a(Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "fullScreen"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;

    if-eqz v0, :cond_274

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->isFullScreen()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->a(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_274

    move v0, v3

    goto/16 :goto_23

    :cond_274
    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$DefaultFilter;->a:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;

    invoke-static {v0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->a(Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "password"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;

    if-eqz v0, :cond_297

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->isPassword()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->a(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_297

    move v0, v3

    goto/16 :goto_23

    :cond_297
    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$DefaultFilter;->a:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;

    invoke-static {v0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->a(Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "addedCount"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;

    if-eqz v0, :cond_2ba

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getAddedCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->a(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2ba

    move v0, v3

    goto/16 :goto_23

    :cond_2ba
    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$DefaultFilter;->a:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;

    invoke-static {v0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->a(Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "removedCount"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;

    if-eqz v0, :cond_2dd

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getRemovedCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->a(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2dd

    move v0, v3

    goto/16 :goto_23

    :cond_2dd
    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$DefaultFilter;->a:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;

    invoke-static {v0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->a(Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "versionCode"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;

    if-eqz v0, :cond_308

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/google/android/marvin/utils/g;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->a(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_308

    move v0, v3

    goto/16 :goto_23

    :cond_308
    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$DefaultFilter;->a:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;

    invoke-static {v0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->a(Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "versionName"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;

    if-eqz v0, :cond_32f

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/google/android/marvin/utils/g;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->a(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32f

    move v0, v3

    goto/16 :goto_23

    :cond_32f
    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$DefaultFilter;->a:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;

    invoke-static {v0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->a(Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "platformRelease"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;

    if-eqz v0, :cond_34c

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->a(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34c

    move v0, v3

    goto/16 :goto_23

    :cond_34c
    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$DefaultFilter;->a:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;

    invoke-static {v0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->a(Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "platformSdk"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;

    if-eqz v0, :cond_36d

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->a(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36d

    move v0, v3

    goto/16 :goto_23

    :cond_36d
    move v0, v4

    goto/16 :goto_23

    :cond_370
    move-object v0, v2

    goto/16 :goto_65
.end method
