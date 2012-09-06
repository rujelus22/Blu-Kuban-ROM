.class public Lcom/dropbox/android/widget/LocalItemView;
.super Landroid/widget/FrameLayout;
.source "panda.py"


# static fields
.field private static final d:Ljava/lang/String;

.field private static n:Landroid/graphics/ColorMatrixColorFilter;

.field private static o:Landroid/graphics/ColorMatrixColorFilter;


# instance fields
.field protected a:Landroid/view/View;

.field b:Landroid/os/Handler;

.field c:Lcom/dropbox/android/widget/an;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/CheckBox;

.field private final k:Z

.field private l:Z

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/16 v2, 0x14

    .line 43
    const-class v0, Lcom/dropbox/android/widget/LocalItemView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/widget/LocalItemView;->d:Ljava/lang/String;

    .line 180
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    new-array v1, v2, [F

    fill-array-data v1, :array_24

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    sput-object v0, Lcom/dropbox/android/widget/LocalItemView;->n:Landroid/graphics/ColorMatrixColorFilter;

    .line 187
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    new-array v1, v2, [F

    fill-array-data v1, :array_50

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    sput-object v0, Lcom/dropbox/android/widget/LocalItemView;->o:Landroid/graphics/ColorMatrixColorFilter;

    return-void

    .line 180
    nop

    :array_24
    .array-data 0x4
        0xat 0xd7t 0x63t 0x3et
        0xc2t 0x86t 0x37t 0x3ft
        0xb5t 0x37t 0x78t 0x3dt
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xat 0xd7t 0x63t 0x3et
        0xc2t 0x86t 0x37t 0x3ft
        0xb5t 0x37t 0x78t 0x3dt
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xat 0xd7t 0x63t 0x3et
        0xc2t 0x86t 0x37t 0x3ft
        0xb5t 0x37t 0x78t 0x3dt
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 187
    :array_50
    .array-data 0x4
        0xcdt 0xcct 0xcct 0x3dt
        0xcdt 0xcct 0x4ct 0x3et
        0xat 0xd7t 0xa3t 0x3bt
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xcdt 0xcct 0xcct 0x3dt
        0xcdt 0xcct 0x4ct 0x3et
        0xat 0xd7t 0xa3t 0x3bt
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xcdt 0xcct 0xcct 0x3dt
        0xcdt 0xcct 0x4ct 0x3et
        0xat 0xd7t 0xa3t 0x3bt
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/dropbox/android/widget/LocalItemView;->m:I

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/widget/LocalItemView;->b:Landroid/os/Handler;

    .line 62
    new-instance v0, Lcom/dropbox/android/widget/an;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dropbox/android/widget/an;-><init>(Lcom/dropbox/android/widget/LocalItemView;Lcom/dropbox/android/widget/am;)V

    iput-object v0, p0, Lcom/dropbox/android/widget/LocalItemView;->c:Lcom/dropbox/android/widget/an;

    .line 66
    invoke-virtual {p0, p1}, Lcom/dropbox/android/widget/LocalItemView;->a(Landroid/content/Context;)V

    .line 67
    iput-boolean p2, p0, Lcom/dropbox/android/widget/LocalItemView;->k:Z

    .line 68
    return-void
.end method

.method static synthetic a(Lcom/dropbox/android/widget/LocalItemView;)I
    .registers 2
    .parameter

    .prologue
    .line 41
    iget v0, p0, Lcom/dropbox/android/widget/LocalItemView;->m:I

    return v0
.end method

.method private a()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 94
    iget-object v0, p0, Lcom/dropbox/android/widget/LocalItemView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/dropbox/android/widget/LocalItemView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 96
    iget-object v0, p0, Lcom/dropbox/android/widget/LocalItemView;->e:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 97
    iget-object v0, p0, Lcom/dropbox/android/widget/LocalItemView;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 98
    iget-object v0, p0, Lcom/dropbox/android/widget/LocalItemView;->f:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/dropbox/android/widget/LocalItemView;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/dropbox/android/widget/LocalItemView;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/dropbox/android/widget/LocalItemView;->j:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/dropbox/android/widget/LocalItemView;->a:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 103
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;Z)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 219
    if-eqz p2, :cond_25

    iget-object v0, p0, Lcom/dropbox/android/widget/LocalItemView;->g:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/dropbox/android/widget/LocalItemView;->g:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_25

    .line 220
    :cond_13
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 221
    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 222
    iget-object v1, p0, Lcom/dropbox/android/widget/LocalItemView;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 225
    :cond_25
    iget-object v0, p0, Lcom/dropbox/android/widget/LocalItemView;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lcom/dropbox/android/widget/LocalItemView;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 228
    invoke-static {p1}, Lcom/dropbox/android/util/aX;->a(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 229
    iget-object v0, p0, Lcom/dropbox/android/widget/LocalItemView;->e:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 230
    iget-object v0, p0, Lcom/dropbox/android/widget/LocalItemView;->e:Landroid/widget/ImageView;

    const v1, 0x106000c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 236
    :goto_44
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/dropbox/android/widget/LocalItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 238
    iget-boolean v1, p0, Lcom/dropbox/android/widget/LocalItemView;->k:Z

    if-eqz v1, :cond_61

    iget-boolean v1, p0, Lcom/dropbox/android/widget/LocalItemView;->l:Z

    if-nez v1, :cond_61

    .line 239
    sget-object v1, Lcom/dropbox/android/widget/LocalItemView;->o:Landroid/graphics/ColorMatrixColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 240
    iget-object v0, p0, Lcom/dropbox/android/widget/LocalItemView;->f:Landroid/widget/ImageView;

    sget-object v1, Lcom/dropbox/android/widget/LocalItemView;->o:Landroid/graphics/ColorMatrixColorFilter;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 243
    :cond_61
    iget-object v0, p0, Lcom/dropbox/android/widget/LocalItemView;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 244
    return-void

    .line 232
    :cond_67
    iget-object v0, p0, Lcom/dropbox/android/widget/LocalItemView;->e:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 233
    iget-object v0, p0, Lcom/dropbox/android/widget/LocalItemView;->e:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_44
.end method

.method static synthetic a(Lcom/dropbox/android/widget/LocalItemView;Landroid/graphics/Bitmap;Z)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/dropbox/android/widget/LocalItemView;->a(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/dropbox/android/widget/LocalItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/dropbox/android/util/an;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 196
    if-nez v0, :cond_36

    .line 197
    sget-object v0, Lcom/dropbox/android/widget/LocalItemView;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load media icon type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    if-eqz p1, :cond_53

    const-string v0, "folder"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 199
    invoke-virtual {p0}, Lcom/dropbox/android/widget/LocalItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "folder"

    invoke-static {v0, v1}, Lcom/dropbox/android/util/an;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 205
    :cond_36
    :goto_36
    if-eqz v0, :cond_66

    .line 206
    iget-object v1, p0, Lcom/dropbox/android/widget/LocalItemView;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 207
    iget-object v0, p0, Lcom/dropbox/android/widget/LocalItemView;->e:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 208
    iget-boolean v0, p0, Lcom/dropbox/android/widget/LocalItemView;->k:Z

    if-eqz v0, :cond_5e

    iget-boolean v0, p0, Lcom/dropbox/android/widget/LocalItemView;->l:Z

    if-nez v0, :cond_5e

    .line 209
    iget-object v0, p0, Lcom/dropbox/android/widget/LocalItemView;->e:Landroid/widget/ImageView;

    sget-object v1, Lcom/dropbox/android/widget/LocalItemView;->o:Landroid/graphics/ColorMatrixColorFilter;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 216
    :goto_52
    return-void

    .line 201
    :cond_53
    invoke-virtual {p0}, Lcom/dropbox/android/widget/LocalItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "page_white"

    invoke-static {v0, v1}, Lcom/dropbox/android/util/an;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_36

    .line 211
    :cond_5e
    iget-object v0, p0, Lcom/dropbox/android/widget/LocalItemView;->e:Landroid/widget/ImageView;

    sget-object v1, Lcom/dropbox/android/widget/LocalItemView;->n:Landroid/graphics/ColorMatrixColorFilter;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_52

    .line 214
    :cond_66
    iget-object v0, p0, Lcom/dropbox/android/widget/LocalItemView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    goto :goto_52
.end method


# virtual methods
.method protected final a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 84
    invoke-static {p2}, Lcom/dropbox/android/util/aN;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 85
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 86
    const/4 v2, 0x3

    invoke-static {p1}, Lcom/dropbox/android/util/aq;->b(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v2

    new-instance v3, Ljava/sql/Date;

    invoke-direct {v3, v0, v1}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 89
    :goto_1c
    return-object v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method protected final a(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 71
    const v0, 0x7f03001b

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/widget/LocalItemView;->a:Landroid/view/View;

    .line 72
    iget-object v0, p0, Lcom/dropbox/android/widget/LocalItemView;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/dropbox/android/widget/LocalItemView;->addView(Landroid/view/View;)V

    .line 74
    iget-object v0, p0, Lcom/dropbox/android/widget/LocalItemView;->a:Landroid/view/View;

    const v1, 0x7f0d0076

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dropbox/android/widget/LocalItemView;->e:Landroid/widget/ImageView;

    .line 75
    iget-object v0, p0, Lcom/dropbox/android/widget/LocalItemView;->a:Landroid/view/View;

    const v1, 0x7f0d0074

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dropbox/android/widget/LocalItemView;->f:Landroid/widget/ImageView;

    .line 76
    iget-object v0, p0, Lcom/dropbox/android/widget/LocalItemView;->a:Landroid/view/View;

    const v1, 0x7f0d0075

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dropbox/android/widget/LocalItemView;->g:Landroid/widget/ImageView;

    .line 77
    iget-object v0, p0, Lcom/dropbox/android/widget/LocalItemView;->a:Landroid/view/View;

    const v1, 0x7f0d0077

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dropbox/android/widget/LocalItemView;->h:Landroid/widget/TextView;

    .line 78
    iget-object v0, p0, Lcom/dropbox/android/widget/LocalItemView;->a:Landroid/view/View;

    const v1, 0x7f0d0078

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dropbox/android/widget/LocalItemView;->i:Landroid/widget/TextView;

    .line 79
    iget-object v0, p0, Lcom/dropbox/android/widget/LocalItemView;->a:Landroid/view/View;

    const v1, 0x7f0d0079

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/dropbox/android/widget/LocalItemView;->j:Landroid/widget/CheckBox;

    .line 80
    return-void
.end method

.method public final a(Landroid/content/Context;Landroid/database/Cursor;ZLjava/util/Set;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 106
    invoke-direct {p0}, Lcom/dropbox/android/widget/LocalItemView;->a()V

    .line 108
    invoke-static {p2}, Lcom/dropbox/android/widget/S;->a(Landroid/database/Cursor;)Lcom/dropbox/android/widget/S;

    move-result-object v0

    .line 109
    sget-object v2, Lcom/dropbox/android/widget/am;->a:[I

    invoke-virtual {v0}, Lcom/dropbox/android/widget/S;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_118

    .line 123
    const-string v0, "path"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 124
    const-string v0, "filename"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 125
    const-string v0, "is_dir"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dropbox/android/widget/LocalItemView;->l:Z

    .line 127
    iget-object v0, p0, Lcom/dropbox/android/widget/LocalItemView;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-boolean v0, p0, Lcom/dropbox/android/widget/LocalItemView;->l:Z

    if-nez v0, :cond_72

    .line 130
    const-string v0, "size"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 131
    const-string v0, "modified"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-virtual {p0, p1, v0}, Lcom/dropbox/android/widget/LocalItemView;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 133
    invoke-static {p1, v4, v5, v7}, Lcom/dropbox/android/util/af;->a(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 135
    if-nez v6, :cond_cd

    .line 142
    :goto_5f
    iget-object v4, p0, Lcom/dropbox/android/widget/LocalItemView;->i:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v0, p0, Lcom/dropbox/android/widget/LocalItemView;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    iget-boolean v0, p0, Lcom/dropbox/android/widget/LocalItemView;->k:Z

    if-eqz v0, :cond_72

    .line 146
    iget-object v0, p0, Lcom/dropbox/android/widget/LocalItemView;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 150
    :cond_72
    if-eqz p3, :cond_8c

    .line 151
    iget-object v0, p0, Lcom/dropbox/android/widget/LocalItemView;->j:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 152
    iget-object v4, p0, Lcom/dropbox/android/widget/LocalItemView;->j:Landroid/widget/CheckBox;

    iget-boolean v0, p0, Lcom/dropbox/android/widget/LocalItemView;->l:Z

    if-eqz v0, :cond_e5

    const/4 v0, 0x4

    :goto_80
    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/dropbox/android/widget/LocalItemView;->j:Landroid/widget/CheckBox;

    invoke-interface {p4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 156
    :cond_8c
    iget-boolean v0, p0, Lcom/dropbox/android/widget/LocalItemView;->l:Z

    if-eqz v0, :cond_e7

    .line 157
    const-string v0, "folder"

    invoke-direct {p0, v0}, Lcom/dropbox/android/widget/LocalItemView;->a(Ljava/lang/String;)V

    .line 172
    :cond_95
    :goto_95
    return-void

    .line 112
    :pswitch_96
    const-string v0, "_up_folder"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-virtual {p0}, Lcom/dropbox/android/widget/LocalItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f09003a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 115
    iget-object v2, p0, Lcom/dropbox/android/widget/LocalItemView;->h:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p0, Lcom/dropbox/android/widget/LocalItemView;->e:Landroid/widget/ImageView;

    const v2, 0x7f02005a

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 117
    iget-object v0, p0, Lcom/dropbox/android/widget/LocalItemView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/dropbox/android/widget/LocalItemView;->e:Landroid/widget/ImageView;

    sget-object v1, Lcom/dropbox/android/widget/LocalItemView;->n:Landroid/graphics/ColorMatrixColorFilter;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_95

    .line 138
    :cond_cd
    invoke-virtual {p0}, Lcom/dropbox/android/widget/LocalItemView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f09004e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v1

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5f

    :cond_e5
    move v0, v1

    .line 152
    goto :goto_80

    .line 158
    :cond_e7
    invoke-static {v3}, Lcom/dropbox/android/util/aa;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/android/util/aa;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10f

    .line 160
    iget-object v0, p0, Lcom/dropbox/android/widget/LocalItemView;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 161
    invoke-static {}, Lcom/dropbox/android/filemanager/F;->a()Lcom/dropbox/android/filemanager/F;

    move-result-object v0

    .line 162
    iget v3, p0, Lcom/dropbox/android/widget/LocalItemView;->m:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/dropbox/android/widget/LocalItemView;->m:I

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/dropbox/android/widget/LocalItemView;->c:Lcom/dropbox/android/widget/an;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/dropbox/android/filemanager/F;->a(Ljava/lang/String;IILcom/dropbox/android/filemanager/O;)Lcom/dropbox/android/filemanager/Q;

    move-result-object v0

    .line 163
    if-eqz v0, :cond_95

    .line 164
    iget-object v0, v0, Lcom/dropbox/android/filemanager/Q;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0, v1}, Lcom/dropbox/android/widget/LocalItemView;->a(Landroid/graphics/Bitmap;Z)V

    goto :goto_95

    .line 167
    :cond_10f
    invoke-static {v3}, Lcom/dropbox/android/util/aa;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dropbox/android/widget/LocalItemView;->a(Ljava/lang/String;)V

    goto/16 :goto_95

    .line 109
    :pswitch_data_118
    .packed-switch 0x1
        :pswitch_96
    .end packed-switch
.end method
