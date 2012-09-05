.class public Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Landroid/content/Context;

.field private c:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;->a:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;->c:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;->b:Landroid/content/Context;

    return-void
.end method

.method private static a(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    .registers 7

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v0

    :goto_c
    return-object v0

    :catch_d
    move-exception v0

    const-class v1, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;

    const/4 v2, 0x6

    const-string v3, "Could not open speechstrategy xml file\n%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/marvin/utils/l;->a(Ljava/lang/Class;ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_c
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/io/InputStream;)V
    .registers 13

    const/4 v3, 0x0

    invoke-static {p3}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;->a(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->a(Landroid/content/Context;Ljava/lang/String;Lorg/w3c/dom/Document;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;->a:Ljava/lang/Object;

    monitor-enter v5

    :try_start_c
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v2, v3

    :goto_11
    if-lt v2, v6, :cond_2d

    monitor-exit v5
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_52

    const-class v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;

    const/4 v1, 0x4

    const-string v2, "%d speech rules appended from: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v3

    const/4 v3, 0x1

    aput-object p2, v5, v3

    invoke-static {v0, v1, v2, v5}, Lcom/google/android/marvin/utils/l;->a(Ljava/lang/Class;ILjava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2d
    :try_start_2d
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;

    invoke-virtual {v0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->c()Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_4b

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;->c:Ljava/util/HashMap;

    invoke-virtual {v8, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4b
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_11

    :catchall_52
    move-exception v0

    monitor-exit v5
    :try_end_54
    .catchall {:try_start_2d .. :try_end_54} :catchall_52

    throw v0
.end method

.method private static a(Ljava/util/ArrayList;Landroid/view/accessibility/AccessibilityEvent;Lcom/google/android/marvin/talkback/ac;)Z
    .registers 14

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v4, v2

    :goto_7
    if-lt v4, v5, :cond_b

    move v0, v2

    :goto_a
    return v0

    :cond_b
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;

    :try_start_11
    invoke-virtual {v0, p1, p2}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->a(Landroid/view/accessibility/AccessibilityEvent;Lcom/google/android/marvin/talkback/ac;)Z

    move-result v3

    if-eqz v3, :cond_3f

    const-class v3, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;

    const/4 v6, 0x2

    const-string v7, "Processed event using rule:\n%s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->a()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v3, v6, v7, v8}, Lcom/google/android/marvin/utils/l;->a(Ljava/lang/Class;ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_29} :catch_2b

    move v0, v1

    goto :goto_a

    :catch_2b
    move-exception v3

    const-class v6, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;

    const/4 v7, 0x6

    const-string v8, "Error while processing rule:\n%s"

    new-array v9, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v2

    invoke-static {v6, v7, v8, v9}, Lcom/google/android/marvin/utils/l;->a(Ljava/lang/Class;ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3f
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_7
.end method


# virtual methods
.method public final a(I)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/InputStream;)V

    return-void
.end method

.method public final a(Ljava/io/File;)V
    .registers 9

    invoke-virtual {p1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_8
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iget-object v2, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;->b:Landroid/content/Context;

    invoke-direct {p0, v2, v1, v0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_12} :catch_13

    :goto_12
    return-void

    :catch_13
    move-exception v0

    const-class v2, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;

    const/4 v3, 0x6

    const-string v4, "Error loading speech strategy: %s\n%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/marvin/utils/l;->a(Ljava/lang/Class;ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_12
.end method

.method public final a(Landroid/view/accessibility/AccessibilityEvent;Lcom/google/android/marvin/talkback/ac;)Z
    .registers 7

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;->c:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1b

    invoke-static {v0, p1, p2}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;->a(Ljava/util/ArrayList;Landroid/view/accessibility/AccessibilityEvent;Lcom/google/android/marvin/talkback/ac;)Z

    move-result v0

    if-eqz v0, :cond_1b

    monitor-exit v2

    move v0, v1

    :goto_1a
    return v0

    :cond_1b
    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;->c:Ljava/util/HashMap;

    const-string v3, "undefined_package_name"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_30

    invoke-static {v0, p1, p2}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;->a(Ljava/util/ArrayList;Landroid/view/accessibility/AccessibilityEvent;Lcom/google/android/marvin/talkback/ac;)Z

    move-result v0

    if-eqz v0, :cond_30

    monitor-exit v2

    move v0, v1

    goto :goto_1a

    :cond_30
    monitor-exit v2

    const/4 v0, 0x0

    goto :goto_1a

    :catchall_33
    move-exception v0

    monitor-exit v2
    :try_end_35
    .catchall {:try_start_4 .. :try_end_35} :catchall_33

    throw v0
.end method

.method public final b(Ljava/io/File;)V
    .registers 9

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :cond_14
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2f

    const-class v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;

    const/4 v4, 0x3

    const-string v5, "%d speech rules removed from: %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v2

    const/4 v1, 0x1

    aput-object v3, v6, v1

    invoke-static {v0, v4, v5, v6}, Lcom/google/android/marvin/utils/l;->a(Ljava/lang/Class;ILjava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2f
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;->c:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_41
    :goto_41
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;

    invoke-virtual {v0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_41
.end method
