.class public final Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$AccessibilityEventFormatter;


# static fields
.field private static final a:Lcom/google/android/marvin/talkback/ad;


# instance fields
.field private b:Z

.field private c:Z

.field private d:Landroid/view/accessibility/AccessibilityNodeInfo;

.field private e:Landroid/view/accessibility/AccessibilityNodeInfo;

.field private f:Lcom/google/android/marvin/talkback/a/g;

.field private final g:Lcom/google/android/marvin/talkback/h;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/marvin/talkback/ad;

    invoke-direct {v0}, Lcom/google/android/marvin/talkback/ad;-><init>()V

    sput-object v0, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter;->a:Lcom/google/android/marvin/talkback/ad;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter$1;

    invoke-direct {v0, p0}, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter$1;-><init>(Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter;)V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter;->g:Lcom/google/android/marvin/talkback/h;

    return-void
.end method

.method private a(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/ArrayList;Lcom/google/android/marvin/talkback/ac;)Z
    .registers 12

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p4}, Lcom/google/android/marvin/talkback/ac;->b()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a
    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_40

    move v0, v1

    :goto_17
    return v0

    :cond_18
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38

    iget-object v5, p0, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter;->f:Lcom/google/android/marvin/talkback/a/g;

    invoke-virtual {v5, v0, p1}, Lcom/google/android/marvin/talkback/a/g;->a(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_2a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v0, v5, v1

    invoke-static {v3, v5}, Lcom/google/android/marvin/utils/a;->a(Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_38
    iget-object v5, p0, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter;->f:Lcom/google/android/marvin/talkback/a/g;

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6}, Lcom/google/android/marvin/talkback/a/g;->a(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_2a

    :cond_40
    move v0, v2

    goto :goto_17
.end method


# virtual methods
.method public final a(Landroid/view/accessibility/AccessibilityEvent;Landroid/content/Context;Lcom/google/android/marvin/talkback/ac;)Z
    .registers 15

    const/4 v10, 0x4

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v5

    sparse-switch v5, :sswitch_data_240

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSource()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v6

    const/16 v0, 0x8

    if-ne v5, v0, :cond_90

    if-eqz v6, :cond_90

    invoke-static {v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    move-object v3, v0

    :goto_1a
    if-eqz v3, :cond_28

    const-class v0, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter;

    const/4 v7, 0x3

    const-string v8, "Announcing node: %s"

    new-array v9, v1, [Ljava/lang/Object;

    aput-object v3, v9, v2

    invoke-static {v0, v7, v8, v9}, Lcom/google/android/marvin/utils/l;->a(Ljava/lang/Class;ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_28
    invoke-static {v6, v3}, Lcom/google/android/marvin/talkback/ap;->a(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/16 v0, 0x80

    if-ne v5, v0, :cond_117

    if-nez v3, :cond_e9

    invoke-static {p2, v6}, Lcom/google/android/marvin/talkback/p;->a(Landroid/content/Context;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v0

    if-nez v0, :cond_3c

    if-nez p1, :cond_cb

    move v0, v2

    :goto_3a
    if-eqz v0, :cond_e9

    :cond_3c
    const-class v0, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter;

    const-string v4, "No node to announce, ignoring view with children"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0, v10, v4, v5}, Lcom/google/android/marvin/utils/l;->a(Ljava/lang/Class;ILjava/lang/String;[Ljava/lang/Object;)V

    new-array v0, v1, [Landroid/view/accessibility/AccessibilityNodeInfo;

    aput-object v6, v0, v2

    invoke-static {v0}, Lcom/google/android/marvin/talkback/p;->a([Landroid/view/accessibility/AccessibilityNodeInfo;)V

    new-array v0, v1, [Landroid/view/accessibility/AccessibilityNodeInfo;

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/google/android/marvin/talkback/p;->a([Landroid/view/accessibility/AccessibilityNodeInfo;)V

    move v0, v2

    :goto_54
    return v0

    :sswitch_55
    iget-boolean v0, p0, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter;->c:Z

    if-nez v0, :cond_67

    invoke-virtual {p3}, Lcom/google/android/marvin/talkback/ac;->c()Ljava/util/List;

    move-result-object v0

    const v3, 0x7f050004

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_67
    iput-boolean v2, p0, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter;->b:Z

    iput-boolean v1, p0, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter;->c:Z

    move v0, v1

    goto :goto_54

    :sswitch_6d
    iget-boolean v0, p0, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter;->c:Z

    if-eqz v0, :cond_7f

    invoke-virtual {p3}, Lcom/google/android/marvin/talkback/ac;->c()Ljava/util/List;

    move-result-object v0

    const v3, 0x7f050005

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7f
    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter;->d:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v0, :cond_8a

    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter;->d:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    iput-object v4, p0, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter;->d:Landroid/view/accessibility/AccessibilityNodeInfo;

    :cond_8a
    iput-boolean v2, p0, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter;->c:Z

    move v0, v1

    goto :goto_54

    :sswitch_8e
    move v0, v1

    goto :goto_54

    :cond_90
    if-nez v6, :cond_94

    move-object v3, v4

    goto :goto_1a

    :cond_94
    invoke-static {v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    :goto_98
    if-nez v0, :cond_9d

    :cond_9a
    move-object v3, v0

    goto/16 :goto_1a

    :cond_9d
    const-class v3, Landroid/widget/AdapterView;

    invoke-static {p2, v0, v3}, Lcom/google/android/marvin/talkback/p;->a(Landroid/content/Context;Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_b1

    move v3, v2

    :goto_a6
    if-nez v3, :cond_9a

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParent()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    move-object v0, v3

    goto :goto_98

    :cond_b1
    invoke-static {v0}, Lcom/google/android/marvin/talkback/p;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v3

    if-eqz v3, :cond_b9

    move v3, v1

    goto :goto_a6

    :cond_b9
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParent()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v7

    if-nez v7, :cond_c1

    move v3, v2

    goto :goto_a6

    :cond_c1
    const-class v3, Landroid/widget/AdapterView;

    invoke-static {p2, v7, v3}, Lcom/google/android/marvin/talkback/p;->a(Landroid/content/Context;Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/Class;)Z

    move-result v3

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    goto :goto_a6

    :cond_cb
    const-class v0, Landroid/view/ViewGroup;

    if-nez p1, :cond_d2

    move v0, v2

    goto/16 :goto_3a

    :cond_d2
    invoke-static {}, Lcom/google/android/marvin/utils/i;->a()Lcom/google/android/marvin/utils/i;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getClassName()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, p2, v7, v4}, Lcom/google/android/marvin/utils/i;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Class;

    move-result-object v5

    if-nez v5, :cond_e3

    move v0, v2

    goto/16 :goto_3a

    :cond_e3
    invoke-virtual {v0, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    goto/16 :goto_3a

    :cond_e9
    if-eqz v3, :cond_117

    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter;->d:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_117

    if-eqz v6, :cond_fd

    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter;->e:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v6, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_117

    :cond_fd
    const-class v0, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter;

    const-string v4, "Same as last announced node, not speaking"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0, v10, v4, v5}, Lcom/google/android/marvin/utils/l;->a(Ljava/lang/Class;ILjava/lang/String;[Ljava/lang/Object;)V

    new-array v0, v1, [Landroid/view/accessibility/AccessibilityNodeInfo;

    aput-object v6, v0, v2

    invoke-static {v0}, Lcom/google/android/marvin/talkback/p;->a([Landroid/view/accessibility/AccessibilityNodeInfo;)V

    new-array v0, v1, [Landroid/view/accessibility/AccessibilityNodeInfo;

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/google/android/marvin/talkback/p;->a([Landroid/view/accessibility/AccessibilityNodeInfo;)V

    move v0, v2

    goto/16 :goto_54

    :cond_117
    invoke-virtual {p3}, Lcom/google/android/marvin/talkback/ac;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v3, :cond_194

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_164

    invoke-static {p2, v3}, Lcom/google/android/marvin/talkback/p;->a(Landroid/content/Context;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v7

    if-eqz v7, :cond_164

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter$DescriptionResult;->a:Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter$DescriptionResult;

    :goto_132
    sget-object v5, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter$DescriptionResult;->b:Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter$DescriptionResult;

    if-ne v0, v5, :cond_197

    invoke-static {p1}, Lcom/google/android/marvin/talkback/ae;->a(Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_19d

    invoke-virtual {p3}, Lcom/google/android/marvin/talkback/ac;->b()Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move v0, v1

    :goto_148
    if-nez v0, :cond_19f

    const-class v0, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter;

    const-string v4, "Failed to populate utterance, not speaking"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0, v10, v4, v5}, Lcom/google/android/marvin/utils/l;->a(Ljava/lang/Class;ILjava/lang/String;[Ljava/lang/Object;)V

    new-array v0, v1, [Landroid/view/accessibility/AccessibilityNodeInfo;

    aput-object v6, v0, v2

    invoke-static {v0}, Lcom/google/android/marvin/talkback/p;->a([Landroid/view/accessibility/AccessibilityNodeInfo;)V

    new-array v0, v1, [Landroid/view/accessibility/AccessibilityNodeInfo;

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/google/android/marvin/talkback/p;->a([Landroid/view/accessibility/AccessibilityNodeInfo;)V

    move v0, v2

    goto/16 :goto_54

    :cond_164
    invoke-static {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter;->a:Lcom/google/android/marvin/talkback/ad;

    iget-object v7, p0, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter;->g:Lcom/google/android/marvin/talkback/h;

    invoke-static {v3, v5, v0, v7}, Lcom/google/android/marvin/talkback/p;->a(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/ArrayList;Ljava/util/Comparator;Lcom/google/android/marvin/talkback/h;)I

    move-result v0

    iget-object v7, p0, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter;->f:Lcom/google/android/marvin/talkback/a/g;

    if-nez v7, :cond_183

    new-instance v7, Lcom/google/android/marvin/talkback/a/g;

    invoke-direct {v7, p2}, Lcom/google/android/marvin/talkback/a/g;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter;->f:Lcom/google/android/marvin/talkback/a/g;

    :cond_183
    invoke-direct {p0, p1, v6, v5, p3}, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter;->a(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/ArrayList;Lcom/google/android/marvin/talkback/ac;)Z

    move-result v7

    invoke-static {v5}, Lcom/google/android/marvin/talkback/p;->a(Ljava/util/ArrayList;)V

    if-eqz v7, :cond_18f

    sget-object v0, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter$DescriptionResult;->a:Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter$DescriptionResult;

    goto :goto_132

    :cond_18f
    if-lez v0, :cond_194

    sget-object v0, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter$DescriptionResult;->c:Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter$DescriptionResult;

    goto :goto_132

    :cond_194
    sget-object v0, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter$DescriptionResult;->b:Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter$DescriptionResult;

    goto :goto_132

    :cond_197
    sget-object v5, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter$DescriptionResult;->a:Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter$DescriptionResult;

    if-ne v0, v5, :cond_19d

    move v0, v1

    goto :goto_148

    :cond_19d
    move v0, v2

    goto :goto_148

    :cond_19f
    invoke-static {v3}, Lcom/google/android/marvin/talkback/p;->b(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v0

    iget-boolean v5, p0, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter;->b:Z

    if-eq v5, v0, :cond_1b9

    iput-boolean v0, p0, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter;->b:Z

    if-eqz v0, :cond_20e

    invoke-virtual {p3}, Lcom/google/android/marvin/talkback/ac;->c()Ljava/util/List;

    move-result-object v0

    const v5, 0x7f050003

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1b9
    :goto_1b9
    invoke-static {v3}, Lcom/google/android/marvin/talkback/p;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v0

    if-eqz v0, :cond_21d

    invoke-virtual {p3}, Lcom/google/android/marvin/talkback/ac;->e()Ljava/util/List;

    move-result-object v0

    const v5, 0x7f070017

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3}, Lcom/google/android/marvin/talkback/ac;->f()Ljava/util/List;

    move-result-object v0

    const v5, 0x7f07001b

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1db
    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter;->d:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v0, :cond_1e4

    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter;->d:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    :cond_1e4
    if-eqz v3, :cond_23a

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter;->d:Landroid/view/accessibility/AccessibilityNodeInfo;

    :goto_1ec
    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter;->e:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v0, :cond_1f5

    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter;->e:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    :cond_1f5
    if-eqz v6, :cond_23d

    invoke-static {v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter;->e:Landroid/view/accessibility/AccessibilityNodeInfo;

    :goto_1fd
    new-array v0, v1, [Landroid/view/accessibility/AccessibilityNodeInfo;

    aput-object v6, v0, v2

    invoke-static {v0}, Lcom/google/android/marvin/talkback/p;->a([Landroid/view/accessibility/AccessibilityNodeInfo;)V

    new-array v0, v1, [Landroid/view/accessibility/AccessibilityNodeInfo;

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/google/android/marvin/talkback/p;->a([Landroid/view/accessibility/AccessibilityNodeInfo;)V

    move v0, v1

    goto/16 :goto_54

    :cond_20e
    invoke-virtual {p3}, Lcom/google/android/marvin/talkback/ac;->c()Ljava/util/List;

    move-result-object v0

    const v5, 0x7f050002

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b9

    :cond_21d
    invoke-virtual {p3}, Lcom/google/android/marvin/talkback/ac;->e()Ljava/util/List;

    move-result-object v0

    const v5, 0x7f070015

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3}, Lcom/google/android/marvin/talkback/ac;->f()Ljava/util/List;

    move-result-object v0

    const v5, 0x7f070019

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1db

    :cond_23a
    iput-object v4, p0, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter;->d:Landroid/view/accessibility/AccessibilityNodeInfo;

    goto :goto_1ec

    :cond_23d
    iput-object v4, p0, Lcom/google/android/marvin/talkback/formatter/TouchExplorationFormatter;->e:Landroid/view/accessibility/AccessibilityNodeInfo;

    goto :goto_1fd

    :sswitch_data_240
    .sparse-switch
        0x100 -> :sswitch_8e
        0x200 -> :sswitch_55
        0x400 -> :sswitch_6d
    .end sparse-switch
.end method
