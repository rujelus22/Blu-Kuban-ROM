.class Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$DefaultFormatter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$AccessibilityEventFormatter;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/List;

.field private synthetic c:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;


# direct methods
.method public constructor <init>(Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;Lorg/w3c/dom/Node;)V
    .registers 13

    iput-object p1, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$DefaultFormatter;->c:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$DefaultFormatter;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    const/4 v0, 0x0

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    move v9, v0

    move-object v0, v1

    move v1, v9

    :goto_19
    if-lt v1, v3, :cond_1e

    iput-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$DefaultFormatter;->a:Ljava/lang/String;

    return-void

    :cond_1e
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3d

    invoke-static {v4}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "template"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_40

    invoke-static {p1}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->b(Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->a(Landroid/content/Context;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    :cond_3d
    :goto_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_40
    const-string v6, "property"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5b

    iget-object v6, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$DefaultFormatter;->b:Ljava/util/List;

    new-instance v7, Landroid/util/Pair;

    invoke-static {p1}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->b(Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v4}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->a(Landroid/content/Context;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v5, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    :cond_5b
    iget-object v6, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$DefaultFormatter;->b:Ljava/util/List;

    new-instance v7, Landroid/util/Pair;

    invoke-static {v4}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->b(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v5, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3d
.end method

.method private a(Lcom/google/android/marvin/talkback/ac;[Ljava/lang/Object;)V
    .registers 10

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/google/android/marvin/talkback/ac;->b()Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$DefaultFormatter;->a:Ljava/lang/String;

    if-eqz v0, :cond_3b

    :try_start_9
    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$DefaultFormatter;->a:Ljava/lang/String;

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_12
    .catch Ljava/util/MissingFormatArgumentException; {:try_start_9 .. :try_end_12} :catch_13

    :cond_12
    :goto_12
    return-void

    :catch_13
    move-exception v0

    const-class v2, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$DefaultFormatter;

    const/4 v3, 0x6

    const-string v4, "Speech rule: \'%d\' has inconsistency between template: \'%s\' and arguments: \'%s\'. Possibliy #template arguments does not match #parameters. %s"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$DefaultFormatter;->c:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;

    invoke-static {v6}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->e(Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v1, 0x1

    iget-object v6, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$DefaultFormatter;->a:Ljava/lang/String;

    aput-object v6, v5, v1

    const/4 v1, 0x2

    aput-object p2, v5, v1

    const/4 v1, 0x3

    invoke-virtual {v0}, Ljava/util/MissingFormatArgumentException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/marvin/utils/l;->a(Ljava/lang/Class;ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_12

    :cond_3b
    array-length v3, p2

    move v0, v1

    :goto_3d
    if-lt v0, v3, :cond_4f

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_12

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_12

    :cond_4f
    aget-object v1, p2, v0

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3d
.end method


# virtual methods
.method public final a(Landroid/view/accessibility/AccessibilityEvent;Landroid/content/Context;Lcom/google/android/marvin/talkback/ac;)Z
    .registers 12

    iget-object v4, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$DefaultFormatter;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    move v3, v0

    :goto_e
    if-lt v3, v6, :cond_2f

    invoke-virtual {p3}, Lcom/google/android/marvin/talkback/ac;->c()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$DefaultFormatter;->c:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;

    invoke-static {v1}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->c(Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p3}, Lcom/google/android/marvin/talkback/ac;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$DefaultFormatter;->c:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;

    invoke-static {v1}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->d(Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0, p3, v5}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$DefaultFormatter;->a(Lcom/google/android/marvin/talkback/ac;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0

    :cond_2f
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const-string v7, "property"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c2

    const-string v0, "eventType"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_55
    if-eqz v0, :cond_1be

    :goto_57
    aput-object v0, v5, v3

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_e

    :cond_5d
    const-string v0, "packageName"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_55

    :cond_6a
    const-string v0, "className"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getClassName()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_55

    :cond_77
    const-string v0, "text"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    invoke-static {p1}, Lcom/google/android/marvin/talkback/ae;->a(Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_55

    :cond_84
    const-string v0, "beforeText"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getBeforeText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_55

    :cond_91
    const-string v0, "contentDescription"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9e

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_55

    :cond_9e
    const-string v0, "eventTime"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_af

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_55

    :cond_af
    const-string v0, "itemCount"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getItemCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_55

    :cond_c0
    const-string v0, "currentItemIndex"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getCurrentItemIndex()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_55

    :cond_d1
    const-string v0, "fromIndex"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e3

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getFromIndex()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_55

    :cond_e3
    const-string v0, "toIndex"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f5

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getToIndex()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_55

    :cond_f5
    const-string v0, "scrollable"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_107

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->isScrollable()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_55

    :cond_107
    const-string v0, "scrollX"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_119

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getScrollX()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_55

    :cond_119
    const-string v0, "scrollY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12b

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getScrollY()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_55

    :cond_12b
    const-string v0, "recordCount"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13d

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getRecordCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_55

    :cond_13d
    const-string v0, "checked"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14f

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->isChecked()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_55

    :cond_14f
    const-string v0, "enabled"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_161

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->isEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_55

    :cond_161
    const-string v0, "fullScreen"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_173

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->isFullScreen()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_55

    :cond_173
    const-string v0, "password"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_185

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->isPassword()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_55

    :cond_185
    const-string v0, "addedCount"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_197

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getAddedCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_55

    :cond_197
    const-string v0, "removedCount"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a9

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getRemovedCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_55

    :cond_1a9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unknown property : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1be
    const-string v0, ""

    goto/16 :goto_57

    :cond_1c2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "Unknown selector type: ["

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
