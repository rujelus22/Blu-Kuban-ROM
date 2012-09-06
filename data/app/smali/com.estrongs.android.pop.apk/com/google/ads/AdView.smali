.class public Lcom/google/ads/AdView;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lcom/google/ads/a;


# instance fields
.field private a:Lcom/google/ads/ah;

.field private b:Lcom/google/ads/internal/m;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/ads/d;Ljava/lang/String;)V
    .registers 7

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    :try_start_9
    invoke-direct {p0, p1, p2, v0}, Lcom/google/ads/AdView;->a(Landroid/content/Context;Lcom/google/ads/d;Landroid/util/AttributeSet;)Z

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/ads/AdView;->b(Landroid/content/Context;Lcom/google/ads/d;Landroid/util/AttributeSet;)Z

    invoke-direct {p0, p1, p2, p3}, Lcom/google/ads/AdView;->a(Landroid/app/Activity;Lcom/google/ads/d;Ljava/lang/String;)V
    :try_end_13
    .catch Lcom/google/ads/internal/b; {:try_start_9 .. :try_end_13} :catch_14

    :goto_13
    return-void

    :catch_14
    move-exception v0

    const-string v1, "Could not initialize AdView"

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1, p2, v2}, Lcom/google/ads/AdView;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/ads/d;Landroid/util/AttributeSet;)V

    const-string v1, "Could not initialize AdView"

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/b;->a(Ljava/lang/String;)V

    goto :goto_13
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1, p2}, Lcom/google/ads/AdView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/ads/AdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/content/Context;I)I
    .registers 6

    const/4 v0, 0x1

    int-to-float v1, p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private a(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZ)Ljava/lang/String;
    .registers 13

    const/4 v6, 0x1

    const-string v0, "http://schemas.android.com/apk/lib/com.google.ads"

    invoke-interface {p3, v0, p1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_ba

    const-string v0, "@string/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ba

    if-eqz p4, :cond_ba

    const-string v0, "@string/"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    :try_start_26
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
    :try_end_45
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_26 .. :try_end_45} :catch_72

    iget-object v0, v3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v0, :cond_96

    iget-object v0, v3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4f
    if-eqz p5, :cond_b9

    if-nez v0, :cond_b9

    new-instance v0, Lcom/google/ads/internal/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required XML attribute \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" missing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lcom/google/ads/internal/b;-><init>(Ljava/lang/String;Z)V

    throw v0

    :catch_72
    move-exception v0

    new-instance v2, Lcom/google/ads/internal/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find resource for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v6, v0}, Lcom/google/ads/internal/b;-><init>(Ljava/lang/String;ZLjava/lang/Throwable;)V

    throw v2

    :cond_96
    new-instance v0, Lcom/google/ads/internal/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resource "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was not a string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lcom/google/ads/internal/b;-><init>(Ljava/lang/String;Z)V

    throw v0

    :cond_b9
    return-object v0

    :cond_ba
    move-object v0, v1

    goto :goto_4f
.end method

.method private a(Landroid/app/Activity;Lcom/google/ads/d;Ljava/lang/String;)V
    .registers 9

    const/4 v3, 0x0

    const/4 v4, -0x2

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    invoke-static {p0, p3, p1, v1, p2}, Lcom/google/ads/ah;->a(Lcom/google/ads/a;Ljava/lang/String;Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/google/ads/d;)Lcom/google/ads/ah;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/AdView;->a:Lcom/google/ads/ah;

    new-instance v0, Lcom/google/ads/internal/m;

    iget-object v2, p0, Lcom/google/ads/AdView;->a:Lcom/google/ads/ah;

    invoke-direct {v0, v2, v3}, Lcom/google/ads/internal/m;-><init>(Lcom/google/ads/ah;Z)V

    iput-object v0, p0, Lcom/google/ads/AdView;->b:Lcom/google/ads/internal/m;

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/google/ads/AdView;->setGravity(I)V

    :try_start_1e
    iget-object v0, p0, Lcom/google/ads/AdView;->b:Lcom/google/ads/internal/m;

    invoke-static {p1, v0}, Lcom/google/ads/internal/u;->a(Landroid/app/Activity;Lcom/google/ads/internal/m;)Landroid/view/ViewGroup;

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

    invoke-static {v2, v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1, v4, v4}, Lcom/google/ads/AdView;->addView(Landroid/view/View;II)V

    goto :goto_30
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 15

    const/4 v7, 0x0

    if-nez p2, :cond_4

    :cond_3
    :goto_3
    return-void

    :cond_4
    :try_start_4
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

    if-eqz v2, :cond_50

    sget-object v5, Lcom/google/ads/d;->b:Lcom/google/ads/d;
    :try_end_19
    .catch Lcom/google/ads/internal/b; {:try_start_4 .. :try_end_19} :catch_115

    :goto_19
    if-nez v5, :cond_89

    :try_start_1b
    new-instance v2, Lcom/google/ads/internal/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attribute \"adSize\" invalid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lcom/google/ads/internal/b;-><init>(Ljava/lang/String;Z)V

    throw v2
    :try_end_35
    .catch Lcom/google/ads/internal/b; {:try_start_1b .. :try_end_35} :catch_35

    :catch_35
    move-exception v1

    :goto_36
    const-string v2, "Could not initialize AdView"

    invoke-virtual {v1, v2}, Lcom/google/ads/internal/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2, v5, p2}, Lcom/google/ads/AdView;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/ads/d;Landroid/util/AttributeSet;)V

    const-string v2, "Could not initialize AdView"

    invoke-virtual {v1, v2}, Lcom/google/ads/internal/b;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/ads/AdView;->isInEditMode()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "Could not initialize AdView"

    invoke-virtual {v1, v2}, Lcom/google/ads/internal/b;->b(Ljava/lang/String;)V

    goto :goto_3

    :cond_50
    :try_start_50
    const-string v2, "SMART_BANNER"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    sget-object v5, Lcom/google/ads/d;->a:Lcom/google/ads/d;

    goto :goto_19

    :cond_5b
    const-string v2, "IAB_MRECT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_66

    sget-object v5, Lcom/google/ads/d;->c:Lcom/google/ads/d;

    goto :goto_19

    :cond_66
    const-string v2, "IAB_BANNER"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_71

    sget-object v5, Lcom/google/ads/d;->d:Lcom/google/ads/d;

    goto :goto_19

    :cond_71
    const-string v2, "IAB_LEADERBOARD"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7c

    sget-object v5, Lcom/google/ads/d;->e:Lcom/google/ads/d;

    goto :goto_19

    :cond_7c
    const-string v2, "IAB_WIDE_SKYSCRAPER"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_87

    sget-object v5, Lcom/google/ads/d;->f:Lcom/google/ads/d;
    :try_end_86
    .catch Lcom/google/ads/internal/b; {:try_start_50 .. :try_end_86} :catch_115

    goto :goto_19

    :cond_87
    move-object v5, v7

    goto :goto_19

    :cond_89
    :try_start_89
    const-string v1, "adUnitId"

    invoke-direct {p0, v1, p2}, Lcom/google/ads/AdView;->a(Ljava/lang/String;Landroid/util/AttributeSet;)Z

    move-result v1

    if-nez v1, :cond_9a

    new-instance v1, Lcom/google/ads/internal/b;

    const-string v2, "Required XML attribute \"adUnitId\" missing"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/ads/internal/b;-><init>(Ljava/lang/String;Z)V

    throw v1

    :cond_9a
    invoke-virtual {p0}, Lcom/google/ads/AdView;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_ab

    const-string v3, "Ads by Google"

    const/4 v4, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/google/ads/AdView;->a(Landroid/content/Context;Ljava/lang/String;ILcom/google/ads/d;Landroid/util/AttributeSet;)V

    goto/16 :goto_3

    :cond_ab
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

    if-eqz v1, :cond_10c

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    invoke-direct {p0, v1, v5, p2}, Lcom/google/ads/AdView;->a(Landroid/content/Context;Lcom/google/ads/d;Landroid/util/AttributeSet;)Z

    invoke-direct {p0, v1, v5, p2}, Lcom/google/ads/AdView;->b(Landroid/content/Context;Lcom/google/ads/d;Landroid/util/AttributeSet;)Z

    invoke-direct {p0, v1, v5, v2}, Lcom/google/ads/AdView;->a(Landroid/app/Activity;Lcom/google/ads/d;Ljava/lang/String;)V

    if-eqz v3, :cond_3

    const-string v7, "testDevices"

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, p0

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v6 .. v11}, Lcom/google/ads/AdView;->b(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZ)Ljava/util/Set;

    move-result-object v1

    const-string v2, "TEST_EMULATOR"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ef

    const-string v2, "TEST_EMULATOR"

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v2, Lcom/google/ads/AdRequest;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_ef
    new-instance v2, Lcom/google/ads/AdRequest;

    invoke-direct {v2}, Lcom/google/ads/AdRequest;-><init>()V

    invoke-virtual {v2, v1}, Lcom/google/ads/AdRequest;->b(Ljava/util/Set;)Lcom/google/ads/AdRequest;

    move-result-object v1

    const-string v7, "keywords"

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, p0

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v6 .. v11}, Lcom/google/ads/AdView;->b(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZ)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/ads/AdRequest;->a(Ljava/util/Set;)Lcom/google/ads/AdRequest;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/ads/AdView;->a(Lcom/google/ads/AdRequest;)V

    goto/16 :goto_3

    :cond_10c
    new-instance v1, Lcom/google/ads/internal/b;

    const-string v2, "AdView was initialized with a Context that wasn\'t an Activity."

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/ads/internal/b;-><init>(Ljava/lang/String;Z)V

    throw v1
    :try_end_115
    .catch Lcom/google/ads/internal/b; {:try_start_89 .. :try_end_115} :catch_35

    :catch_115
    move-exception v1

    move-object v5, v7

    goto/16 :goto_36
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Lcom/google/ads/d;Landroid/util/AttributeSet;)V
    .registers 11

    invoke-static {p2}, Lcom/google/ads/util/b;->b(Ljava/lang/String;)V

    const/high16 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/ads/AdView;->a(Landroid/content/Context;Ljava/lang/String;ILcom/google/ads/d;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/google/ads/d;Landroid/util/AttributeSet;)Z
    .registers 5

    invoke-static {p1}, Lcom/google/ads/util/AdUtil;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "You must have AdActivity declared in AndroidManifest.xml with configChanges."

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/ads/AdView;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/ads/d;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x1

    goto :goto_c
.end method

.method private a(Ljava/lang/String;Landroid/util/AttributeSet;)Z
    .registers 4

    const-string v0, "http://schemas.android.com/apk/lib/com.google.ads"

    invoke-interface {p2, v0, p1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private b(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZ)Ljava/util/Set;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            "ZZ)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lcom/google/ads/AdView;->a(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZ)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    if-eqz v0, :cond_27

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_13
    if-ge v0, v3, :cond_27

    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_24

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_27
    return-object v1
.end method

.method private b(Landroid/content/Context;Lcom/google/ads/d;Landroid/util/AttributeSet;)Z
    .registers 5

    invoke-static {p1}, Lcom/google/ads/util/AdUtil;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "You must have INTERNET and ACCESS_NETWORK_STATE permissions in AndroidManifest.xml."

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/ads/AdView;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/ads/d;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x1

    goto :goto_c
.end method


# virtual methods
.method a(Landroid/content/Context;Ljava/lang/String;ILcom/google/ads/d;Landroid/util/AttributeSet;)V
    .registers 13

    const/16 v4, 0x11

    if-nez p4, :cond_6

    sget-object p4, Lcom/google/ads/d;->b:Lcom/google/ads/d;

    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/google/ads/d;->a(Lcom/google/ads/d;Landroid/content/Context;)Lcom/google/ads/d;

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

    invoke-virtual {v3}, Lcom/google/ads/d;->a()I

    move-result v4

    invoke-direct {p0, p1, v4}, Lcom/google/ads/AdView;->a(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3}, Lcom/google/ads/d;->b()I

    move-result v3

    invoke-direct {p0, p1, v3}, Lcom/google/ads/AdView;->a(Landroid/content/Context;I)I

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

.method public a(Lcom/google/ads/AdRequest;)V
    .registers 3

    iget-object v0, p0, Lcom/google/ads/AdView;->b:Lcom/google/ads/internal/m;

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/google/ads/AdView;->a()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/ads/AdView;->b:Lcom/google/ads/internal/m;

    invoke-virtual {v0}, Lcom/google/ads/internal/m;->d()V

    :cond_f
    iget-object v0, p0, Lcom/google/ads/AdView;->b:Lcom/google/ads/internal/m;

    invoke-virtual {v0, p1}, Lcom/google/ads/internal/m;->a(Lcom/google/ads/AdRequest;)V

    :cond_14
    return-void
.end method

.method public a(Lcom/google/ads/c;)V
    .registers 3

    iget-object v0, p0, Lcom/google/ads/AdView;->a:Lcom/google/ads/ah;

    iget-object v0, v0, Lcom/google/ads/ah;->j:Lcom/google/ads/util/aa;

    invoke-virtual {v0, p1}, Lcom/google/ads/util/aa;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a()Z
    .registers 2

    iget-object v0, p0, Lcom/google/ads/AdView;->b:Lcom/google/ads/internal/m;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/google/ads/AdView;->b:Lcom/google/ads/internal/m;

    invoke-virtual {v0}, Lcom/google/ads/internal/m;->p()Z

    move-result v0

    goto :goto_5
.end method
