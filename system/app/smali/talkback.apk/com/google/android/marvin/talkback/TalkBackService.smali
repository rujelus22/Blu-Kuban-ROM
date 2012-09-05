.class public Lcom/google/android/marvin/talkback/TalkBackService;
.super Landroid/accessibilityservice/AccessibilityService;


# instance fields
.field private final a:Ljava/util/ArrayList;

.field private b:Z

.field private c:Lcom/google/android/marvin/talkback/b;

.field private d:Lcom/google/android/marvin/talkback/s;

.field private e:Lcom/google/android/marvin/talkback/l;

.field private f:Lcom/google/android/marvin/talkback/n;

.field private g:Ljava/util/LinkedList;

.field private h:Landroid/media/AudioManager;

.field private i:Landroid/telephony/TelephonyManager;

.field private j:Lcom/google/android/marvin/talkback/ak;

.field private k:Lcom/google/android/marvin/talkback/k;

.field private l:Landroid/view/accessibility/AccessibilityEvent;

.field private m:Lcom/google/android/marvin/talkback/ap;

.field private n:Lcom/google/android/marvin/talkback/d;

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private final s:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->b:Z

    new-instance v0, Lcom/google/android/marvin/talkback/a;

    invoke-direct {v0, p0}, Lcom/google/android/marvin/talkback/a;-><init>(Lcom/google/android/marvin/talkback/TalkBackService;)V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->s:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    return-void
.end method

.method private a()V
    .registers 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->b:Z

    if-nez v0, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    iget-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->m:Lcom/google/android/marvin/talkback/ap;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->m:Lcom/google/android/marvin/talkback/ap;

    invoke-virtual {v0}, Lcom/google/android/marvin/talkback/ap;->c()V

    iput-object v1, p0, Lcom/google/android/marvin/talkback/TalkBackService;->m:Lcom/google/android/marvin/talkback/ap;

    :cond_11
    iget-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->e:Lcom/google/android/marvin/talkback/l;

    invoke-virtual {v0}, Lcom/google/android/marvin/talkback/l;->c()V

    iget-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->f:Lcom/google/android/marvin/talkback/n;

    invoke-virtual {v0}, Lcom/google/android/marvin/talkback/n;->b()V

    iget-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->k:Lcom/google/android/marvin/talkback/k;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->k:Lcom/google/android/marvin/talkback/k;

    invoke-virtual {p0, v0}, Lcom/google/android/marvin/talkback/TalkBackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/google/android/marvin/talkback/TalkBackService;->k:Lcom/google/android/marvin/talkback/k;

    :cond_26
    iget-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->j:Lcom/google/android/marvin/talkback/ak;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->j:Lcom/google/android/marvin/talkback/ak;

    invoke-virtual {v0}, Lcom/google/android/marvin/talkback/ak;->c()V

    iget-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->j:Lcom/google/android/marvin/talkback/ak;

    invoke-virtual {p0, v0}, Lcom/google/android/marvin/talkback/TalkBackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/google/android/marvin/talkback/TalkBackService;->j:Lcom/google/android/marvin/talkback/ak;

    :cond_36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->b:Z

    invoke-direct {p0}, Lcom/google/android/marvin/talkback/TalkBackService;->b()V

    iget-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->c:Lcom/google/android/marvin/talkback/b;

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/google/android/marvin/talkback/b;->b()V

    goto :goto_5
.end method

.method private a(Landroid/content/SharedPreferences;)V
    .registers 5

    invoke-virtual {p0}, Lcom/google/android/marvin/talkback/TalkBackService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070001

    const v2, 0x7f07001d

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/marvin/utils/j;->a(Landroid/content/SharedPreferences;Landroid/content/res/Resources;II)I

    move-result v1

    invoke-static {v1}, Lcom/google/android/marvin/talkback/d;->a(I)Lcom/google/android/marvin/talkback/d;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/marvin/talkback/TalkBackService;->n:Lcom/google/android/marvin/talkback/d;

    const v1, 0x7f070003

    const v2, 0x7f080001

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/marvin/utils/j;->b(Landroid/content/SharedPreferences;Landroid/content/res/Resources;II)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/marvin/talkback/TalkBackService;->p:Z

    const v1, 0x7f070002

    const/high16 v2, 0x7f08

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/marvin/utils/j;->b(Landroid/content/SharedPreferences;Landroid/content/res/Resources;II)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/marvin/talkback/TalkBackService;->o:Z

    const v1, 0x7f070004

    const v2, 0x7f080002

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/marvin/utils/j;->b(Landroid/content/SharedPreferences;Landroid/content/res/Resources;II)Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/marvin/talkback/TalkBackService;->j:Lcom/google/android/marvin/talkback/ak;

    invoke-virtual {v1, v0}, Lcom/google/android/marvin/talkback/ak;->a(Z)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/marvin/talkback/TalkBackService;Landroid/content/SharedPreferences;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/marvin/talkback/TalkBackService;->a(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method private a(Lcom/google/android/marvin/utils/n;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private b()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/marvin/utils/n;

    iget-boolean v2, p0, Lcom/google/android/marvin/talkback/TalkBackService;->b:Z

    invoke-interface {v0, p0, v2}, Lcom/google/android/marvin/utils/n;->a(Landroid/content/Context;Z)V

    goto :goto_6
.end method

.method static synthetic b(Lcom/google/android/marvin/talkback/TalkBackService;Landroid/content/SharedPreferences;)V
    .registers 5

    invoke-virtual {p0}, Lcom/google/android/marvin/talkback/TalkBackService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070009

    const v2, 0x7f07001e

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/marvin/utils/j;->a(Landroid/content/SharedPreferences;Landroid/content/res/Resources;II)I

    move-result v1

    invoke-static {v1}, Lcom/google/android/marvin/utils/l;->a(I)V

    const v1, 0x7f07000e

    const v2, 0x7f080006

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/marvin/utils/j;->b(Landroid/content/SharedPreferences;Landroid/content/res/Resources;II)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v1, p0, Lcom/google/android/marvin/talkback/TalkBackService;->m:Lcom/google/android/marvin/talkback/ap;

    if-nez v1, :cond_2e

    new-instance v0, Lcom/google/android/marvin/talkback/ap;

    invoke-direct {v0, p0}, Lcom/google/android/marvin/talkback/ap;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->m:Lcom/google/android/marvin/talkback/ap;

    iget-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->m:Lcom/google/android/marvin/talkback/ap;

    invoke-virtual {v0}, Lcom/google/android/marvin/talkback/ap;->a()V

    :cond_2d
    :goto_2d
    return-void

    :cond_2e
    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->m:Lcom/google/android/marvin/talkback/ap;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->m:Lcom/google/android/marvin/talkback/ap;

    invoke-virtual {v0}, Lcom/google/android/marvin/talkback/ap;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->m:Lcom/google/android/marvin/talkback/ap;

    goto :goto_2d
.end method


# virtual methods
.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_8

    move v0, v1

    :goto_5
    if-eqz v0, :cond_19f

    :cond_7
    return-void

    :cond_8
    iget-boolean v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->b:Z

    if-nez v0, :cond_e

    move v0, v1

    goto :goto_5

    :cond_e
    iget-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->l:Landroid/view/accessibility/AccessibilityEvent;

    if-eqz v0, :cond_14

    if-nez p1, :cond_19

    :cond_14
    move v0, v2

    :goto_15
    if-eqz v0, :cond_13f

    move v0, v1

    goto :goto_5

    :cond_19
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v4

    if-eq v3, v4, :cond_25

    move v0, v2

    goto :goto_15

    :cond_25
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v3

    if-nez v3, :cond_33

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_43

    move v0, v2

    goto :goto_15

    :cond_33
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_43

    move v0, v2

    goto :goto_15

    :cond_43
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getClassName()Ljava/lang/CharSequence;

    move-result-object v3

    if-nez v3, :cond_51

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getClassName()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_61

    move v0, v2

    goto :goto_15

    :cond_51
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getClassName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getClassName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_61

    move v0, v2

    goto :goto_15

    :cond_61
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_71

    move v0, v2

    goto :goto_15

    :cond_71
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    if-nez v3, :cond_7f

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_8f

    move v0, v2

    goto :goto_15

    :cond_7f
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8f

    move v0, v2

    goto :goto_15

    :cond_8f
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getBeforeText()Ljava/lang/CharSequence;

    move-result-object v3

    if-nez v3, :cond_9e

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getBeforeText()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_af

    move v0, v2

    goto/16 :goto_15

    :cond_9e
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getBeforeText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getBeforeText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_af

    move v0, v2

    goto/16 :goto_15

    :cond_af
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getParcelableData()Landroid/os/Parcelable;

    move-result-object v3

    if-eqz v3, :cond_b8

    move v0, v2

    goto/16 :goto_15

    :cond_b8
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getAddedCount()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getAddedCount()I

    move-result v4

    if-eq v3, v4, :cond_c5

    move v0, v2

    goto/16 :goto_15

    :cond_c5
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->isChecked()Z

    move-result v3

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->isChecked()Z

    move-result v4

    if-eq v3, v4, :cond_d2

    move v0, v2

    goto/16 :goto_15

    :cond_d2
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->isEnabled()Z

    move-result v3

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->isEnabled()Z

    move-result v4

    if-eq v3, v4, :cond_df

    move v0, v2

    goto/16 :goto_15

    :cond_df
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getFromIndex()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getFromIndex()I

    move-result v4

    if-eq v3, v4, :cond_ec

    move v0, v2

    goto/16 :goto_15

    :cond_ec
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->isFullScreen()Z

    move-result v3

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->isFullScreen()Z

    move-result v4

    if-eq v3, v4, :cond_f9

    move v0, v2

    goto/16 :goto_15

    :cond_f9
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getCurrentItemIndex()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getCurrentItemIndex()I

    move-result v4

    if-eq v3, v4, :cond_106

    move v0, v2

    goto/16 :goto_15

    :cond_106
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getItemCount()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getItemCount()I

    move-result v4

    if-eq v3, v4, :cond_113

    move v0, v2

    goto/16 :goto_15

    :cond_113
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->isPassword()Z

    move-result v3

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->isPassword()Z

    move-result v4

    if-eq v3, v4, :cond_120

    move v0, v2

    goto/16 :goto_15

    :cond_120
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getRemovedCount()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getRemovedCount()I

    move-result v4

    if-eq v3, v4, :cond_12d

    move v0, v2

    goto/16 :goto_15

    :cond_12d
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventTime()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-eqz v0, :cond_13c

    move v0, v2

    goto/16 :goto_15

    :cond_13c
    move v0, v1

    goto/16 :goto_15

    :cond_13f
    iget-boolean v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->p:Z

    if-eqz v0, :cond_14f

    iget-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->i:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_14f

    iget-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->i:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-eq v0, v1, :cond_19c

    :cond_14f
    iget-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->n:Lcom/google/android/marvin/talkback/d;

    iget-object v3, p0, Lcom/google/android/marvin/talkback/TalkBackService;->h:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    sget-object v4, Lcom/google/android/marvin/talkback/d;->b:Lcom/google/android/marvin/talkback/d;

    if-ne v0, v4, :cond_162

    if-eq v3, v1, :cond_15f

    if-nez v3, :cond_162

    :cond_15f
    move v0, v1

    goto/16 :goto_5

    :cond_162
    sget-object v4, Lcom/google/android/marvin/talkback/d;->a:Lcom/google/android/marvin/talkback/d;

    if-ne v0, v4, :cond_16b

    if-nez v3, :cond_16b

    move v0, v1

    goto/16 :goto_5

    :cond_16b
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v3, 0x40

    if-ne v0, v3, :cond_196

    move v0, v1

    :goto_174
    iget-boolean v3, p0, Lcom/google/android/marvin/talkback/TalkBackService;->o:Z

    if-nez v3, :cond_198

    iget-object v3, p0, Lcom/google/android/marvin/talkback/TalkBackService;->j:Lcom/google/android/marvin/talkback/ak;

    invoke-virtual {v3}, Lcom/google/android/marvin/talkback/ak;->b()Z

    move-result v3

    if-eqz v3, :cond_198

    move v3, v1

    :goto_181
    iget-boolean v4, p0, Lcom/google/android/marvin/talkback/TalkBackService;->r:Z

    if-eqz v4, :cond_19a

    if-eqz v0, :cond_19a

    move v4, v1

    :goto_188
    if-nez v3, :cond_18c

    if-eqz v4, :cond_19c

    :cond_18c
    if-eqz v0, :cond_193

    iget-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->d:Lcom/google/android/marvin/talkback/s;

    invoke-virtual {v0, p1}, Lcom/google/android/marvin/talkback/s;->a(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_193
    move v0, v1

    goto/16 :goto_5

    :cond_196
    move v0, v2

    goto :goto_174

    :cond_198
    move v3, v2

    goto :goto_181

    :cond_19a
    move v4, v2

    goto :goto_188

    :cond_19c
    move v0, v2

    goto/16 :goto_5

    :cond_19f
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v3, 0x200

    if-ne v0, v3, :cond_1ce

    iput-boolean v1, p0, Lcom/google/android/marvin/talkback/TalkBackService;->r:Z

    :cond_1a9
    :goto_1a9
    iget-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->l:Landroid/view/accessibility/AccessibilityEvent;

    if-eqz v0, :cond_1b2

    iget-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->l:Landroid/view/accessibility/AccessibilityEvent;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    :cond_1b2
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->l:Landroid/view/accessibility/AccessibilityEvent;

    iget-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->g:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1be
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/marvin/talkback/ao;

    invoke-interface {v0, p1}, Lcom/google/android/marvin/talkback/ao;->a(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_1be

    :cond_1ce
    const/16 v3, 0x400

    if-ne v0, v3, :cond_1a9

    iput-boolean v2, p0, Lcom/google/android/marvin/talkback/TalkBackService;->r:Z

    iget-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->d:Lcom/google/android/marvin/talkback/s;

    invoke-virtual {v0}, Lcom/google/android/marvin/talkback/s;->b()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1fa

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const v5, 0x7f070052

    invoke-virtual {p0, v5}, Lcom/google/android/marvin/talkback/TalkBackService;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Lcom/google/android/marvin/utils/a;->a(Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/marvin/talkback/TalkBackService;->e:Lcom/google/android/marvin/talkback/l;

    sget-object v2, Lcom/google/android/marvin/talkback/t;->a:Lcom/google/android/marvin/talkback/t;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/marvin/talkback/l;->a(Ljava/lang/CharSequence;Lcom/google/android/marvin/talkback/t;)V

    :cond_1fa
    iget-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->d:Lcom/google/android/marvin/talkback/s;

    invoke-virtual {v0}, Lcom/google/android/marvin/talkback/s;->a()V

    goto :goto_1a9
.end method

.method public onCreate()V
    .registers 1

    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .registers 1

    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onDestroy()V

    invoke-direct {p0}, Lcom/google/android/marvin/talkback/TalkBackService;->a()V

    return-void
.end method

.method public onInterrupt()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->e:Lcom/google/android/marvin/talkback/l;

    invoke-virtual {v0}, Lcom/google/android/marvin/talkback/l;->a()V

    iget-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->f:Lcom/google/android/marvin/talkback/n;

    invoke-virtual {v0}, Lcom/google/android/marvin/talkback/n;->a()V

    return-void
.end method

.method protected onServiceConnected()V
    .registers 8

    invoke-direct {p0}, Lcom/google/android/marvin/talkback/TalkBackService;->a()V

    new-instance v0, Lcom/google/android/marvin/talkback/b;

    invoke-direct {v0, p0}, Lcom/google/android/marvin/talkback/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->c:Lcom/google/android/marvin/talkback/b;

    iget-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->c:Lcom/google/android/marvin/talkback/b;

    invoke-virtual {v0}, Lcom/google/android/marvin/talkback/b;->a()V

    new-instance v0, Lcom/google/android/marvin/talkback/s;

    invoke-direct {v0, p0}, Lcom/google/android/marvin/talkback/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->d:Lcom/google/android/marvin/talkback/s;

    new-instance v0, Lcom/google/android/marvin/talkback/l;

    invoke-direct {v0, p0}, Lcom/google/android/marvin/talkback/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->e:Lcom/google/android/marvin/talkback/l;

    invoke-static {p0}, Lcom/google/android/marvin/talkback/n;->a(Landroid/content/Context;)Lcom/google/android/marvin/talkback/n;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->f:Lcom/google/android/marvin/talkback/n;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->g:Ljava/util/LinkedList;

    iget-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->g:Ljava/util/LinkedList;

    new-instance v1, Lcom/google/android/marvin/talkback/u;

    iget-object v2, p0, Lcom/google/android/marvin/talkback/TalkBackService;->f:Lcom/google/android/marvin/talkback/n;

    iget-object v3, p0, Lcom/google/android/marvin/talkback/TalkBackService;->e:Lcom/google/android/marvin/talkback/l;

    invoke-direct {v1, p0, v2, v3}, Lcom/google/android/marvin/talkback/u;-><init>(Landroid/content/Context;Lcom/google/android/marvin/talkback/n;Lcom/google/android/marvin/talkback/l;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->g:Ljava/util/LinkedList;

    new-instance v1, Lcom/google/android/marvin/talkback/an;

    iget-object v2, p0, Lcom/google/android/marvin/talkback/TalkBackService;->e:Lcom/google/android/marvin/talkback/l;

    invoke-direct {v1, p0, v2}, Lcom/google/android/marvin/talkback/an;-><init>(Landroid/content/Context;Lcom/google/android/marvin/talkback/l;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->g:Ljava/util/LinkedList;

    new-instance v1, Lcom/google/android/marvin/talkback/m;

    iget-object v2, p0, Lcom/google/android/marvin/talkback/TalkBackService;->e:Lcom/google/android/marvin/talkback/l;

    invoke-direct {v1, p0, v2}, Lcom/google/android/marvin/talkback/m;-><init>(Landroid/content/Context;Lcom/google/android/marvin/talkback/l;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/google/android/marvin/talkback/TalkBackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->h:Landroid/media/AudioManager;

    invoke-virtual {p0}, Lcom/google/android/marvin/talkback/TalkBackService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v0, "android.hardware.telephony"

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->q:Z

    iget-boolean v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->q:Z

    if-eqz v0, :cond_8d

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/google/android/marvin/talkback/TalkBackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->i:Landroid/telephony/TelephonyManager;

    new-instance v0, Lcom/google/android/marvin/talkback/k;

    iget-object v2, p0, Lcom/google/android/marvin/talkback/TalkBackService;->e:Lcom/google/android/marvin/talkback/l;

    iget-object v3, p0, Lcom/google/android/marvin/talkback/TalkBackService;->f:Lcom/google/android/marvin/talkback/n;

    invoke-direct {v0, v2, v3}, Lcom/google/android/marvin/talkback/k;-><init>(Lcom/google/android/marvin/talkback/l;Lcom/google/android/marvin/talkback/n;)V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->k:Lcom/google/android/marvin/talkback/k;

    iget-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->k:Lcom/google/android/marvin/talkback/k;

    invoke-static {}, Lcom/google/android/marvin/talkback/k;->a()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/marvin/talkback/TalkBackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->k:Lcom/google/android/marvin/talkback/k;

    invoke-direct {p0, v0}, Lcom/google/android/marvin/talkback/TalkBackService;->a(Lcom/google/android/marvin/utils/n;)V

    :cond_8d
    const-string v0, "android.hardware.touchscreen"

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/marvin/talkback/TalkBackService;->q:Z

    if-nez v1, :cond_99

    if-eqz v0, :cond_bb

    :cond_99
    new-instance v0, Lcom/google/android/marvin/talkback/ak;

    iget-object v2, p0, Lcom/google/android/marvin/talkback/TalkBackService;->f:Lcom/google/android/marvin/talkback/n;

    iget-object v3, p0, Lcom/google/android/marvin/talkback/TalkBackService;->e:Lcom/google/android/marvin/talkback/l;

    iget-object v4, p0, Lcom/google/android/marvin/talkback/TalkBackService;->h:Landroid/media/AudioManager;

    iget-object v5, p0, Lcom/google/android/marvin/talkback/TalkBackService;->i:Landroid/telephony/TelephonyManager;

    iget-object v6, p0, Lcom/google/android/marvin/talkback/TalkBackService;->d:Lcom/google/android/marvin/talkback/s;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/marvin/talkback/ak;-><init>(Landroid/content/Context;Lcom/google/android/marvin/talkback/n;Lcom/google/android/marvin/talkback/l;Landroid/media/AudioManager;Landroid/telephony/TelephonyManager;Lcom/google/android/marvin/talkback/s;)V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->j:Lcom/google/android/marvin/talkback/ak;

    iget-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->j:Lcom/google/android/marvin/talkback/ak;

    iget-object v1, p0, Lcom/google/android/marvin/talkback/TalkBackService;->j:Lcom/google/android/marvin/talkback/ak;

    invoke-virtual {v1}, Lcom/google/android/marvin/talkback/ak;->a()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/marvin/talkback/TalkBackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->j:Lcom/google/android/marvin/talkback/ak;

    invoke-direct {p0, v0}, Lcom/google/android/marvin/talkback/TalkBackService;->a(Lcom/google/android/marvin/utils/n;)V

    :cond_bb
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/marvin/talkback/TalkBackService;->s:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-direct {p0, v0}, Lcom/google/android/marvin/talkback/TalkBackService;->a(Landroid/content/SharedPreferences;)V

    invoke-static {}, Lcom/google/android/marvin/utils/i;->a()Lcom/google/android/marvin/utils/i;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/marvin/talkback/TalkBackService;->a(Lcom/google/android/marvin/utils/n;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->b:Z

    invoke-direct {p0}, Lcom/google/android/marvin/talkback/TalkBackService;->b()V

    iget-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService;->c:Lcom/google/android/marvin/talkback/b;

    invoke-virtual {v0}, Lcom/google/android/marvin/talkback/b;->c()V

    return-void
.end method
