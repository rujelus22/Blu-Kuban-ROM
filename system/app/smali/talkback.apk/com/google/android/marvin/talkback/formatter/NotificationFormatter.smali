.class public Lcom/google/android/marvin/talkback/formatter/NotificationFormatter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$AccessibilityEventFormatter;


# instance fields
.field private final a:Ljava/util/LinkedList;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/formatter/NotificationFormatter;->a:Ljava/util/LinkedList;

    return-void
.end method

.method private declared-synchronized a(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 12

    const/4 v3, 0x1

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_3
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getParcelableData()Landroid/os/Parcelable;

    move-result-object v0

    instance-of v1, v0, Landroid/app/Notification;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_51

    if-nez v1, :cond_e

    move v0, v2

    :goto_c
    monitor-exit p0

    return v0

    :cond_e
    :try_start_e
    check-cast v0, Landroid/app/Notification;

    iget-object v1, p0, Lcom/google/android/marvin/talkback/formatter/NotificationFormatter;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_16
    :goto_16
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_39

    const/4 v1, 0x0

    :goto_1d
    if-eqz v1, :cond_94

    iget-wide v4, v1, Landroid/app/Notification;->when:J

    iput-wide v4, v0, Landroid/app/Notification;->when:J

    :goto_23
    iget-object v4, p0, Lcom/google/android/marvin/talkback/formatter/NotificationFormatter;->a:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/NotificationFormatter;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, v3, :cond_35

    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/NotificationFormatter;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    :cond_35
    if-eqz v1, :cond_9b

    move v0, v3

    goto :goto_c

    :cond_39
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Notification;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, v1, Landroid/app/Notification;->when:J

    sub-long/2addr v6, v8

    const-wide/32 v8, 0xea60

    cmp-long v4, v6, v8

    if-lez v4, :cond_54

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V
    :try_end_50
    .catchall {:try_start_e .. :try_end_50} :catchall_51

    goto :goto_16

    :catchall_51
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_54
    :try_start_54
    iget-object v4, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v6, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_65

    move v4, v2

    :goto_5f
    if-eqz v4, :cond_16

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_1d

    :cond_65
    iget-object v4, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iget-object v6, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eq v4, v6, :cond_90

    if-eqz v4, :cond_6f

    if-nez v6, :cond_74

    :cond_6f
    move v4, v2

    :goto_70
    if-nez v4, :cond_92

    move v4, v2

    goto :goto_5f

    :cond_74
    invoke-virtual {v4}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_84

    move v4, v2

    goto :goto_70

    :cond_84
    invoke-virtual {v4}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v4

    invoke-virtual {v6}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v6

    if-eq v4, v6, :cond_90

    move v4, v2

    goto :goto_70

    :cond_90
    move v4, v3

    goto :goto_70

    :cond_92
    move v4, v3

    goto :goto_5f

    :cond_94
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Landroid/app/Notification;->when:J
    :try_end_9a
    .catchall {:try_start_54 .. :try_end_9a} :catchall_51

    goto :goto_23

    :cond_9b
    move v0, v2

    goto/16 :goto_c
.end method


# virtual methods
.method public final a(Landroid/view/accessibility/AccessibilityEvent;Landroid/content/Context;Lcom/google/android/marvin/talkback/ac;)Z
    .registers 10

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/marvin/talkback/formatter/NotificationFormatter;->a(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v2

    :goto_a
    return v0

    :cond_b
    invoke-virtual {p3}, Lcom/google/android/marvin/talkback/ac;->b()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getParcelableData()Landroid/os/Parcelable;

    move-result-object v0

    instance-of v5, v0, Landroid/app/Notification;

    if-nez v5, :cond_38

    move-object v0, v1

    :goto_18
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_25

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-static {v4, v1}, Lcom/google/android/marvin/utils/a;->a(Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_25
    invoke-static {p1}, Lcom/google/android/marvin/talkback/ae;->a(Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_36

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-static {v4, v1}, Lcom/google/android/marvin/utils/a;->a(Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_36
    move v0, v3

    goto :goto_a

    :cond_38
    check-cast v0, Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->icon:I

    const v5, 0x1080084

    if-ne v0, v5, :cond_43

    move-object v0, v1

    goto :goto_18

    :cond_43
    invoke-static {p2, v0}, Lcom/google/android/marvin/talkback/e;->a(Landroid/content/Context;I)Lcom/google/android/marvin/talkback/e;

    move-result-object v0

    if-nez v0, :cond_4b

    move-object v0, v1

    goto :goto_18

    :cond_4b
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/marvin/talkback/e;->a()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_18
.end method
