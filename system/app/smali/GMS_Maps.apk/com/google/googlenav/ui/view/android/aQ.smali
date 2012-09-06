.class public Lcom/google/googlenav/ui/view/android/aq;
.super Lcom/google/googlenav/ui/view/android/V;
.source "SourceFile"


# static fields
.field protected static a:I


# instance fields
.field private b:LaP/d;

.field private final c:Lad/b;

.field private d:Lcom/google/googlenav/ui/view/android/av;

.field private e:Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 73
    const/4 v0, -0x1

    sput v0, Lcom/google/googlenav/ui/view/android/aq;->a:I

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/ui/g;Lad/b;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-static {}, Lcom/google/googlenav/ui/view/android/aq;->p()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/view/android/V;-><init>(Lcom/google/googlenav/ui/g;I)V

    .line 98
    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/aq;->c:Lad/b;

    .line 99
    sget v0, Lcom/google/googlenav/ui/view/android/aq;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2e

    .line 100
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 101
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aq;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 110
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    sput v0, Lcom/google/googlenav/ui/view/android/aq;->a:I

    .line 112
    :cond_2e
    return-void
.end method

.method private a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .registers 4
    .parameter

    .prologue
    .line 236
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_18

    const v0, 0x7f0400a9

    .line 238
    :goto_d
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 239
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/aq;->a(Landroid/view/ViewGroup;)V

    .line 240
    return-object v0

    .line 236
    :cond_18
    const v0, 0x7f0400a8

    goto :goto_d
.end method

.method private static a(Lad/b;)Ljava/lang/CharSequence;
    .registers 4
    .parameter

    .prologue
    .line 325
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 326
    invoke-virtual {p0}, Lad/b;->aq()Lad/y;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/ui/bA;->a(Lad/y;)Ljava/lang/String;

    move-result-object v1

    .line 327
    sget-object v2, Lcom/google/googlenav/ui/aV;->w:Lcom/google/googlenav/ui/aV;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aW;->b(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v2

    .line 328
    invoke-static {v2}, Lcom/google/googlenav/ui/aX;->a(Lcom/google/googlenav/ui/aW;)Ljava/util/Vector;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/aX;->a(Ljava/util/Vector;Ljava/util/Vector;)V

    .line 329
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lad/b;->aq()Lad/y;

    move-result-object v2

    invoke-static {v1, v2}, LaM/I;->a(Ljava/lang/String;Lad/y;)Ljava/util/Vector;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aX;->a(Ljava/util/Vector;Ljava/util/Vector;)V

    .line 332
    invoke-static {v0}, Lcom/google/googlenav/ui/bn;->a(Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lad/b;Ljava/util/Vector;)Ljava/lang/CharSequence;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 347
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 348
    invoke-virtual {p0}, Lad/b;->as()Lad/y;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/ui/bA;->a(Lad/y;)Ljava/lang/String;

    move-result-object v1

    .line 349
    sget-object v2, Lcom/google/googlenav/ui/aV;->w:Lcom/google/googlenav/ui/aV;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aW;->b(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/aX;->a(Ljava/util/Vector;Lcom/google/googlenav/ui/aW;)V

    .line 351
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lad/b;->as()Lad/y;

    move-result-object v2

    invoke-static {v1, v2}, LaM/I;->a(Ljava/lang/String;Lad/y;)Ljava/util/Vector;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aX;->a(Ljava/util/Vector;Ljava/util/Vector;)V

    .line 354
    invoke-static {}, LaM/O;->bp()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 355
    invoke-static {v0, p1}, Lcom/google/googlenav/ui/aX;->a(Ljava/util/Vector;Ljava/util/Vector;)V

    .line 357
    :cond_2e
    invoke-static {v0}, Lcom/google/googlenav/ui/bn;->a(Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lad/b;Lcom/google/googlenav/ui/g;Ljava/util/ArrayList;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x7

    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v1, 0x0

    .line 175
    invoke-virtual {p0}, Lad/b;->x()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 176
    new-instance v0, LaQ/p;

    const/16 v2, 0x435

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/aV;->t:Lcom/google/googlenav/ui/aV;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlenav/ui/bn;->a(Lcom/google/googlenav/ui/aW;)Ljava/lang/CharSequence;

    move-result-object v2

    const/16 v3, 0xd7

    invoke-direct {v0, v2, v4, v3}, LaQ/p;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_24
    invoke-virtual {p0}, Lad/b;->ak()Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_41

    .line 183
    new-instance v2, LaQ/p;

    sget-object v3, Lcom/google/googlenav/ui/aV;->i:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v3}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ui/bn;->a(Lcom/google/googlenav/ui/aW;)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v3, -0x1

    invoke-direct {v2, v0, v4, v3}, LaQ/p;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    :cond_41
    new-instance v0, LaQ/m;

    const/16 v2, 0x4cb

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/aV;->bM:Lcom/google/googlenav/ui/aV;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlenav/ui/bn;->a(Lcom/google/googlenav/ui/aW;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v0, v2, v5}, LaQ/m;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 191
    :goto_5a
    invoke-virtual {p0}, Lad/b;->aA()I

    move-result v2

    if-ge v0, v2, :cond_70

    .line 193
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v2

    const/16 v3, 0xd9

    invoke-static {p0, v2, v0, v3, v1}, Lcom/google/googlenav/ui/wizard/iA;->a(Lad/b;Lcom/google/googlenav/ui/bn;III)LaQ/bB;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    add-int/lit8 v0, v0, 0x1

    goto :goto_5a

    .line 197
    :cond_70
    invoke-virtual {p0}, Lad/b;->ax()Z

    move-result v0

    if-eqz v0, :cond_df

    .line 198
    const/16 v0, 0x5bd

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/aV;->bM:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v0

    .line 200
    new-instance v1, LaQ/m;

    invoke-static {v0}, Lcom/google/googlenav/ui/bn;->a(Lcom/google/googlenav/ui/aW;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {v1, v0, v5}, LaQ/m;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-virtual {p0}, Lad/b;->S()Lad/l;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/bu;->b(Lad/l;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/aV;->t:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v0

    .line 205
    new-instance v1, LaQ/i;

    invoke-static {v0}, Lcom/google/googlenav/ui/bn;->a(Lcom/google/googlenav/ui/aW;)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v2, 0x6

    const/16 v3, 0xd8

    invoke-direct {v1, v0, v2, v3}, LaQ/i;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    const/16 v0, 0x5e7

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/aV;->t:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v0

    .line 211
    new-instance v1, LaQ/c;

    invoke-static {v0}, Lcom/google/googlenav/ui/bn;->a(Lcom/google/googlenav/ui/aW;)Ljava/lang/CharSequence;

    move-result-object v0

    const/16 v2, 0xdb

    invoke-direct {v1, v0, v6, v2}, LaQ/c;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    const/16 v0, 0x5e6

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/aV;->t:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v0

    .line 217
    new-instance v1, LaQ/c;

    invoke-static {v0}, Lcom/google/googlenav/ui/bn;->a(Lcom/google/googlenav/ui/aW;)Ljava/lang/CharSequence;

    move-result-object v0

    const/16 v2, 0xda

    invoke-direct {v1, v0, v6, v2}, LaQ/c;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    :cond_df
    return-void
.end method

.method private a(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    const/4 v2, 0x0

    const/16 v3, 0x8

    .line 122
    const v0, 0x7f100026

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 123
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 124
    new-instance v1, Lcom/google/googlenav/ui/view/android/at;

    invoke-direct {v1, p0, v2}, Lcom/google/googlenav/ui/view/android/at;-><init>(Lcom/google/googlenav/ui/view/android/aq;Lcom/google/googlenav/ui/view/android/ar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 125
    new-instance v1, Lcom/google/googlenav/ui/view/android/au;

    invoke-direct {v1, p0, v2}, Lcom/google/googlenav/ui/view/android/au;-><init>(Lcom/google/googlenav/ui/view/android/aq;Lcom/google/googlenav/ui/view/android/ar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 126
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aq;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/view/android/aq;->a(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 127
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aq;->g:Lcom/google/googlenav/ui/g;

    instance-of v1, v1, LaM/O;

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aq;->c:Lad/b;

    invoke-virtual {v1}, Lad/b;->m()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 128
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/aq;->a(Landroid/widget/ListView;)V

    .line 130
    :cond_3c
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aq;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/aq;->l()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v1, v3, v2}, Lcom/google/googlenav/ui/view/android/aq;->a(Landroid/content/Context;ILjava/util/List;)Lcom/google/googlenav/ui/view/android/L;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 133
    const v0, 0x7f10002e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 134
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 135
    return-void
.end method

.method private a(Landroid/view/View;ILjava/lang/CharSequence;Ljava/lang/String;I)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 288
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 289
    const v0, 0x7f100254

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 290
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    const v0, 0x7f100047

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 293
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/K;->as()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 297
    new-instance v1, Lcom/google/googlenav/ui/view/android/ar;

    invoke-direct {v1, p0, p5}, Lcom/google/googlenav/ui/view/android/ar;-><init>(Lcom/google/googlenav/ui/view/android/aq;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    :goto_2e
    return-void

    .line 305
    :cond_2f
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 306
    new-instance v0, Lcom/google/googlenav/ui/view/android/as;

    invoke-direct {v0, p0, p5}, Lcom/google/googlenav/ui/view/android/as;-><init>(Lcom/google/googlenav/ui/view/android/aq;I)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2e
.end method

.method private a(Landroid/view/ViewGroup;)V
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 244
    const v2, 0x7f100253

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aq;->c:Lad/b;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/aq;->a(Lad/b;)Ljava/lang/CharSequence;

    move-result-object v3

    const/16 v0, 0x1ba

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xee

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/aq;->a(Landroid/view/View;ILjava/lang/CharSequence;Ljava/lang/String;I)V

    .line 246
    const/4 v0, 0x0

    .line 247
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aq;->g:Lcom/google/googlenav/ui/g;

    instance-of v1, v1, LaM/O;

    if-eqz v1, :cond_28

    .line 248
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aq;->g:Lcom/google/googlenav/ui/g;

    check-cast v0, LaM/O;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aq;->c:Lad/b;

    invoke-static {v0, v1}, LaM/I;->a(LaM/O;Lad/b;)Ljava/util/Vector;

    move-result-object v0

    .line 251
    :cond_28
    const v2, 0x7f100255

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aq;->c:Lad/b;

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/view/android/aq;->a(Lad/b;Ljava/util/Vector;)Ljava/lang/CharSequence;

    move-result-object v3

    const/16 v0, 0x5c0

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xef

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/aq;->a(Landroid/view/View;ILjava/lang/CharSequence;Ljava/lang/String;I)V

    .line 254
    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 256
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->as()Z

    move-result v0

    if-nez v0, :cond_78

    .line 259
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aq;->g:Lcom/google/googlenav/ui/g;

    instance-of v0, v0, LaM/O;

    if-eqz v0, :cond_7c

    .line 260
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aq;->g:Lcom/google/googlenav/ui/g;

    check-cast v0, LaM/O;

    .line 261
    const/4 v4, 0x1

    .line 262
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aq;->c:Lad/b;

    invoke-virtual {v0, v1}, LaM/O;->d(Lad/b;)Z

    move-result v3

    .line 264
    :goto_5c
    new-instance v0, Lcom/google/googlenav/ui/view/android/av;

    const v1, 0x7f10024b

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/aq;->g:Lcom/google/googlenav/ui/g;

    iget-object v5, p0, Lcom/google/googlenav/ui/view/android/aq;->c:Lad/b;

    invoke-virtual {v5}, Lad/b;->aO()I

    move-result v5

    iget-object v6, p0, Lcom/google/googlenav/ui/view/android/aq;->c:Lad/b;

    invoke-virtual {v6}, Lad/b;->k()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/ui/view/android/av;-><init>(Landroid/view/View;Lcom/google/googlenav/ui/g;ZZII)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/aq;->d:Lcom/google/googlenav/ui/view/android/av;

    .line 268
    :cond_78
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/aq;->b(Landroid/view/View;)V

    .line 269
    return-void

    :cond_7c
    move v4, v6

    move v3, v6

    goto :goto_5c
.end method

.method private a(Landroid/widget/ListView;)V
    .registers 9
    .parameter

    .prologue
    .line 436
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 437
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/aq;->c:Lad/b;

    check-cast v2, Lad/w;

    .line 438
    new-instance v0, LaP/e;

    invoke-direct {v0, v2}, LaP/e;-><init>(Lad/w;)V

    invoke-virtual {v0}, LaP/e;->a()LaP/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/aq;->b:LaP/d;

    .line 439
    new-instance v0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aq;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/aq;->b:LaP/d;

    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/aq;->g:Lcom/google/googlenav/ui/g;

    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlenav/ui/bn;->S()Lcom/google/googlenav/ui/p;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;-><init>(Landroid/content/Context;Lad/w;LaP/d;Lcom/google/googlenav/ui/g;Lcom/google/googlenav/ui/p;Z)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/aq;->e:Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;

    .line 446
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aq;->e:Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 447
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 448
    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .registers 6
    .parameter

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aq;->g:Lcom/google/googlenav/ui/g;

    check-cast v0, LaM/O;

    invoke-virtual {v0}, LaM/O;->e()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 225
    const/16 v0, 0x504

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/aV;->F:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v0

    .line 227
    new-instance v1, LaQ/f;

    invoke-static {v0}, Lcom/google/googlenav/ui/bn;->a(Lcom/google/googlenav/ui/aW;)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v2, 0x1

    const/16 v3, 0xca

    invoke-direct {v1, v0, v2, v3}, LaQ/f;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aq;->c:Lad/b;

    invoke-virtual {v0}, Lad/b;->m()Z

    move-result v0

    if-nez v0, :cond_36

    .line 230
    new-instance v0, LaQ/l;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, LaQ/l;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    :cond_36
    return-void
.end method

.method private b(Landroid/view/View;)V
    .registers 11
    .parameter

    .prologue
    const v8, 0x7f0f003f

    const v7, 0x7f0f003e

    const/16 v6, 0x8

    const/4 v2, 0x0

    .line 367
    const v0, 0x7f100256

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 369
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aq;->g:Lcom/google/googlenav/ui/g;

    instance-of v1, v1, Lcom/google/googlenav/ui/wizard/bu;

    if-eqz v1, :cond_1a

    .line 370
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 433
    :goto_19
    return-void

    .line 374
    :cond_1a
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aq;->c:Lad/b;

    invoke-virtual {v1}, Lad/b;->m()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 375
    const v0, 0x7f10025c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 376
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_19

    .line 378
    :cond_2d
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 381
    const v0, 0x7f100257

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 382
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aq;->c:Lad/b;

    invoke-virtual {v1}, Lad/b;->aH()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e1

    .line 383
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 384
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aq;->c:Lad/b;

    invoke-virtual {v1}, Lad/b;->aH()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    :goto_51
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aq;->c:Lad/b;

    invoke-virtual {v0}, Lad/b;->ab()Lad/h;

    move-result-object v0

    if-eqz v0, :cond_e6

    const/4 v0, 0x1

    move v5, v0

    .line 390
    :goto_5b
    if-eqz v5, :cond_e9

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aq;->c:Lad/b;

    invoke-virtual {v0}, Lad/b;->M()I

    move-result v0

    move v1, v0

    .line 392
    :goto_64
    const/4 v3, 0x0

    .line 393
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aq;->c:Lad/b;

    invoke-virtual {v0}, Lad/b;->k()I

    move-result v0

    if-nez v0, :cond_116

    .line 394
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aq;->c:Lad/b;

    check-cast v0, Lad/s;

    invoke-virtual {v0}, Lad/s;->aU()I

    move-result v4

    .line 395
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aq;->c:Lad/b;

    invoke-virtual {v0}, Lad/b;->F()Z

    move-result v0

    if-eqz v0, :cond_ec

    .line 396
    const/16 v0, 0x269

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 400
    :goto_83
    add-int/2addr v1, v4

    move-object v3, v0

    move v4, v1

    .line 404
    :goto_86
    if-eqz v5, :cond_f7

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aq;->c:Lad/b;

    invoke-virtual {v0}, Lad/b;->O()I

    move-result v0

    move v1, v0

    .line 405
    :goto_8f
    const v0, 0x7f100194

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 406
    if-nez v1, :cond_f9

    .line 407
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 416
    :goto_9d
    const v0, 0x7f100258

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 417
    const v1, 0x7f100259

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 418
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v5

    invoke-static {v4}, Lcom/google/googlenav/ui/bi;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4, v7, v8}, Lcom/google/googlenav/ui/bn;->a(Ljava/lang/String;II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    invoke-static {v3}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10f

    .line 422
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 428
    :goto_ca
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aq;->c:Lad/b;

    invoke-static {v0}, LaM/I;->a(Lad/b;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 429
    const v0, 0x7f10025b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 430
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 431
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_19

    .line 386
    :cond_e1
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_51

    :cond_e6
    move v5, v2

    .line 389
    goto/16 :goto_5b

    :cond_e9
    move v1, v2

    .line 390
    goto/16 :goto_64

    .line 397
    :cond_ec
    const/16 v0, 0x3c

    if-le v4, v0, :cond_113

    .line 398
    const/16 v0, 0x209

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_83

    :cond_f7
    move v1, v2

    .line 404
    goto :goto_8f

    .line 409
    :cond_f9
    iget-object v5, p0, Lcom/google/googlenav/ui/view/android/aq;->c:Lad/b;

    invoke-virtual {v5}, Lad/b;->av()I

    move-result v5

    invoke-static {v1, v5}, Lcom/google/googlenav/ui/o;->a(II)Ljava/lang/String;

    move-result-object v1

    .line 411
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v5

    invoke-virtual {v5, v1, v7, v8}, Lcom/google/googlenav/ui/bn;->a(Ljava/lang/String;II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9d

    .line 425
    :cond_10f
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_ca

    :cond_113
    move-object v0, v3

    goto/16 :goto_83

    :cond_116
    move v4, v1

    goto/16 :goto_86
.end method

.method private l()Ljava/util/List;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 150
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 151
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aq;->g:Lcom/google/googlenav/ui/g;

    instance-of v0, v0, Lcom/google/googlenav/ui/wizard/bu;

    if-eqz v0, :cond_24

    .line 152
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aq;->c:Lad/b;

    invoke-virtual {v0}, Lad/b;->m()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aq;->c:Lad/b;

    invoke-virtual {v0}, Lad/b;->y()I

    move-result v0

    if-nez v0, :cond_23

    .line 153
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aq;->c:Lad/b;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aq;->g:Lcom/google/googlenav/ui/g;

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/view/android/aq;->a(Lad/b;Lcom/google/googlenav/ui/g;Ljava/util/ArrayList;)V

    .line 169
    :cond_23
    :goto_23
    return-object v2

    .line 156
    :cond_24
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aq;->c:Lad/b;

    invoke-virtual {v0}, Lad/b;->m()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 157
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aq;->c:Lad/b;

    invoke-virtual {v0}, Lad/b;->az()I

    move-result v0

    .line 158
    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/aq;->c:Lad/b;

    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v4

    const/4 v5, -0x1

    invoke-static {v3, v4, v0, v5, v1}, Lcom/google/googlenav/ui/wizard/iA;->a(Lad/b;Lcom/google/googlenav/ui/bn;III)LaQ/bB;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    invoke-direct {p0, v2}, Lcom/google/googlenav/ui/view/android/aq;->a(Ljava/util/ArrayList;)V

    goto :goto_23

    .line 162
    :cond_44
    invoke-direct {p0, v2}, Lcom/google/googlenav/ui/view/android/aq;->a(Ljava/util/ArrayList;)V

    move v0, v1

    .line 163
    :goto_48
    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/aq;->c:Lad/b;

    invoke-virtual {v3}, Lad/b;->f()I

    move-result v3

    if-ge v0, v3, :cond_23

    .line 164
    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/aq;->c:Lad/b;

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/google/googlenav/ui/view/android/aq;->g:Lcom/google/googlenav/ui/g;

    invoke-static {v3, v0, v4, v5, v1}, LaM/G;->a(Lad/b;IILcom/google/googlenav/ui/g;Z)LaQ/H;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_48
.end method

.method private m()Landroid/widget/ListView;
    .registers 2

    .prologue
    .line 555
    const v0, 0x7f100026

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aq;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    return-object v0
.end method


# virtual methods
.method protected N_()V
    .registers 3

    .prologue
    .line 139
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->as()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 140
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aq;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setUiOptions(I)V

    .line 142
    :cond_12
    return-void
.end method

.method protected a(Landroid/content/Context;ILjava/util/List;)Lcom/google/googlenav/ui/view/android/L;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 146
    new-instance v0, Lcom/google/googlenav/ui/view/android/L;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aq;->g:Lcom/google/googlenav/ui/g;

    invoke-direct {v0, p1, v1, p3, p2}, Lcom/google/googlenav/ui/view/android/L;-><init>(Landroid/content/Context;Lcom/google/googlenav/ui/g;Ljava/util/List;I)V

    return-object v0
.end method

.method public a(I)V
    .registers 5
    .parameter

    .prologue
    .line 542
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/aq;->m()Landroid/widget/ListView;

    move-result-object v0

    .line 543
    if-nez v0, :cond_7

    .line 552
    :goto_6
    return-void

    .line 546
    :cond_7
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aq;->e:Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;

    if-eqz v1, :cond_19

    .line 547
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aq;->e:Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a()I

    move-result v1

    .line 548
    sget v2, Lcom/google/googlenav/ui/view/android/aq;->a:I

    sub-int v1, v2, v1

    invoke-virtual {v0, p1, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_6

    .line 550
    :cond_19
    sget v1, Lcom/google/googlenav/ui/view/android/aq;->a:I

    invoke-virtual {v0, p1, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_6
.end method

.method protected a(Landroid/app/ActionBar;)V
    .registers 3
    .parameter

    .prologue
    .line 576
    const/16 v0, 0xf9

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 577
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 578
    return-void
.end method

.method protected a(ILandroid/view/MenuItem;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 510
    .line 511
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_38

    :pswitch_8
    move v0, v1

    .line 538
    :goto_9
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/aq;->g:Lcom/google/googlenav/ui/g;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v1, v3}, Lcom/google/googlenav/ui/g;->a(IILjava/lang/Object;)Z

    move-result v0

    return v0

    .line 513
    :pswitch_11
    const/4 v0, 0x1

    .line 514
    goto :goto_9

    .line 516
    :pswitch_13
    const/16 v0, 0xec

    .line 517
    goto :goto_9

    .line 519
    :pswitch_16
    const/16 v0, 0xcb

    .line 520
    goto :goto_9

    .line 522
    :pswitch_19
    const/16 v0, 0xcc

    .line 523
    goto :goto_9

    .line 525
    :pswitch_1c
    invoke-interface {p2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const/16 v2, 0x4de

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 526
    const/16 v0, 0xdc

    goto :goto_9

    .line 528
    :cond_2f
    const/16 v0, 0xe6

    .line 530
    goto :goto_9

    .line 532
    :pswitch_32
    const/16 v0, 0xc9

    .line 533
    goto :goto_9

    .line 535
    :pswitch_35
    const/16 v0, 0x5e6

    goto :goto_9

    .line 511
    :pswitch_data_38
    .packed-switch 0x7f1004c3
        :pswitch_13
        :pswitch_8
        :pswitch_16
        :pswitch_19
        :pswitch_1c
        :pswitch_32
        :pswitch_35
        :pswitch_11
    .end packed-switch
.end method

.method protected c()Landroid/view/View;
    .registers 4

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aq;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400a1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 117
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/aq;->a(Landroid/view/View;)V

    .line 118
    return-object v0
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 565
    const/4 v0, 0x1

    return v0
.end method

.method public i()V
    .registers 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aq;->d:Lcom/google/googlenav/ui/view/android/av;

    if-eqz v0, :cond_9

    .line 273
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aq;->d:Lcom/google/googlenav/ui/view/android/av;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/av;->c()V

    .line 275
    :cond_9
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 10
    .parameter

    .prologue
    const v7, 0x7f1004c7

    const/16 v6, 0x4de

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 452
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aq;->g:Lcom/google/googlenav/ui/g;

    instance-of v0, v0, Lcom/google/googlenav/ui/wizard/bu;

    if-eqz v0, :cond_34

    .line 453
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aq;->g:Lcom/google/googlenav/ui/g;

    check-cast v0, Lcom/google/googlenav/ui/wizard/bu;

    .line 454
    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/bu;->e()Lad/b;

    move-result-object v0

    .line 455
    sget-object v1, Lcom/google/googlenav/ui/view/android/aq;->f:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v1}, Lcom/google/googlenav/android/BaseMapsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v3, 0x7f110007

    invoke-virtual {v1, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 456
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 457
    invoke-static {v6}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 458
    invoke-static {v0}, Lcom/google/googlenav/ui/i;->a(Lad/b;)Z

    move-result v0

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 505
    :goto_33
    return v2

    .line 462
    :cond_34
    sget-object v0, Lcom/google/googlenav/ui/view/android/aq;->f:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/android/BaseMapsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f110006

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 464
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aq;->g:Lcom/google/googlenav/ui/g;

    check-cast v0, LaM/O;

    .line 465
    invoke-virtual {v0}, LaM/O;->a()Lad/b;

    move-result-object v4

    .line 467
    const v1, 0x7f1004ca

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 468
    if-eqz v1, :cond_5a

    .line 470
    const/16 v5, 0x508

    invoke-static {v5}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 473
    :cond_5a
    const v1, 0x7f1004c3

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 474
    if-eqz v1, :cond_73

    .line 476
    const/16 v5, 0x2fe

    invoke-static {v5}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 477
    invoke-virtual {v0}, LaM/O;->bj()Z

    move-result v5

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 480
    :cond_73
    const v1, 0x7f1004c5

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 481
    const/16 v5, 0x1ca

    invoke-static {v5}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 483
    const v1, 0x7f1004c6

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 484
    const/16 v1, 0x5f7

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 485
    invoke-virtual {v0}, LaM/O;->bk()Z

    move-result v1

    if-eqz v1, :cond_102

    invoke-virtual {v4}, Lad/b;->aq()Lad/y;

    move-result-object v1

    invoke-virtual {v1}, Lad/y;->q()Z

    move-result v1

    if-eqz v1, :cond_102

    move v1, v2

    :goto_a4
    invoke-interface {v5, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 488
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 489
    invoke-virtual {v0}, LaM/O;->bf()Z

    move-result v1

    if-eqz v1, :cond_104

    invoke-static {v6}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    :goto_b5
    invoke-interface {v5, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 492
    invoke-static {v4}, Lcom/google/googlenav/ui/i;->a(Lad/b;)Z

    move-result v1

    invoke-interface {v5, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 494
    const v1, 0x7f1004c8

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 495
    const/16 v5, 0x37

    invoke-static {v5}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 496
    invoke-virtual {v4}, Lad/b;->Y()Z

    move-result v5

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 498
    const v1, 0x7f1004c9

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 499
    const/16 v1, 0x43c

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 500
    invoke-virtual {v4}, Lad/b;->e()Lcom/google/googlenav/E;

    move-result-object v1

    if-nez v1, :cond_10b

    invoke-virtual {v4}, Lad/b;->aw()Lat/B;

    move-result-object v1

    .line 502
    :goto_f0
    invoke-virtual {v4}, Lad/b;->m()Z

    move-result v4

    if-nez v4, :cond_fd

    invoke-virtual {v0, v1}, LaM/O;->c(Lat/B;)Z

    move-result v0

    if-eqz v0, :cond_fd

    move v3, v2

    :cond_fd
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_33

    :cond_102
    move v1, v3

    .line 485
    goto :goto_a4

    .line 489
    :cond_104
    const/16 v1, 0xf7

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_b5

    .line 500
    :cond_10b
    invoke-virtual {v4}, Lad/b;->e()Lcom/google/googlenav/E;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/E;->a()Lat/B;

    move-result-object v1

    goto :goto_f0
.end method

.method public w_()Ljava/lang/String;
    .registers 2

    .prologue
    .line 570
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_11

    const/16 v0, 0xf9

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method
