.class public abstract enum Lcom/dropbox/android/activity/bB;
.super Ljava/lang/Enum;
.source "panda.py"


# static fields
.field public static final enum a:Lcom/dropbox/android/activity/bB;

.field public static final enum b:Lcom/dropbox/android/activity/bB;

.field public static final enum c:Lcom/dropbox/android/activity/bB;

.field public static final enum d:Lcom/dropbox/android/activity/bB;

.field public static final enum e:Lcom/dropbox/android/activity/bB;

.field public static final enum f:Lcom/dropbox/android/activity/bB;

.field public static final enum g:Lcom/dropbox/android/activity/bB;

.field private static final synthetic h:[Lcom/dropbox/android/activity/bB;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 133
    new-instance v0, Lcom/dropbox/android/activity/bC;

    const-string v1, "SPLASH"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/android/activity/bC;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/activity/bB;->a:Lcom/dropbox/android/activity/bB;

    .line 145
    new-instance v0, Lcom/dropbox/android/activity/bI;

    const-string v1, "PHOTO_INFO"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/android/activity/bI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/activity/bB;->b:Lcom/dropbox/android/activity/bB;

    .line 157
    new-instance v0, Lcom/dropbox/android/activity/bJ;

    const-string v1, "BROMO_PHOTO"

    invoke-direct {v0, v1, v5}, Lcom/dropbox/android/activity/bJ;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/activity/bB;->c:Lcom/dropbox/android/activity/bB;

    .line 169
    new-instance v0, Lcom/dropbox/android/activity/bK;

    const-string v1, "BROMO_SPLASH"

    invoke-direct {v0, v1, v6}, Lcom/dropbox/android/activity/bK;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/activity/bB;->d:Lcom/dropbox/android/activity/bB;

    .line 181
    new-instance v0, Lcom/dropbox/android/activity/bL;

    const-string v1, "CAMERA_UPLOAD_SETTINGS_WITH_CANCEL"

    invoke-direct {v0, v1, v7}, Lcom/dropbox/android/activity/bL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/activity/bB;->e:Lcom/dropbox/android/activity/bB;

    .line 194
    new-instance v0, Lcom/dropbox/android/activity/bM;

    const-string v1, "CAMERA_UPLOAD_SETTINGS_WITH_SKIP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dropbox/android/activity/bM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/activity/bB;->f:Lcom/dropbox/android/activity/bB;

    .line 207
    new-instance v0, Lcom/dropbox/android/activity/bN;

    const-string v1, "CAMERA_UPLOAD_BASIC_SETTINGS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/dropbox/android/activity/bN;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/activity/bB;->g:Lcom/dropbox/android/activity/bB;

    .line 131
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/dropbox/android/activity/bB;

    sget-object v1, Lcom/dropbox/android/activity/bB;->a:Lcom/dropbox/android/activity/bB;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/android/activity/bB;->b:Lcom/dropbox/android/activity/bB;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/android/activity/bB;->c:Lcom/dropbox/android/activity/bB;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dropbox/android/activity/bB;->d:Lcom/dropbox/android/activity/bB;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dropbox/android/activity/bB;->e:Lcom/dropbox/android/activity/bB;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/dropbox/android/activity/bB;->f:Lcom/dropbox/android/activity/bB;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dropbox/android/activity/bB;->g:Lcom/dropbox/android/activity/bB;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dropbox/android/activity/bB;->h:[Lcom/dropbox/android/activity/bB;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 239
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/dropbox/android/activity/bA;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Lcom/dropbox/android/activity/bB;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method protected static final a(Lcom/dropbox/android/activity/TourPageFragment;IIIII)Lcom/dropbox/android/activity/bS;
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 248
    invoke-static {p0}, Lcom/dropbox/android/activity/TourPageFragment;->b(Lcom/dropbox/android/activity/TourPageFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 249
    invoke-static {p0}, Lcom/dropbox/android/activity/TourPageFragment;->c(Lcom/dropbox/android/activity/TourPageFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 250
    invoke-static {p0}, Lcom/dropbox/android/activity/TourPageFragment;->d(Lcom/dropbox/android/activity/TourPageFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(I)V

    .line 251
    invoke-static {p0}, Lcom/dropbox/android/activity/TourPageFragment;->e(Lcom/dropbox/android/activity/TourPageFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/widget/Button;->setText(I)V

    .line 252
    invoke-static {p0}, Lcom/dropbox/android/activity/TourPageFragment;->f(Lcom/dropbox/android/activity/TourPageFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 253
    const/4 v0, 0x0

    return-object v0
.end method

.method protected static final a(Lcom/dropbox/android/activity/TourPageFragment;Landroid/os/Bundle;I)Lcom/dropbox/android/activity/bS;
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 260
    invoke-static {p0}, Lcom/dropbox/android/activity/TourPageFragment;->b(Lcom/dropbox/android/activity/TourPageFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0900f5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 262
    invoke-static {p0}, Lcom/dropbox/android/activity/TourPageFragment;->g(Lcom/dropbox/android/activity/TourPageFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 263
    invoke-static {p0}, Lcom/dropbox/android/activity/TourPageFragment;->g(Lcom/dropbox/android/activity/TourPageFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 265
    invoke-static {p0}, Lcom/dropbox/android/activity/TourPageFragment;->h(Lcom/dropbox/android/activity/TourPageFragment;)Landroid/view/ViewStub;

    move-result-object v0

    const v1, 0x7f030009

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 266
    invoke-static {p0}, Lcom/dropbox/android/activity/TourPageFragment;->h(Lcom/dropbox/android/activity/TourPageFragment;)Landroid/view/ViewStub;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v7

    .line 268
    const v0, 0x7f0d002e

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 269
    const v0, 0x7f0d0030

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 270
    const v1, 0x7f0d002b

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 271
    const v2, 0x7f0d002d

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 272
    const v3, 0x7f0d002a

    invoke-virtual {v7, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 273
    const v3, 0x7f0d002c

    invoke-virtual {v7, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 276
    if-eqz p1, :cond_ed

    const-string v3, "MOBILE_DATA_CHECKED"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ed

    move v6, v4

    .line 279
    :goto_6a
    if-nez v6, :cond_e9

    move v3, v4

    :goto_6d
    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 280
    invoke-virtual {v2, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 281
    if-eqz v6, :cond_eb

    move v3, v5

    :goto_76
    invoke-virtual {v8, v3}, Landroid/view/View;->setVisibility(I)V

    .line 283
    new-instance v3, Lcom/dropbox/android/activity/bP;

    invoke-direct {v3}, Lcom/dropbox/android/activity/bP;-><init>()V

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 290
    new-instance v3, Lcom/dropbox/android/activity/bQ;

    invoke-direct {v3, v1, v2, v8}, Lcom/dropbox/android/activity/bQ;-><init>(Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/view/View;)V

    .line 300
    new-instance v6, Lcom/dropbox/android/activity/bD;

    invoke-direct {v6, v1, v2, v8}, Lcom/dropbox/android/activity/bD;-><init>(Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/view/View;)V

    .line 310
    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    invoke-virtual {v9, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    invoke-virtual {v2, v6}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    invoke-virtual {v10, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    new-instance v1, Lcom/dropbox/android/activity/bE;

    invoke-direct {v1, v2, v0}, Lcom/dropbox/android/activity/bE;-><init>(Landroid/widget/RadioButton;Landroid/widget/CheckBox;)V

    invoke-static {p0, p2, v1}, Lcom/dropbox/android/activity/bB;->a(Lcom/dropbox/android/activity/TourPageFragment;ILcom/dropbox/android/activity/bR;)V

    .line 327
    invoke-static {}, Lcom/dropbox/android/util/X;->b()Z

    move-result v1

    if-nez v1, :cond_d3

    .line 328
    invoke-static {}, Lcom/dropbox/android/util/h;->k()Lcom/dropbox/android/util/r;

    move-result-object v1

    const-string v3, "cameraupload.wifionlytour"

    invoke-virtual {v1, v3, v4}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Z)Lcom/dropbox/android/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/android/util/r;->c()V

    .line 329
    const v1, 0x7f0d0029

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 330
    const v1, 0x7f0d002f

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 331
    invoke-virtual {v0}, Landroid/widget/CheckBox;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 332
    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 333
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 336
    :cond_d3
    invoke-static {}, Lcom/dropbox/android/activity/DropboxBrowser;->a()Z

    move-result v0

    if-eqz v0, :cond_e3

    .line 337
    const v0, 0x7f0d0028

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 340
    :cond_e3
    new-instance v0, Lcom/dropbox/android/activity/bF;

    invoke-direct {v0, v2}, Lcom/dropbox/android/activity/bF;-><init>(Landroid/widget/RadioButton;)V

    .line 347
    return-object v0

    :cond_e9
    move v3, v5

    .line 279
    goto :goto_6d

    .line 281
    :cond_eb
    const/4 v3, 0x4

    goto :goto_76

    :cond_ed
    move v6, v5

    goto/16 :goto_6a
.end method

.method protected static final a(Lcom/dropbox/android/activity/TourPageFragment;ILcom/dropbox/android/activity/bR;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 352
    invoke-static {p0}, Lcom/dropbox/android/activity/TourPageFragment;->i(Lcom/dropbox/android/activity/TourPageFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 353
    invoke-static {p0}, Lcom/dropbox/android/activity/TourPageFragment;->j(Lcom/dropbox/android/activity/TourPageFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 354
    invoke-static {p0}, Lcom/dropbox/android/activity/TourPageFragment;->k(Lcom/dropbox/android/activity/TourPageFragment;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f090100

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 355
    invoke-static {p0}, Lcom/dropbox/android/activity/TourPageFragment;->l(Lcom/dropbox/android/activity/TourPageFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 356
    invoke-static {p0}, Lcom/dropbox/android/activity/TourPageFragment;->k(Lcom/dropbox/android/activity/TourPageFragment;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/dropbox/android/activity/bG;

    invoke-direct {v1, p2, p0}, Lcom/dropbox/android/activity/bG;-><init>(Lcom/dropbox/android/activity/bR;Lcom/dropbox/android/activity/TourPageFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    invoke-static {p0}, Lcom/dropbox/android/activity/TourPageFragment;->l(Lcom/dropbox/android/activity/TourPageFragment;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/dropbox/android/activity/bH;

    invoke-direct {v1, p0}, Lcom/dropbox/android/activity/bH;-><init>(Lcom/dropbox/android/activity/TourPageFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/android/activity/bB;
    .registers 2
    .parameter

    .prologue
    .line 131
    const-class v0, Lcom/dropbox/android/activity/bB;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/activity/bB;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/android/activity/bB;
    .registers 1

    .prologue
    .line 131
    sget-object v0, Lcom/dropbox/android/activity/bB;->h:[Lcom/dropbox/android/activity/bB;

    invoke-virtual {v0}, [Lcom/dropbox/android/activity/bB;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/android/activity/bB;

    return-object v0
.end method


# virtual methods
.method protected abstract a(Lcom/dropbox/android/activity/TourPageFragment;Landroid/os/Bundle;)Lcom/dropbox/android/activity/bS;
.end method
