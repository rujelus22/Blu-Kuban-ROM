.class public Lcom/google/ads/AdView;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lcom/google/ads/a;


# instance fields
.field private a:Lcom/google/ads/am;

.field private b:Lcom/google/ads/a/q;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/ads/g;Ljava/lang/String;)V
    .registers 7

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    :try_start_9
    invoke-direct {p0, p1, p2, v0}, Lcom/google/ads/AdView;->a(Landroid/content/Context;Lcom/google/ads/g;Landroid/util/AttributeSet;)Z

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/ads/AdView;->b(Landroid/content/Context;Lcom/google/ads/g;Landroid/util/AttributeSet;)Z

    invoke-direct {p0, p1, p2, p3}, Lcom/google/ads/AdView;->a(Landroid/app/Activity;Lcom/google/ads/g;Ljava/lang/String;)V
    :try_end_13
    .catch Lcom/google/ads/a/i; {:try_start_9 .. :try_end_13} :catch_14

    :goto_13
    return-void

    :catch_14
    move-exception v0

    const-string v1, "Could not initialize AdView"

    invoke-virtual {v0, v1}, Lcom/google/ads/a/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1, p2, v2}, Lcom/google/ads/AdView;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/ads/g;Landroid/util/AttributeSet;)V

    const-string v1, "Could not initialize AdView"

    invoke-virtual {v0, v1}, Lcom/google/ads/a/i;->a(Ljava/lang/String;)V

    goto :goto_13
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 15

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    if-eqz p2, :cond_4e

    :try_start_8
    const-string v2, "adSize"

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/ads/AdView;->a(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZ)Ljava/lang/String;

    move-result-object v1

    const-string v2, "BANNER"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    sget-object v5, Lcom/google/ads/g;->b:Lcom/google/ads/g;
    :try_end_1d
    .catch Lcom/google/ads/a/i; {:try_start_8 .. :try_end_1d} :catch_10e

    :goto_1d
    if-nez v5, :cond_88

    :try_start_1f
    new-instance v2, Lcom/google/ads/a/i;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Attribute \"adSize\" invalid: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/ads/a/i;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_34
    .catch Lcom/google/ads/a/i; {:try_start_1f .. :try_end_34} :catch_34

    :catch_34
    move-exception v1

    :goto_35
    const-string v2, "Could not initialize AdView"

    invoke-virtual {v1, v2}, Lcom/google/ads/a/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2, v5, p2}, Lcom/google/ads/AdView;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/ads/g;Landroid/util/AttributeSet;)V

    const-string v2, "Could not initialize AdView"

    invoke-virtual {v1, v2}, Lcom/google/ads/a/i;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/ads/AdView;->isInEditMode()Z

    move-result v2

    if-nez v2, :cond_4e

    const-string v2, "Could not initialize AdView"

    invoke-virtual {v1, v2}, Lcom/google/ads/a/i;->b(Ljava/lang/String;)V

    :cond_4e
    :goto_4e
    return-void

    :cond_4f
    :try_start_4f
    const-string v2, "SMART_BANNER"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    sget-object v5, Lcom/google/ads/g;->a:Lcom/google/ads/g;

    goto :goto_1d

    :cond_5a
    const-string v2, "IAB_MRECT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    sget-object v5, Lcom/google/ads/g;->c:Lcom/google/ads/g;

    goto :goto_1d

    :cond_65
    const-string v2, "IAB_BANNER"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_70

    sget-object v5, Lcom/google/ads/g;->d:Lcom/google/ads/g;

    goto :goto_1d

    :cond_70
    const-string v2, "IAB_LEADERBOARD"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7b

    sget-object v5, Lcom/google/ads/g;->e:Lcom/google/ads/g;

    goto :goto_1d

    :cond_7b
    const-string v2, "IAB_WIDE_SKYSCRAPER"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_86

    sget-object v5, Lcom/google/ads/g;->f:Lcom/google/ads/g;
    :try_end_85
    .catch Lcom/google/ads/a/i; {:try_start_4f .. :try_end_85} :catch_10e

    goto :goto_1d

    :cond_86
    move-object v5, v7

    goto :goto_1d

    :cond_88
    :try_start_88
    const-string v1, "adUnitId"

    const-string v2, "http://schemas.android.com/apk/lib/com.google.ads"

    invoke-interface {p2, v2, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9d

    move v1, v8

    :goto_93
    if-nez v1, :cond_9f

    new-instance v1, Lcom/google/ads/a/i;

    const-string v2, "Required XML attribute \"adUnitId\" missing"

    invoke-direct {v1, v2}, Lcom/google/ads/a/i;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9d
    move v1, v9

    goto :goto_93

    :cond_9f
    invoke-virtual {p0}, Lcom/google/ads/AdView;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_af

    const-string v3, "Ads by Google"

    const/4 v4, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/ads/AdView;->a(Landroid/content/Context;Ljava/lang/String;ILcom/google/ads/g;Landroid/util/AttributeSet;)V

    goto :goto_4e

    :cond_af
    const-string v7, "adUnitId"

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object v6, p0

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v6 .. v11}, Lcom/google/ads/AdView;->a(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZ)Ljava/lang/String;

    move-result-object v2

    const-string v1, "http://schemas.android.com/apk/lib/com.google.ads"

    const-string v3, "loadAdOnCreate"

    const/4 v4, 0x0

    invoke-interface {p2, v1, v3, v4}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_106

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    invoke-direct {p0, v1, v5, p2}, Lcom/google/ads/AdView;->a(Landroid/content/Context;Lcom/google/ads/g;Landroid/util/AttributeSet;)Z

    invoke-direct {p0, v1, v5, p2}, Lcom/google/ads/AdView;->b(Landroid/content/Context;Lcom/google/ads/g;Landroid/util/AttributeSet;)Z

    invoke-direct {p0, v1, v5, v2}, Lcom/google/ads/AdView;->a(Landroid/app/Activity;Lcom/google/ads/g;Ljava/lang/String;)V

    if-eqz v3, :cond_4e

    const-string v1, "testDevices"

    invoke-direct {p0, v1, p1, p2}, Lcom/google/ads/AdView;->a(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/util/Set;

    move-result-object v1

    const-string v2, "TEST_EMULATOR"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ee

    const-string v2, "TEST_EMULATOR"

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v2, Lcom/google/ads/d;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_ee
    new-instance v2, Lcom/google/ads/d;

    invoke-direct {v2}, Lcom/google/ads/d;-><init>()V

    invoke-virtual {v2, v1}, Lcom/google/ads/d;->b(Ljava/util/Set;)Lcom/google/ads/d;

    move-result-object v1

    const-string v2, "keywords"

    invoke-direct {p0, v2, p1, p2}, Lcom/google/ads/AdView;->a(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/ads/d;->a(Ljava/util/Set;)Lcom/google/ads/d;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/ads/AdView;->a(Lcom/google/ads/d;)V

    goto/16 :goto_4e

    :cond_106
    new-instance v1, Lcom/google/ads/a/i;

    const-string v2, "AdView was initialized with a Context that wasn\'t an Activity."

    invoke-direct {v1, v2}, Lcom/google/ads/a/i;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_10e
    .catch Lcom/google/ads/a/i; {:try_start_88 .. :try_end_10e} :catch_34

    :catch_10e
    move-exception v1

    move-object v5, v7

    goto/16 :goto_35
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/ads/AdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private static a(Landroid/content/Context;I)I
    .registers 5

    const/4 v0, 0x1

    int-to-float v1, p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private a(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZ)Ljava/lang/String;
    .registers 12

    const-string v0, "http://schemas.android.com/apk/lib/com.google.ads"

    invoke-interface {p3, v0, p1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a9

    const-string v0, "@string/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a9

    if-eqz p4, :cond_a9

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    :try_start_21
    invoke-virtual {p0}, Lcom/google/ads/AdView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ":string/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v4, v0, v3, v2}, Landroid/content/res/Resources;->getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V
    :try_end_40
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_21 .. :try_end_40} :catch_69

    iget-object v0, v3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v0, :cond_89

    iget-object v0, v3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4a
    if-eqz p5, :cond_a8

    if-nez v0, :cond_a8

    new-instance v0, Lcom/google/ads/a/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required XML attribute \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" missing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ads/a/i;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_69
    move-exception v0

    new-instance v2, Lcom/google/ads/a/i;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not find resource for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lcom/google/ads/a/i;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_89
    new-instance v0, Lcom/google/ads/a/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Resource "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was not a string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ads/a/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a8
    return-object v0

    :cond_a9
    move-object v0, v1

    goto :goto_4a
.end method

.method private a(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/util/Set;
    .registers 10

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/AdView;->a(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZ)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    if-eqz v0, :cond_2c

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    :goto_18
    if-ge v4, v2, :cond_2c

    aget-object v3, v0, v4

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_29

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_29
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    :cond_2c
    return-object v1
.end method

.method private a(Landroid/app/Activity;Lcom/google/ads/g;Ljava/lang/String;)V
    .registers 9

    const/4 v4, -0x2

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    invoke-static {p0, p3, p1, v1, p2}, Lcom/google/ads/am;->a(Lcom/google/ads/a;Ljava/lang/String;Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/google/ads/g;)Lcom/google/ads/am;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/AdView;->a:Lcom/google/ads/am;

    new-instance v0, Lcom/google/ads/a/q;

    iget-object v2, p0, Lcom/google/ads/AdView;->a:Lcom/google/ads/am;

    invoke-direct {v0, v2}, Lcom/google/ads/a/q;-><init>(Lcom/google/ads/am;)V

    iput-object v0, p0, Lcom/google/ads/AdView;->b:Lcom/google/ads/a/q;

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/google/ads/AdView;->setGravity(I)V

    :try_start_1e
    iget-object v0, p0, Lcom/google/ads/AdView;->b:Lcom/google/ads/a/q;

    invoke-static {p1, v0}, Lcom/google/ads/a/y;->a(Landroid/app/Activity;Lcom/google/ads/a/q;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_31

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/ads/AdView;->addView(Landroid/view/View;II)V

    :goto_30
    return-void

    :cond_31
    const/4 v0, -0x2

    const/4 v2, -0x2

    invoke-virtual {p0, v1, v0, v2}, Lcom/google/ads/AdView;->addView(Landroid/view/View;II)V
    :try_end_36
    .catch Ljava/lang/VerifyError; {:try_start_1e .. :try_end_36} :catch_37

    goto :goto_30

    :catch_37
    move-exception v0

    const-string v2, "Gestures disabled: Not supported on this version of Android."

    invoke-static {v2, v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1, v4, v4}, Lcom/google/ads/AdView;->addView(Landroid/view/View;II)V

    goto :goto_30
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;ILcom/google/ads/g;Landroid/util/AttributeSet;)V
    .registers 13

    const/16 v4, 0x11

    if-nez p4, :cond_6

    sget-object p4, Lcom/google/ads/g;->b:Lcom/google/ads/g;

    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/google/ads/g;->a(Lcom/google/ads/g;Landroid/content/Context;)Lcom/google/ads/g;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/ads/AdView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_5d

    if-nez p5, :cond_5e

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    :goto_1b
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    if-nez p5, :cond_64

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    :goto_30
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    if-nez p5, :cond_6a

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    :goto_3a
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v2, p3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-virtual {v3}, Lcom/google/ads/g;->a()I

    move-result v4

    invoke-static {p1, v4}, Lcom/google/ads/AdView;->a(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3}, Lcom/google/ads/g;->b()I

    move-result v3

    invoke-static {p1, v3}, Lcom/google/ads/AdView;->a(Landroid/content/Context;I)I

    move-result v3

    add-int/lit8 v5, v4, -0x2

    add-int/lit8 v6, v3, -0x2

    invoke-virtual {v1, v0, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v2, v4, v3}, Lcom/google/ads/AdView;->addView(Landroid/view/View;II)V

    :cond_5d
    return-void

    :cond_5e
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1, p5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_1b

    :cond_64
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1, p5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_30

    :cond_6a
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1, p5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_3a
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Lcom/google/ads/g;Landroid/util/AttributeSet;)V
    .registers 11

    invoke-static {p2}, Lcom/google/ads/util/d;->b(Ljava/lang/String;)V

    const/high16 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/AdView;->a(Landroid/content/Context;Ljava/lang/String;ILcom/google/ads/g;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/google/ads/g;Landroid/util/AttributeSet;)Z
    .registers 5

    invoke-static {p1}, Lcom/google/ads/util/AdUtil;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "You must have AdActivity declared in AndroidManifest.xml with configChanges."

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/ads/AdView;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/ads/g;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x1

    goto :goto_c
.end method

.method private b(Landroid/content/Context;Lcom/google/ads/g;Landroid/util/AttributeSet;)Z
    .registers 5

    invoke-static {p1}, Lcom/google/ads/util/AdUtil;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "You must have INTERNET and ACCESS_NETWORK_STATE permissions in AndroidManifest.xml."

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/ads/AdView;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/ads/g;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x1

    goto :goto_c
.end method


# virtual methods
.method public final a(Lcom/google/ads/d;)V
    .registers 3

    iget-object v0, p0, Lcom/google/ads/AdView;->b:Lcom/google/ads/a/q;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/ads/AdView;->b:Lcom/google/ads/a/q;

    if-nez v0, :cond_16

    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/ads/AdView;->b:Lcom/google/ads/a/q;

    invoke-virtual {v0}, Lcom/google/ads/a/q;->d()V

    :cond_10
    iget-object v0, p0, Lcom/google/ads/AdView;->b:Lcom/google/ads/a/q;

    invoke-virtual {v0, p1}, Lcom/google/ads/a/q;->a(Lcom/google/ads/d;)V

    :cond_15
    return-void

    :cond_16
    iget-object v0, p0, Lcom/google/ads/AdView;->b:Lcom/google/ads/a/q;

    invoke-virtual {v0}, Lcom/google/ads/a/q;->o()Z

    move-result v0

    goto :goto_9
.end method
