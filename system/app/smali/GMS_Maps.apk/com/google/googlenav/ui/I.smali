.class public Lcom/google/googlenav/ui/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;[Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)I
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 184
    invoke-static {p1, p2}, Lcom/google/googlenav/ui/i;->a([Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)I

    move-result v0

    .line 185
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    .line 186
    if-ltz v0, :cond_19

    if-nez v1, :cond_10

    if-gt v0, v2, :cond_19

    :cond_10
    if-ne v1, v2, :cond_1e

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    if-lt v0, v1, :cond_1e

    .line 190
    :cond_19
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    .line 192
    :cond_1e
    return v0
.end method

.method private static a([Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)I
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 165
    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_18

    .line 166
    aget-object v1, p0, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    .line 167
    if-ne v1, p1, :cond_15

    .line 168
    aget-object v0, p0, v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    .line 171
    :goto_14
    return v0

    .line 165
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 171
    :cond_18
    const/4 v0, -0x1

    goto :goto_14
.end method

.method public static a(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 116
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/aY;->q:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 117
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 118
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 119
    return-object v0
.end method

.method public static a(Lcom/google/googlenav/ui/view/G;Ljava/util/Vector;[Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/ui/view/G;
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    .line 207
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v3

    .line 208
    new-array v4, v3, [I

    .line 209
    new-array v5, v3, [I

    .line 210
    invoke-static {v3}, Lcom/google/common/collect/cx;->b(I)Ljava/util/ArrayList;

    move-result-object v6

    .line 212
    const/4 v0, 0x0

    move v2, v0

    :goto_e
    if-ge v2, v3, :cond_69

    .line 213
    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 215
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    .line 216
    aput v1, v4, v2

    .line 218
    invoke-static {v0, p2, v1}, Lcom/google/googlenav/ui/i;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;[Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)I

    move-result v1

    aput v1, v5, v2

    .line 220
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    .line 221
    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 222
    if-nez v1, :cond_3c

    .line 223
    sget-object v0, Lcom/google/googlenav/ui/aV;->bA:Lcom/google/googlenav/ui/aV;

    invoke-static {v7, v0}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v0

    .line 224
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    :cond_38
    :goto_38
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_e

    .line 225
    :cond_3c
    const/4 v8, 0x1

    if-ne v1, v8, :cond_38

    .line 226
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v8

    .line 227
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v9

    .line 228
    const/4 v1, 0x0

    :goto_49
    if-ge v1, v8, :cond_61

    .line 229
    const/4 v10, 0x4

    invoke-virtual {v0, v10, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v10

    .line 231
    const/4 v11, 0x6

    invoke-virtual {v10, v11}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 233
    sget-object v11, Lcom/google/googlenav/ui/aV;->av:Lcom/google/googlenav/ui/aV;

    invoke-static {v10, v11}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    add-int/lit8 v1, v1, 0x1

    goto :goto_49

    .line 236
    :cond_61
    invoke-static {v7, v9}, Lcom/google/googlenav/ui/n;->a(Ljava/lang/String;Ljava/util/List;)Lcom/google/googlenav/ui/n;

    move-result-object v0

    .line 238
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_38

    .line 241
    :cond_69
    iput-object v4, p0, Lcom/google/googlenav/ui/view/G;->d:[I

    .line 242
    iput-object v5, p0, Lcom/google/googlenav/ui/view/G;->e:[I

    .line 243
    iput-object v6, p0, Lcom/google/googlenav/ui/view/G;->f:Ljava/util/List;

    .line 244
    return-object p0
.end method

.method public static a(Lad/b;ILcom/google/googlenav/ui/g;)Lcom/google/googlenav/ui/view/android/A;
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 268
    invoke-static {}, Lad/o;->a()Lad/o;

    move-result-object v0

    invoke-virtual {p0}, Lad/b;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Lad/o;->a(I)Ljava/util/Vector;

    move-result-object v6

    .line 270
    invoke-virtual {p0}, Lad/b;->o()[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v7

    .line 271
    new-instance v0, Lcom/google/googlenav/ui/view/G;

    invoke-static {p1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [I

    new-array v3, v3, [I

    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/G;-><init>(Ljava/lang/String;[I[ILjava/util/List;Z)V

    invoke-static {v0, v6, v7}, Lcom/google/googlenav/ui/i;->a(Lcom/google/googlenav/ui/view/G;Ljava/util/Vector;[Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/ui/view/G;

    move-result-object v0

    .line 275
    new-instance v1, Lcom/google/googlenav/ui/view/android/A;

    invoke-direct {v1, p2, v0}, Lcom/google/googlenav/ui/view/android/A;-><init>(Lcom/google/googlenav/ui/g;Lcom/google/googlenav/ui/view/G;)V

    return-object v1
.end method

.method public static a(Lad/b;Lcom/google/googlenav/ui/view/G;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 134
    if-nez p1, :cond_3

    .line 141
    :goto_2
    return-void

    .line 137
    :cond_3
    invoke-static {p1}, Lcom/google/googlenav/ui/i;->a(Lcom/google/googlenav/ui/view/G;)[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 138
    invoke-virtual {p0}, Lad/b;->o()[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-virtual {p0}, Lad/b;->k()I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/google/googlenav/ui/i;->a([Lcom/google/googlenav/common/io/protocol/ProtoBuf;[Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)V

    .line 140
    invoke-virtual {p0, v0}, Lad/b;->a([Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto :goto_2
.end method

.method public static a(Landroid/view/View;)V
    .registers 2
    .parameter

    .prologue
    .line 338
    const v0, 0x7f100168

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 339
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 340
    return-void
.end method

.method private static a(Landroid/view/ViewGroup;Lcom/google/googlenav/ui/aW;Lcom/google/googlenav/ui/view/G;ILcom/google/googlenav/ui/view/android/V;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 415
    invoke-virtual {p4}, Lcom/google/googlenav/ui/view/android/V;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040062

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 416
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 418
    const v0, 0x7f10017e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 419
    invoke-static {p1}, Lcom/google/googlenav/ui/bn;->a(Lcom/google/googlenav/ui/aW;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    const v3, 0x7f10017f

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 422
    iget-object v3, p2, Lcom/google/googlenav/ui/view/G;->e:[I

    aget v3, v3, p3

    if-ne v3, v2, :cond_48

    :goto_34
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 423
    new-instance v2, Lcom/google/googlenav/ui/l;

    invoke-direct {v2, p2, p3}, Lcom/google/googlenav/ui/l;-><init>(Lcom/google/googlenav/ui/view/G;I)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 431
    new-instance v2, Lcom/google/googlenav/ui/m;

    invoke-direct {v2, v1}, Lcom/google/googlenav/ui/m;-><init>(Landroid/widget/CheckBox;)V

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/view/e;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 439
    return-void

    .line 422
    :cond_48
    const/4 v2, 0x0

    goto :goto_34
.end method

.method private static a(Landroid/view/ViewGroup;Lcom/google/googlenav/ui/n;Lcom/google/googlenav/ui/view/G;ILcom/google/googlenav/ui/view/android/V;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 372
    invoke-virtual {p4}, Lcom/google/googlenav/ui/view/android/V;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040063

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 373
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 374
    const v0, 0x7f100181

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 376
    iget-object v2, p1, Lcom/google/googlenav/ui/n;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 378
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 383
    :goto_2a
    const v0, 0x7f100182

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 384
    new-instance v1, Lcom/google/googlenav/ui/view/android/T;

    invoke-virtual {p4}, Lcom/google/googlenav/ui/view/android/V;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p1, Lcom/google/googlenav/ui/n;->b:Ljava/util/List;

    invoke-virtual {p4}, Lcom/google/googlenav/ui/view/android/V;->r()Lcom/google/googlenav/ui/g;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/googlenav/ui/view/android/T;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/google/googlenav/ui/g;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 386
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 387
    iget-object v1, p1, Lcom/google/googlenav/ui/n;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 388
    iget-object v1, p2, Lcom/google/googlenav/ui/view/G;->e:[I

    aget v1, v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 389
    new-instance v1, Lcom/google/googlenav/ui/k;

    invoke-direct {v1, p2, p3}, Lcom/google/googlenav/ui/k;-><init>(Lcom/google/googlenav/ui/view/G;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 400
    return-void

    .line 380
    :cond_5e
    iget-object v2, p1, Lcom/google/googlenav/ui/n;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2a
.end method

.method public static a(Lcom/google/googlenav/ui/view/android/V;Landroid/view/View;Lcom/google/googlenav/ui/view/G;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 305
    const v0, 0x7f100354

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 306
    iget-object v1, p2, Lcom/google/googlenav/ui/view/G;->c:Ljava/lang/String;

    invoke-static {v1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    if-eqz v0, :cond_18

    .line 307
    iget-object v1, p2, Lcom/google/googlenav/ui/view/G;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    :cond_18
    iget-object v0, p2, Lcom/google/googlenav/ui/view/G;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 311
    const v0, 0x7f100168

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 312
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 313
    const/4 v1, 0x0

    iget-object v2, p2, Lcom/google/googlenav/ui/view/G;->d:[I

    array-length v4, v2

    move v2, v1

    .line 314
    :goto_2f
    if-ge v2, v4, :cond_52

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_52

    .line 315
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 316
    instance-of v5, v1, Lcom/google/googlenav/ui/n;

    if-eqz v5, :cond_48

    .line 317
    check-cast v1, Lcom/google/googlenav/ui/n;

    invoke-static {v0, v1, p2, v2, p0}, Lcom/google/googlenav/ui/i;->a(Landroid/view/ViewGroup;Lcom/google/googlenav/ui/n;Lcom/google/googlenav/ui/view/G;ILcom/google/googlenav/ui/view/android/V;)V

    .line 314
    :cond_44
    :goto_44
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2f

    .line 318
    :cond_48
    instance-of v5, v1, Lcom/google/googlenav/ui/aW;

    if-eqz v5, :cond_44

    .line 319
    check-cast v1, Lcom/google/googlenav/ui/aW;

    invoke-static {v0, v1, p2, v2, p0}, Lcom/google/googlenav/ui/i;->a(Landroid/view/ViewGroup;Lcom/google/googlenav/ui/aW;Lcom/google/googlenav/ui/view/G;ILcom/google/googlenav/ui/view/android/V;)V

    goto :goto_44

    .line 324
    :cond_52
    iget-boolean v0, p2, Lcom/google/googlenav/ui/view/G;->g:Z

    if-eqz v0, :cond_63

    .line 325
    const v0, 0x7f100159

    iget-object v1, p2, Lcom/google/googlenav/ui/view/G;->h:Lcom/google/googlenav/ui/aW;

    new-instance v2, Lcom/google/googlenav/ui/j;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/j;-><init>(Lcom/google/googlenav/ui/view/android/V;)V

    invoke-static {v0, v1, v2, p1}, Lcom/google/googlenav/ui/view/android/ak;->a(ILcom/google/googlenav/ui/aW;Lcom/google/googlenav/ui/android/ac;Landroid/view/View;)Landroid/widget/Button;

    .line 335
    :cond_63
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x4

    .line 64
    const-string v0, "o"

    new-array v1, v5, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "a="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "o="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "v="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "m="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v0, v1}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method private static a([Lcom/google/googlenav/common/io/protocol/ProtoBuf;[Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 81
    .line 83
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move v0, v1

    .line 84
    :goto_9
    array-length v2, p0

    if-ge v0, v2, :cond_24

    .line 85
    aget-object v2, p0, v0

    .line 86
    invoke-virtual {v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 87
    invoke-virtual {v2, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 88
    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_24
    move v2, v1

    .line 91
    :goto_25
    array-length v0, p1

    if-ge v1, v0, :cond_5e

    .line 92
    aget-object v0, p1, v1

    .line 93
    invoke-virtual {v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 94
    invoke-virtual {v0, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 95
    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    .line 98
    :cond_4c
    const-string v0, "c"

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v2, v5, p2}, Lcom/google/googlenav/ui/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move v0, v3

    .line 91
    :goto_5a
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_25

    .line 103
    :cond_5e
    if-nez v2, :cond_69

    .line 104
    const-string v0, "nc"

    const-string v1, ""

    const-string v2, ""

    invoke-static {v0, v1, v2, p2}, Lcom/google/googlenav/ui/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 106
    :cond_69
    return-void

    :cond_6a
    move v0, v2

    goto :goto_5a
.end method

.method public static a(Lad/b;)Z
    .registers 3
    .parameter

    .prologue
    .line 290
    invoke-static {}, Lad/o;->a()Lad/o;

    move-result-object v0

    invoke-virtual {p0}, Lad/b;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Lad/o;->a(I)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static a(Lcom/google/googlenav/ui/view/G;)[Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 5
    .parameter

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/googlenav/ui/view/G;->e:[I

    array-length v0, v0

    new-array v1, v0, [Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 151
    const/4 v0, 0x0

    :goto_6
    array-length v2, v1

    if-ge v0, v2, :cond_1a

    .line 152
    iget-object v2, p0, Lcom/google/googlenav/ui/view/G;->d:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/google/googlenav/ui/view/G;->e:[I

    aget v3, v3, v0

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/i;->a(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    aput-object v2, v1, v0

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 154
    :cond_1a
    return-object v1
.end method
