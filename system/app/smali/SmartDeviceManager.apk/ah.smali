.class public final Lah;
.super Ljava/lang/Object;
.source "a"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lah$1;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/Integer;

.field private static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lbk;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const v5, 0x7f07000b

    const/4 v4, 0x0

    .line 40
    sput-object v4, Lah;->a:Ljava/lang/String;

    .line 41
    sput-object v4, Lah;->b:Ljava/lang/String;

    .line 42
    sput-object v4, Lah;->c:Ljava/lang/Integer;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lah;->d:Ljava/util/Map;

    .line 97
    const-string v0, "app.name"

    sget-object v1, Leh;->a:Leh;

    invoke-static {v0, v4, v4, v1}, Lah;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Leh;)V

    .line 103
    const-string v0, "dwd.brandingImage"

    new-instance v1, Ljava/lang/Integer;

    const v2, 0x7f090016

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    sget-object v2, Leh;->b:Leh;

    invoke-static {v0, v1, v4, v2}, Lah;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Leh;)V

    .line 109
    const-string v0, "dwd.backgroundImage"

    new-instance v1, Ljava/lang/Integer;

    const v2, 0x7f090017

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    sget-object v2, Leh;->b:Leh;

    invoke-static {v0, v1, v4, v2}, Lah;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Leh;)V

    .line 115
    const-string v0, "dwd.emergencyButtonText"

    new-instance v1, Ljava/lang/Integer;

    const v2, 0x7f09001c

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Ljava/lang/Integer;

    const v3, 0x7f070013

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    sget-object v3, Leh;->a:Leh;

    invoke-static {v0, v1, v2, v3}, Lah;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Leh;)V

    .line 121
    const-string v0, "dwd.overrideButtonText"

    new-instance v1, Ljava/lang/Integer;

    const v2, 0x7f09001b

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Ljava/lang/Integer;

    const v3, 0x7f070011

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    sget-object v3, Leh;->a:Leh;

    invoke-static {v0, v1, v2, v3}, Lah;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Leh;)V

    .line 128
    const-string v0, "dwd.mainText"

    new-instance v1, Ljava/lang/Integer;

    const v2, 0x7f090018

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Ljava/lang/Integer;

    const v3, 0x7f070006

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    sget-object v3, Leh;->a:Leh;

    invoke-static {v0, v1, v2, v3}, Lah;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Leh;)V

    .line 134
    const-string v0, "dwd.toastMessageText"

    new-instance v1, Ljava/lang/Integer;

    const v2, 0x7f070008

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    sget-object v2, Leh;->a:Leh;

    invoke-static {v0, v4, v1, v2}, Lah;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Leh;)V

    .line 140
    const-string v0, "dwd.overridePopupTitleText"

    new-instance v1, Ljava/lang/Integer;

    const v2, 0x7f07000a

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    sget-object v2, Leh;->a:Leh;

    invoke-static {v0, v4, v1, v2}, Lah;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Leh;)V

    .line 146
    const-string v0, "dwd.overridePopupMessageText"

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v5}, Ljava/lang/Integer;-><init>(I)V

    sget-object v2, Leh;->a:Leh;

    invoke-static {v0, v4, v1, v2}, Lah;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Leh;)V

    .line 152
    const-string v0, "dwd.smsAutoReplyText"

    new-instance v1, Ljava/lang/Integer;

    const v2, 0x7f07000f

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    sget-object v2, Leh;->a:Leh;

    invoke-static {v0, v4, v1, v2}, Lah;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Leh;)V

    .line 158
    const-string v0, "locking.backgroundImage"

    new-instance v1, Ljava/lang/Integer;

    const v2, 0x7f09002b

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    sget-object v2, Leh;->b:Leh;

    invoke-static {v0, v1, v4, v2}, Lah;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Leh;)V

    .line 164
    const-string v0, "locking.emergencyButtonText"

    new-instance v1, Ljava/lang/Integer;

    const v2, 0x7f090032

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Ljava/lang/Integer;

    const v3, 0x7f070012

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    sget-object v3, Leh;->a:Leh;

    invoke-static {v0, v1, v2, v3}, Lah;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Leh;)V

    .line 170
    const-string v0, "locking.overrideButtonText"

    new-instance v1, Ljava/lang/Integer;

    const v2, 0x7f090031

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Ljava/lang/Integer;

    const v3, 0x7f070010

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    sget-object v3, Leh;->a:Leh;

    invoke-static {v0, v1, v2, v3}, Lah;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Leh;)V

    .line 176
    const-string v0, "locking.mainText"

    new-instance v1, Ljava/lang/Integer;

    const v2, 0x7f09002d

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Ljava/lang/Integer;

    const v3, 0x7f070005

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    sget-object v3, Leh;->a:Leh;

    invoke-static {v0, v1, v2, v3}, Lah;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Leh;)V

    .line 182
    const-string v0, "locking.toastMessageText"

    new-instance v1, Ljava/lang/Integer;

    const v2, 0x7f070007

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    sget-object v2, Leh;->a:Leh;

    invoke-static {v0, v4, v1, v2}, Lah;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Leh;)V

    .line 188
    const-string v0, "locking.overridePopupTitleText"

    new-instance v1, Ljava/lang/Integer;

    const v2, 0x7f070009

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    sget-object v2, Leh;->a:Leh;

    invoke-static {v0, v4, v1, v2}, Lah;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Leh;)V

    .line 194
    const-string v0, "locking.overridePopupMessageText"

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v5}, Ljava/lang/Integer;-><init>(I)V

    sget-object v2, Leh;->a:Leh;

    invoke-static {v0, v4, v1, v2}, Lah;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Leh;)V

    .line 200
    const-string v0, "locking.smsAutoReplyText"

    new-instance v1, Ljava/lang/Integer;

    const v2, 0x7f07000e

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    sget-object v2, Leh;->a:Leh;

    invoke-static {v0, v4, v1, v2}, Lah;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Leh;)V

    .line 212
    const-string v0, "(\\w+)\\.(\\w+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lah;->e:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 486
    return-void
.end method

.method public static a(Ljava/lang/String;)Landroid/util/Pair;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    sget-object v0, Lah;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 218
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 219
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 220
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 221
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v2

    .line 223
    :goto_1c
    return-object v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Integer;)Lbk;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 347
    sget-object v0, Lah;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbk;

    .line 348
    if-nez v0, :cond_2b

    .line 349
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No resource description found for name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for app id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Li;->d(Ljava/lang/String;)V

    .line 358
    :cond_2a
    :goto_2a
    return-object v0

    .line 352
    :cond_2b
    if-eqz p1, :cond_2a

    .line 356
    invoke-virtual {v0}, Lbk;->clone()Lbk;

    move-result-object v0

    .line 357
    invoke-virtual {v0, p1}, Lbk;->setApplicationId(Ljava/lang/Integer;)V

    goto :goto_2a
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Lef;
    .registers 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Lef",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 367
    invoke-static {p1, p2}, Lah;->a(Ljava/lang/String;Ljava/lang/Integer;)Lbk;

    move-result-object v0

    .line 368
    invoke-static {p0, v0}, Lah;->b(Landroid/content/Context;Lbk;)Lef;

    move-result-object v0

    return-object v0
.end method

.method public static a()Ljava/lang/String;
    .registers 6

    .prologue
    const/high16 v5, 0x40c0

    const/high16 v4, 0x4080

    const/high16 v3, 0x4020

    .line 228
    sget-object v0, Lah;->a:Ljava/lang/String;

    if-nez v0, :cond_37

    .line 229
    invoke-static {}, Ld;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lde;->a(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v2, v0, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v1, v2

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    div-float v0, v2, v0

    mul-float/2addr v1, v1

    mul-float/2addr v0, v0

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x4040

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_3a

    move v0, v3

    .line 230
    :goto_2f
    cmpl-float v1, v0, v3

    if-nez v1, :cond_4d

    .line 231
    const-string v0, "small"

    sput-object v0, Lah;->a:Ljava/lang/String;

    .line 240
    :cond_37
    :goto_37
    sget-object v0, Lah;->a:Ljava/lang/String;

    return-object v0

    .line 229
    :cond_3a
    const/high16 v1, 0x40a0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_42

    move v0, v4

    goto :goto_2f

    :cond_42
    const/high16 v1, 0x40e0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_4a

    move v0, v5

    goto :goto_2f

    :cond_4a
    const/high16 v0, 0x4110

    goto :goto_2f

    .line 232
    :cond_4d
    cmpl-float v1, v0, v4

    if-nez v1, :cond_56

    .line 233
    const-string v0, "normal"

    sput-object v0, Lah;->a:Ljava/lang/String;

    goto :goto_37

    .line 234
    :cond_56
    cmpl-float v0, v0, v5

    if-nez v0, :cond_5f

    .line 235
    const-string v0, "large"

    sput-object v0, Lah;->a:Ljava/lang/String;

    goto :goto_37

    .line 236
    :cond_5f
    const-string v0, "xlarge"

    sput-object v0, Lah;->a:Ljava/lang/String;

    goto :goto_37
.end method

.method public static a(Ldg;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ldg;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 495
    invoke-static {p1, p2}, Lah;->a(Ljava/lang/String;Ljava/lang/Integer;)Lbk;

    move-result-object v3

    .line 496
    if-eqz v3, :cond_cf

    invoke-virtual {v3}, Lbk;->hasView()Z

    move-result v1

    if-eqz v1, :cond_67

    invoke-static {p0, v3}, Lah;->b(Landroid/content/Context;Lbk;)Lef;

    move-result-object v2

    invoke-virtual {v2}, Lef;->a()Z

    move-result v1

    if-nez v1, :cond_67

    invoke-virtual {v3}, Lbk;->hasDefaultView()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-virtual {v3}, Lbk;->getDefaultViewId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_68

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_30
    :goto_30
    invoke-virtual {v3}, Lbk;->getViewId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_b4

    sget-object v4, Lah$1;->a:[I

    invoke-virtual {v3}, Lbk;->getResourceType()Leh;

    move-result-object v5

    invoke-virtual {v5}, Leh;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_d6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown resource type for updating view: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Lbk;->getShortName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lj;->a(Ljava/lang/String;)V

    .line 497
    :cond_67
    :goto_67
    return-void

    .line 496
    :cond_68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can\'t find default view for "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Lbk;->getShortName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Li;->d(Ljava/lang/String;)V

    goto :goto_30

    :pswitch_83
    move-object v0, v1

    check-cast v0, Landroid/widget/TextView;

    move-object p0, v0

    move-object v0, v2

    check-cast v0, Ler;

    move-object v1, v0

    iget-object v1, v1, Ler;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_67

    :pswitch_94
    instance-of v3, v1, Landroid/widget/ImageView;

    if-eqz v3, :cond_a7

    check-cast v1, Landroid/widget/ImageView;

    check-cast v2, Leb;

    invoke-virtual {v2, p0}, Leb;->a(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_67

    :cond_a7
    check-cast v2, Leb;

    invoke-virtual {v2, p0}, Leb;->a(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_67

    :cond_b4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t find view for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Lbk;->getShortName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Li;->d(Ljava/lang/String;)V

    goto :goto_67

    :cond_cf
    const-string v1, "no resource description, nothing to update"

    invoke-static {v1}, Li;->d(Ljava/lang/String;)V

    goto :goto_67

    nop

    :pswitch_data_d6
    .packed-switch 0x1
        :pswitch_83
        :pswitch_94
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Lbk;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 430
    new-instance v0, Ldk;

    invoke-static {}, Lal;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ldk;-><init>(Ljava/lang/String;Lbk;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.locationlabs.v3client.action.GET_RESOURCE."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Ldk;->a:Lbk;

    invoke-virtual {v2}, Lbk;->getIntentActionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lct;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/locationlabs/v3client/V3ApiService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, La;->b(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 431
    return-void
.end method

.method public static a(Ljava/lang/String;Leg;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 329
    sget-object v0, Lah;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbk;

    .line 330
    if-eqz v0, :cond_e

    .line 331
    invoke-virtual {v0, p1}, Lbk;->setResourceDiscriminator(Leg;)V

    .line 335
    :goto_d
    return-void

    .line 333
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can\'t set resource discriminator b/c can\'t find resource description for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj;->a(Ljava/lang/String;)V

    goto :goto_d
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Leh;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 309
    sget-object v0, Leh;->b:Leh;

    if-ne p3, v0, :cond_18

    .line 310
    sget-object v0, Leg;->a:Leg;

    move-object v7, v0

    .line 314
    :goto_8
    new-instance v0, Lbk;

    move-object v1, p1

    move-object v3, p2

    move-object v4, v2

    move-object v5, p0

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Lbk;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Leh;Leg;)V

    .line 321
    sget-object v1, Lah;->d:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    return-void

    :cond_18
    move-object v7, v2

    .line 312
    goto :goto_8
.end method

.method private static b(Landroid/content/Context;Lbk;)Lef;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lbk;",
            ")",
            "Lef",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 391
    invoke-static {p0}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v0

    .line 392
    invoke-interface {v0, p0, p1}, Lw;->a(Landroid/content/Context;Lbk;)Lef;

    move-result-object v0

    .line 393
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lef;->a()Z

    move-result v1

    if-nez v1, :cond_11

    .line 400
    :goto_10
    return-object v0

    .line 398
    :cond_11
    invoke-static {p0, p1}, Lah;->a(Landroid/content/Context;Lbk;)V

    .line 399
    invoke-static {p0, p1}, Lah;->c(Landroid/content/Context;Lbk;)Lef;

    move-result-object v0

    goto :goto_10
.end method

.method public static b()Ljava/lang/String;
    .registers 1

    .prologue
    .line 272
    sget-object v0, Lah;->b:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 273
    invoke-static {}, Lah;->d()V

    .line 275
    :cond_7
    sget-object v0, Lah;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Z
    .registers 2
    .parameter

    .prologue
    .line 325
    sget-object v0, Lah;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static c(Landroid/content/Context;Lbk;)Lef;
    .registers 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lbk;",
            ")",
            "Lef",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 438
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 439
    sget-object v1, Lah$1;->a:[I

    invoke-virtual {p1}, Lbk;->getResourceType()Leh;

    move-result-object v2

    invoke-virtual {v2}, Leh;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_b4

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected resource type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lbk;->getResourceType()Leh;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj;->a(Ljava/lang/String;)V

    move-object v0, v4

    .line 486
    :goto_2f
    return-object v0

    .line 445
    :pswitch_30
    :try_start_30
    invoke-virtual {p1}, Lbk;->getDefaultResId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_3b
    .catch Ljava/lang/NullPointerException; {:try_start_30 .. :try_end_3b} :catch_43
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_30 .. :try_end_3b} :catch_46

    move-result-object v0

    .line 454
    :goto_3c
    new-instance v1, Ler;

    invoke-direct {v1, v0}, Ler;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_2f

    .line 449
    :catch_43
    move-exception v0

    move-object v0, v4

    .line 453
    goto :goto_3c

    .line 452
    :catch_46
    move-exception v0

    move-object v0, v4

    goto :goto_3c

    .line 460
    :pswitch_49
    :try_start_49
    invoke-virtual {p1}, Lbk;->getDefaultResId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 461
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_5c
    .catchall {:try_start_49 .. :try_end_5c} :catchall_9c
    .catch Ljava/lang/NullPointerException; {:try_start_49 .. :try_end_5c} :catch_78
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_49 .. :try_end_5c} :catch_84
    .catch Ljava/lang/ClassCastException; {:try_start_49 .. :try_end_5c} :catch_90

    .line 462
    :try_start_5c
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 463
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_69
    .catchall {:try_start_5c .. :try_end_69} :catchall_a6
    .catch Ljava/lang/NullPointerException; {:try_start_5c .. :try_end_69} :catch_af
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5c .. :try_end_69} :catch_ad
    .catch Ljava/lang/ClassCastException; {:try_start_5c .. :try_end_69} :catch_ab

    move-result-object v1

    .line 475
    :try_start_6a
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_75

    move-object v0, v1

    .line 483
    :goto_6e
    new-instance v1, Leb;

    invoke-direct {v1, v0}, Leb;-><init>([B)V

    move-object v0, v1

    goto :goto_2f

    .line 479
    :catch_75
    move-exception v0

    move-object v0, v1

    goto :goto_6e

    .line 465
    :catch_78
    move-exception v0

    move-object v0, v4

    .line 475
    :goto_7a
    if-eqz v0, :cond_b1

    .line 477
    :try_start_7c
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_7f} :catch_81

    move-object v0, v4

    .line 479
    goto :goto_6e

    :catch_81
    move-exception v0

    move-object v0, v4

    goto :goto_6e

    .line 468
    :catch_84
    move-exception v0

    move-object v0, v4

    .line 475
    :goto_86
    if-eqz v0, :cond_b1

    .line 477
    :try_start_88
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8b} :catch_8d

    move-object v0, v4

    .line 479
    goto :goto_6e

    :catch_8d
    move-exception v0

    move-object v0, v4

    goto :goto_6e

    .line 471
    :catch_90
    move-exception v0

    move-object v0, v4

    .line 475
    :goto_92
    if-eqz v0, :cond_b1

    .line 477
    :try_start_94
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_97} :catch_99

    move-object v0, v4

    .line 479
    goto :goto_6e

    :catch_99
    move-exception v0

    move-object v0, v4

    goto :goto_6e

    .line 475
    :catchall_9c
    move-exception v0

    move-object v1, v4

    :goto_9e
    if-eqz v1, :cond_a3

    .line 477
    :try_start_a0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_a3} :catch_a4

    .line 479
    :cond_a3
    :goto_a3
    throw v0

    :catch_a4
    move-exception v1

    goto :goto_a3

    .line 475
    :catchall_a6
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_9e

    .line 471
    :catch_ab
    move-exception v1

    goto :goto_92

    .line 468
    :catch_ad
    move-exception v1

    goto :goto_86

    .line 465
    :catch_af
    move-exception v1

    goto :goto_7a

    :cond_b1
    move-object v0, v4

    goto :goto_6e

    .line 439
    nop

    :pswitch_data_b4
    .packed-switch 0x1
        :pswitch_30
        :pswitch_49
    .end packed-switch
.end method

.method public static c()Ljava/lang/Integer;
    .registers 1

    .prologue
    .line 279
    sget-object v0, Lah;->c:Ljava/lang/Integer;

    if-nez v0, :cond_7

    .line 280
    invoke-static {}, Lah;->d()V

    .line 282
    :cond_7
    sget-object v0, Lah;->c:Ljava/lang/Integer;

    return-object v0
.end method

.method private static d()V
    .registers 6

    .prologue
    const/16 v5, 0x140

    const/16 v4, 0xf0

    const/16 v3, 0xa0

    const/16 v2, 0x78

    .line 249
    invoke-static {}, Ld;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lde;->a(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v1, 0x8c

    if-gt v0, v1, :cond_41

    move v0, v2

    :goto_17
    int-to-float v0, v0

    .line 250
    const/high16 v1, 0x42f0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_4f

    .line 251
    const-string v0, "ldpi"

    sput-object v0, Lah;->b:Ljava/lang/String;

    .line 252
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lah;->c:Ljava/lang/Integer;

    .line 264
    :goto_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Screen pixel density discriminator set to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lah;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li;->c(Ljava/lang/String;)V

    .line 269
    return-void

    .line 249
    :cond_41
    const/16 v1, 0xc8

    if-gt v0, v1, :cond_47

    move v0, v3

    goto :goto_17

    :cond_47
    const/16 v1, 0x118

    if-gt v0, v1, :cond_4d

    move v0, v4

    goto :goto_17

    :cond_4d
    move v0, v5

    goto :goto_17

    .line 253
    :cond_4f
    const/high16 v1, 0x4320

    cmpl-float v1, v0, v1

    if-nez v1, :cond_60

    .line 254
    const-string v0, "mdpi"

    sput-object v0, Lah;->b:Ljava/lang/String;

    .line 255
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lah;->c:Ljava/lang/Integer;

    goto :goto_28

    .line 256
    :cond_60
    const/high16 v1, 0x4370

    cmpl-float v0, v0, v1

    if-nez v0, :cond_71

    .line 257
    const-string v0, "hdpi"

    sput-object v0, Lah;->b:Ljava/lang/String;

    .line 258
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lah;->c:Ljava/lang/Integer;

    goto :goto_28

    .line 259
    :cond_71
    const-string v0, "xhdpi"

    sput-object v0, Lah;->b:Ljava/lang/String;

    .line 261
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lah;->c:Ljava/lang/Integer;

    goto :goto_28
.end method
