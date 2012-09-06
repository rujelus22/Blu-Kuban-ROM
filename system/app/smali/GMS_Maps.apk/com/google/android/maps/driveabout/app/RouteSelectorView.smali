.class public Lcom/google/android/maps/driveabout/app/RouteSelectorView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private final a:[Lcom/google/android/maps/driveabout/app/cZ;

.field private b:Lcom/google/android/maps/driveabout/app/cZ;

.field private c:Lcom/google/android/maps/driveabout/app/dp;

.field private d:Lo/x;

.field private e:[Lo/x;

.field private f:I

.field private g:Lcom/google/android/maps/driveabout/app/cY;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 165
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 156
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/maps/driveabout/app/cZ;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->a:[Lcom/google/android/maps/driveabout/app/cZ;

    .line 166
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->a(Landroid/content/Context;)V

    .line 167
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 170
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 156
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/maps/driveabout/app/cZ;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->a:[Lcom/google/android/maps/driveabout/app/cZ;

    .line 171
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->a(Landroid/content/Context;)V

    .line 172
    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/RouteSelectorView;)Lcom/google/android/maps/driveabout/app/cY;
    .registers 2
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->g:Lcom/google/android/maps/driveabout/app/cY;

    return-object v0
.end method

.method static a(Landroid/content/Context;Lo/x;II)Ljava/lang/String;
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 258
    const/4 v1, 0x0

    .line 259
    const/4 v0, 0x0

    .line 260
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 261
    if-lez p2, :cond_b

    .line 262
    add-int/lit8 p2, p2, -0x1

    .line 264
    :cond_b
    :goto_b
    invoke-virtual {p1}, Lo/x;->k()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge p2, v2, :cond_53

    .line 265
    invoke-virtual {p1, p2}, Lo/x;->a(I)Lo/I;

    move-result-object v2

    .line 266
    invoke-virtual {v2}, Lo/I;->w()Lo/K;

    move-result-object v4

    .line 267
    if-eqz v4, :cond_50

    invoke-virtual {v4}, Lo/K;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_50

    .line 268
    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p1, v2}, Lo/x;->a(I)Lo/I;

    move-result-object v2

    invoke-virtual {v2}, Lo/I;->e()I

    move-result v2

    int-to-float v2, v2

    .line 270
    cmpl-float v5, v2, v0

    if-lez v5, :cond_37

    .line 271
    invoke-virtual {v4}, Lo/K;->b()Ljava/lang/String;

    move-result-object v1

    move v0, v2

    .line 274
    :cond_37
    int-to-float v5, p3

    const/high16 v6, 0x3e80

    mul-float/2addr v5, v6

    cmpl-float v2, v2, v5

    if-lez v2, :cond_50

    invoke-virtual {v4}, Lo/K;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_50

    .line 276
    invoke-virtual {v4}, Lo/K;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    :cond_50
    add-int/lit8 p2, p2, 0x1

    goto :goto_b

    .line 280
    :cond_53
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_66

    .line 281
    const v0, 0x7f0d008e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 283
    invoke-static {v0, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 287
    :cond_65
    :goto_65
    return-object v1

    .line 284
    :cond_66
    if-nez v1, :cond_65

    .line 287
    const v0, 0x7f0d009d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_65
.end method

.method private a(Landroid/content/Context;)V
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 222
    invoke-static {}, Lcom/google/android/maps/driveabout/app/dp;->a()Lcom/google/android/maps/driveabout/app/dp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->c:Lcom/google/android/maps/driveabout/app/dp;

    .line 224
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 226
    const v1, 0x7f040048

    invoke-virtual {v0, v1, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 228
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->a:[Lcom/google/android/maps/driveabout/app/cZ;

    new-instance v1, Lcom/google/android/maps/driveabout/app/cZ;

    const v2, 0x7f10012b

    invoke-virtual {p0, v2}, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, p0, v2, v4, v5}, Lcom/google/android/maps/driveabout/app/cZ;-><init>(Lcom/google/android/maps/driveabout/app/RouteSelectorView;Landroid/view/View;ZLcom/google/android/maps/driveabout/app/cX;)V

    aput-object v1, v0, v4

    .line 230
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->a:[Lcom/google/android/maps/driveabout/app/cZ;

    new-instance v1, Lcom/google/android/maps/driveabout/app/cZ;

    const v2, 0x7f10012c

    invoke-virtual {p0, v2}, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, p0, v2, v4, v5}, Lcom/google/android/maps/driveabout/app/cZ;-><init>(Lcom/google/android/maps/driveabout/app/RouteSelectorView;Landroid/view/View;ZLcom/google/android/maps/driveabout/app/cX;)V

    aput-object v1, v0, v6

    .line 232
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->a:[Lcom/google/android/maps/driveabout/app/cZ;

    const/4 v1, 0x2

    new-instance v2, Lcom/google/android/maps/driveabout/app/cZ;

    const v3, 0x7f10012d

    invoke-virtual {p0, v3}, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/google/android/maps/driveabout/app/cZ;-><init>(Lcom/google/android/maps/driveabout/app/RouteSelectorView;Landroid/view/View;ZLcom/google/android/maps/driveabout/app/cX;)V

    aput-object v2, v0, v1

    .line 235
    new-instance v0, Lcom/google/android/maps/driveabout/app/cZ;

    const v1, 0x7f10012a

    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1, v6, v5}, Lcom/google/android/maps/driveabout/app/cZ;-><init>(Lcom/google/android/maps/driveabout/app/RouteSelectorView;Landroid/view/View;ZLcom/google/android/maps/driveabout/app/cX;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->b:Lcom/google/android/maps/driveabout/app/cZ;

    .line 237
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->b:Lcom/google/android/maps/driveabout/app/cZ;

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/app/cZ;->b(Z)V

    .line 238
    return-void
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/app/RouteSelectorView;)Lcom/google/android/maps/driveabout/app/dp;
    .registers 2
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->c:Lcom/google/android/maps/driveabout/app/dp;

    return-object v0
.end method


# virtual methods
.method public a(III)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 178
    iget v0, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->f:I

    if-eq p1, v0, :cond_16

    .line 179
    iput p1, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->f:I

    .line 180
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->b:Lcom/google/android/maps/driveabout/app/cZ;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->d:Lo/x;

    invoke-static {v1, v2, p1, p2}, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->a(Landroid/content/Context;Lo/x;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/cZ;->a(Ljava/lang/String;)V

    .line 183
    :cond_16
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->b:Lcom/google/android/maps/driveabout/app/cZ;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->d:Lo/x;

    invoke-virtual {v1}, Lo/x;->q()I

    move-result v1

    invoke-virtual {v0, p2, v1}, Lcom/google/android/maps/driveabout/app/cZ;->a(II)V

    .line 185
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->b:Lcom/google/android/maps/driveabout/app/cZ;

    invoke-virtual {v0, p3, v3}, Lcom/google/android/maps/driveabout/app/cZ;->a(IZ)V

    .line 186
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->b:Lcom/google/android/maps/driveabout/app/cZ;

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/app/cZ;->a(I)V

    .line 187
    return-void
.end method

.method public setListener(Lcom/google/android/maps/driveabout/app/cY;)V
    .registers 2
    .parameter

    .prologue
    .line 300
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->g:Lcom/google/android/maps/driveabout/app/cY;

    .line 301
    return-void
.end method

.method public setRoutes(Lo/x;[Lo/x;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x3

    const/4 v3, 0x1

    const/16 v5, 0x8

    const/4 v1, 0x0

    .line 198
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->d:Lo/x;

    if-ne v0, p1, :cond_12

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->e:[Lo/x;

    invoke-static {v0, p2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 219
    :goto_11
    return-void

    .line 201
    :cond_12
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->d:Lo/x;

    .line 202
    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->e:[Lo/x;

    .line 203
    array-length v0, p2

    if-le v0, v3, :cond_57

    .line 204
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->a:[Lcom/google/android/maps/driveabout/app/cZ;

    aget-object v0, v0, v3

    invoke-virtual {v0, v5}, Lcom/google/android/maps/driveabout/app/cZ;->a(I)V

    .line 205
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->a:[Lcom/google/android/maps/driveabout/app/cZ;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    invoke-virtual {v0, v5}, Lcom/google/android/maps/driveabout/app/cZ;->a(I)V

    move v0, v1

    .line 206
    :goto_29
    array-length v2, p2

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v0, v2, :cond_51

    .line 207
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->a:[Lcom/google/android/maps/driveabout/app/cZ;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lcom/google/android/maps/driveabout/app/cZ;->a(I)V

    .line 208
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->a:[Lcom/google/android/maps/driveabout/app/cZ;

    aget-object v2, v2, v0

    aget-object v4, p2, v0

    invoke-virtual {v2, v4}, Lcom/google/android/maps/driveabout/app/cZ;->a(Lo/x;)V

    .line 209
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->a:[Lcom/google/android/maps/driveabout/app/cZ;

    aget-object v4, v2, v0

    aget-object v2, p2, v0

    if-ne p1, v2, :cond_4f

    move v2, v3

    :goto_49
    invoke-virtual {v4, v2}, Lcom/google/android/maps/driveabout/app/cZ;->a(Z)V

    .line 206
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    :cond_4f
    move v2, v1

    .line 209
    goto :goto_49

    .line 211
    :cond_51
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->b:Lcom/google/android/maps/driveabout/app/cZ;

    invoke-virtual {v0, v5}, Lcom/google/android/maps/driveabout/app/cZ;->a(I)V

    goto :goto_11

    :cond_57
    move v0, v1

    .line 213
    :goto_58
    if-ge v0, v6, :cond_64

    .line 214
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->a:[Lcom/google/android/maps/driveabout/app/cZ;

    aget-object v2, v2, v0

    invoke-virtual {v2, v5}, Lcom/google/android/maps/driveabout/app/cZ;->a(I)V

    .line 213
    add-int/lit8 v0, v0, 0x1

    goto :goto_58

    .line 216
    :cond_64
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->b:Lcom/google/android/maps/driveabout/app/cZ;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/cZ;->a(Lo/x;)V

    .line 217
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->b:Lcom/google/android/maps/driveabout/app/cZ;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/cZ;->a(I)V

    goto :goto_11
.end method
