.class public final Lcom/google/android/marvin/talkback/u;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/marvin/talkback/ao;


# instance fields
.field private final a:Lcom/google/android/marvin/talkback/q;

.field private final b:Lcom/google/android/marvin/talkback/c;

.field private final c:Lcom/google/android/marvin/talkback/j;

.field private final d:Lcom/google/android/marvin/talkback/n;

.field private final e:Lcom/google/android/marvin/talkback/l;

.field private f:Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;

.field private g:Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/marvin/talkback/n;Lcom/google/android/marvin/talkback/l;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/marvin/talkback/q;

    invoke-direct {v0, p0}, Lcom/google/android/marvin/talkback/q;-><init>(Lcom/google/android/marvin/talkback/u;)V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/u;->a:Lcom/google/android/marvin/talkback/q;

    new-instance v0, Lcom/google/android/marvin/talkback/c;

    invoke-direct {v0}, Lcom/google/android/marvin/talkback/c;-><init>()V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/u;->b:Lcom/google/android/marvin/talkback/c;

    new-instance v0, Lcom/google/android/marvin/talkback/j;

    invoke-direct {v0, p1}, Lcom/google/android/marvin/talkback/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/u;->c:Lcom/google/android/marvin/talkback/j;

    iput-object p2, p0, Lcom/google/android/marvin/talkback/u;->d:Lcom/google/android/marvin/talkback/n;

    iput-object p3, p0, Lcom/google/android/marvin/talkback/u;->e:Lcom/google/android/marvin/talkback/l;

    new-instance v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;

    invoke-direct {v0, p1}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/u;->g:Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;

    new-instance v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/marvin/talkback/u;->g:Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;

    invoke-direct {v0, v1, v2}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;-><init>(Ljava/lang/String;Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;)V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/u;->f:Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;

    iget-object v0, p0, Lcom/google/android/marvin/talkback/u;->f:Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;

    invoke-virtual {v0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;->a()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/marvin/talkback/u;)Lcom/google/android/marvin/talkback/c;
    .registers 2

    iget-object v0, p0, Lcom/google/android/marvin/talkback/u;->b:Lcom/google/android/marvin/talkback/c;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/marvin/talkback/u;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 8

    const-class v0, Lcom/google/android/marvin/talkback/TalkBackService;

    const/4 v1, 0x3

    const-string v2, "Processing event : %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/marvin/utils/l;->a(Ljava/lang/Class;ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/android/marvin/talkback/ac;->a()Lcom/google/android/marvin/talkback/ac;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/marvin/talkback/u;->g:Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;->a(Landroid/view/accessibility/AccessibilityEvent;Lcom/google/android/marvin/talkback/ac;)Z

    move-result v0

    if-nez v0, :cond_22

    invoke-virtual {v1}, Lcom/google/android/marvin/talkback/ac;->h()V

    :goto_21
    return-void

    :cond_22
    invoke-virtual {v1}, Lcom/google/android/marvin/talkback/ac;->g()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "earcon_rate"

    const/high16 v3, 0x3f80

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-virtual {v1}, Lcom/google/android/marvin/talkback/ac;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_36
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8e

    invoke-virtual {v1}, Lcom/google/android/marvin/talkback/ac;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_44
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9e

    invoke-virtual {v1}, Lcom/google/android/marvin/talkback/ac;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_52
    :goto_52
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_ae

    invoke-virtual {v1}, Lcom/google/android/marvin/talkback/ac;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_60
    :goto_60
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c6

    invoke-virtual {v1}, Lcom/google/android/marvin/talkback/ac;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_87

    invoke-virtual {v1}, Lcom/google/android/marvin/talkback/ac;->g()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v2

    iget v3, p0, Lcom/google/android/marvin/talkback/u;->h:I

    if-ne v3, v2, :cond_de

    sget-object v0, Lcom/google/android/marvin/talkback/t;->a:Lcom/google/android/marvin/talkback/t;

    :goto_7e
    invoke-virtual {v1}, Lcom/google/android/marvin/talkback/ac;->b()Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/marvin/talkback/u;->e:Lcom/google/android/marvin/talkback/l;

    invoke-virtual {v3, v2, v0}, Lcom/google/android/marvin/talkback/l;->a(Ljava/lang/CharSequence;Lcom/google/android/marvin/talkback/t;)V

    :cond_87
    invoke-virtual {v1}, Lcom/google/android/marvin/talkback/ac;->h()V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    goto :goto_21

    :cond_8e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v4, p0, Lcom/google/android/marvin/talkback/u;->d:Lcom/google/android/marvin/talkback/n;

    invoke-virtual {v4, v0, v2}, Lcom/google/android/marvin/talkback/n;->a(IF)Z

    goto :goto_36

    :cond_9e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v4, p0, Lcom/google/android/marvin/talkback/u;->d:Lcom/google/android/marvin/talkback/n;

    invoke-virtual {v4, v0}, Lcom/google/android/marvin/talkback/n;->b(I)Z

    goto :goto_44

    :cond_ae
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v4, p0, Lcom/google/android/marvin/talkback/u;->c:Lcom/google/android/marvin/talkback/j;

    invoke-virtual {v4, v0}, Lcom/google/android/marvin/talkback/j;->a(I)I

    move-result v0

    if-lez v0, :cond_52

    iget-object v4, p0, Lcom/google/android/marvin/talkback/u;->d:Lcom/google/android/marvin/talkback/n;

    invoke-virtual {v4, v0, v2}, Lcom/google/android/marvin/talkback/n;->a(IF)Z

    goto :goto_52

    :cond_c6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p0, Lcom/google/android/marvin/talkback/u;->c:Lcom/google/android/marvin/talkback/j;

    invoke-virtual {v3, v0}, Lcom/google/android/marvin/talkback/j;->a(I)I

    move-result v0

    if-lez v0, :cond_60

    iget-object v3, p0, Lcom/google/android/marvin/talkback/u;->d:Lcom/google/android/marvin/talkback/n;

    invoke-virtual {v3, v0}, Lcom/google/android/marvin/talkback/n;->b(I)Z

    goto :goto_60

    :cond_de
    iput v2, p0, Lcom/google/android/marvin/talkback/u;->h:I

    const-string v2, "queuing"

    sget-object v3, Lcom/google/android/marvin/talkback/t;->a:Lcom/google/android/marvin/talkback/t;

    invoke-virtual {v3}, Lcom/google/android/marvin/talkback/t;->ordinal()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/marvin/talkback/t;->a(I)Lcom/google/android/marvin/talkback/t;

    move-result-object v0

    goto :goto_7e
.end method


# virtual methods
.method public final a(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 7

    iget-object v1, p0, Lcom/google/android/marvin/talkback/u;->b:Lcom/google/android/marvin/talkback/c;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/marvin/talkback/u;->b:Lcom/google/android/marvin/talkback/c;

    invoke-virtual {v0, p1}, Lcom/google/android/marvin/talkback/c;->a(Landroid/view/accessibility/AccessibilityEvent;)Z

    iget-object v0, p0, Lcom/google/android/marvin/talkback/u;->a:Lcom/google/android/marvin/talkback/q;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/marvin/talkback/q;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/google/android/marvin/talkback/q;->removeMessages(I)V

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/marvin/talkback/q;->sendMessageDelayed(Landroid/os/Message;J)Z

    monitor-exit v1

    return-void

    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v0
.end method
