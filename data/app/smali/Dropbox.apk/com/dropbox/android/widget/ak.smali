.class final Lcom/dropbox/android/widget/ak;
.super Landroid/widget/BaseAdapter;
.source "panda.py"


# instance fields
.field final synthetic a:Lcom/dropbox/android/widget/ag;

.field private final b:[Landroid/content/Intent;

.field private final c:Landroid/view/LayoutInflater;

.field private final d:Ljava/util/List;

.field private final e:Ljava/util/HashSet;


# direct methods
.method public constructor <init>(Lcom/dropbox/android/widget/ag;Landroid/content/Context;Landroid/view/LayoutInflater;[Landroid/content/Intent;[Landroid/content/Intent;)V
    .registers 20
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/dropbox/android/widget/ak;->a:Lcom/dropbox/android/widget/ag;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 176
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/dropbox/android/widget/ak;->d:Ljava/util/List;

    .line 177
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/dropbox/android/widget/ak;->e:Ljava/util/HashSet;

    .line 182
    invoke-virtual/range {p4 .. p4}, [Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/Intent;

    iput-object v1, p0, Lcom/dropbox/android/widget/ak;->b:[Landroid/content/Intent;

    .line 183
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/dropbox/android/widget/ak;->c:Landroid/view/LayoutInflater;

    .line 186
    if-eqz p5, :cond_8f

    .line 187
    move-object/from16 v0, p5

    array-length v8, v0

    const/4 v1, 0x0

    move v7, v1

    :goto_26
    if-ge v7, v8, :cond_8f

    aget-object v6, p5, v7

    .line 188
    if-nez v6, :cond_30

    .line 187
    :goto_2c
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_26

    .line 191
    :cond_30
    invoke-static {p1}, Lcom/dropbox/android/widget/ag;->b(Lcom/dropbox/android/widget/ag;)Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v6, v1, v2}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 192
    if-nez v1, :cond_54

    .line 193
    const-string v1, "ResolveListAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No activity found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ldbxyzptlk/h/f;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 196
    :cond_54
    new-instance v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {v3}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 197
    iput-object v1, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 198
    instance-of v1, v6, Landroid/content/pm/LabeledIntent;

    if-eqz v1, :cond_7a

    move-object v1, v6

    .line 199
    check-cast v1, Landroid/content/pm/LabeledIntent;

    .line 200
    invoke-virtual {v1}, Landroid/content/pm/LabeledIntent;->getSourcePackage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 201
    invoke-virtual {v1}, Landroid/content/pm/LabeledIntent;->getLabelResource()I

    move-result v2

    iput v2, v3, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 202
    invoke-virtual {v1}, Landroid/content/pm/LabeledIntent;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v3, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 203
    invoke-virtual {v1}, Landroid/content/pm/LabeledIntent;->getIconResource()I

    move-result v1

    iput v1, v3, Landroid/content/pm/ResolveInfo;->icon:I

    .line 205
    :cond_7a
    iget-object v9, p0, Lcom/dropbox/android/widget/ak;->d:Ljava/util/List;

    new-instance v1, Lcom/dropbox/android/widget/ai;

    invoke-static {p1}, Lcom/dropbox/android/widget/ag;->b(Lcom/dropbox/android/widget/ag;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/dropbox/android/widget/ai;-><init>(Lcom/dropbox/android/widget/ag;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 209
    :cond_8f
    move-object/from16 v0, p4

    array-length v12, v0

    const/4 v1, 0x0

    move v11, v1

    :goto_94
    if-ge v11, v12, :cond_17b

    aget-object v7, p4, v11

    .line 210
    invoke-static {p1}, Lcom/dropbox/android/widget/ag;->b(Lcom/dropbox/android/widget/ag;)Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x1

    invoke-virtual {v1, v7, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 212
    if-nez v2, :cond_a8

    .line 209
    :cond_a4
    :goto_a4
    add-int/lit8 v1, v11, 0x1

    move v11, v1

    goto :goto_94

    .line 216
    :cond_a8
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_e9

    .line 217
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 220
    const/4 v3, 0x0

    .line 221
    const/4 v1, 0x0

    move v5, v1

    move v6, v4

    :goto_b6
    if-ge v5, v6, :cond_d6

    .line 222
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 223
    if-nez v5, :cond_c1

    move-object v3, v1

    .line 226
    :cond_c1
    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_12c

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 227
    :goto_c7
    iget-object v8, v4, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    .line 229
    iget-object v4, p0, Lcom/dropbox/android/widget/ak;->e:Ljava/util/HashSet;

    invoke-virtual {v4, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12f

    .line 230
    invoke-interface {v2, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 231
    add-int/lit8 v1, v6, -0x1

    .line 252
    :cond_d6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_e9

    .line 253
    new-instance v1, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    invoke-static {p1}, Lcom/dropbox/android/widget/ag;->b(Lcom/dropbox/android/widget/ag;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 258
    :cond_e9
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_a4

    .line 259
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 262
    const/4 v3, 0x0

    .line 263
    invoke-static {p1}, Lcom/dropbox/android/widget/ag;->b(Lcom/dropbox/android/widget/ag;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 264
    const/4 v10, 0x1

    move-object v5, v1

    :goto_101
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v10, v1, :cond_16f

    .line 265
    if-nez v6, :cond_10d

    .line 266
    iget-object v1, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 268
    :cond_10d
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 269
    invoke-static {p1}, Lcom/dropbox/android/widget/ag;->b(Lcom/dropbox/android/widget/ag;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 270
    if-nez v1, :cond_17c

    .line 271
    iget-object v1, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object v9, v1

    .line 273
    :goto_123
    invoke-virtual {v9, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_165

    .line 264
    :goto_129
    add-int/lit8 v10, v10, 0x1

    goto :goto_101

    .line 226
    :cond_12c
    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    goto :goto_c7

    .line 234
    :cond_12f
    iget-object v4, p0, Lcom/dropbox/android/widget/ak;->e:Ljava/util/HashSet;

    invoke-virtual {v4, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 235
    const/4 v4, 0x0

    .line 236
    invoke-static {v8}, Lcom/dropbox/android/util/b;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_17e

    .line 237
    const/4 v4, 0x1

    .line 238
    invoke-interface {v2, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 239
    add-int/lit8 v6, v6, -0x1

    move v13, v4

    move v4, v6

    move v6, v13

    .line 241
    :goto_144
    if-nez v6, :cond_15e

    if-lez v5, :cond_15e

    .line 242
    iget v6, v3, Landroid/content/pm/ResolveInfo;->priority:I

    iget v8, v1, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v6, v8, :cond_154

    iget-boolean v6, v3, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v1, v1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v6, v1, :cond_15e

    :cond_154
    move v1, v4

    .line 244
    :goto_155
    if-ge v5, v1, :cond_15f

    .line 245
    invoke-interface {v2, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 246
    add-int/lit8 v4, v1, -0x1

    move v1, v4

    goto :goto_155

    :cond_15e
    move v1, v4

    .line 221
    :cond_15f
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v6, v1

    goto/16 :goto_b6

    .line 276
    :cond_165
    add-int/lit8 v4, v10, -0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/dropbox/android/widget/ak;->a(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    move-object v6, v9

    move v3, v10

    move-object v5, v8

    .line 279
    goto :goto_129

    .line 282
    :cond_16f
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v4, v1, -0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/dropbox/android/widget/ak;->a(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    goto/16 :goto_a4

    .line 285
    :cond_17b
    return-void

    :cond_17c
    move-object v9, v1

    goto :goto_123

    :cond_17e
    move v13, v4

    move v4, v6

    move v6, v13

    goto :goto_144
.end method

.method private final a(Landroid/view/View;Lcom/dropbox/android/widget/ai;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 376
    const v0, 0x7f0d0070

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 377
    const v1, 0x7f0d0071

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 378
    const v2, 0x7f0d006f

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 379
    iget-object v3, p2, Lcom/dropbox/android/widget/ai;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    iget-object v0, p2, Lcom/dropbox/android/widget/ai;->d:Ljava/lang/CharSequence;

    if-eqz v0, :cond_45

    .line 381
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 382
    iget-object v0, p2, Lcom/dropbox/android/widget/ai;->d:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    :goto_2d
    iget-object v0, p2, Lcom/dropbox/android/widget/ai;->c:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3f

    .line 387
    iget-object v0, p2, Lcom/dropbox/android/widget/ai;->a:Landroid/content/pm/ResolveInfo;

    iget-object v1, p0, Lcom/dropbox/android/widget/ak;->a:Lcom/dropbox/android/widget/ag;

    invoke-static {v1}, Lcom/dropbox/android/widget/ag;->b(Lcom/dropbox/android/widget/ag;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p2, Lcom/dropbox/android/widget/ai;->c:Landroid/graphics/drawable/Drawable;

    .line 389
    :cond_3f
    iget-object v0, p2, Lcom/dropbox/android/widget/ai;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 390
    return-void

    .line 384
    :cond_45
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2d
.end method

.method private a(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Landroid/content/Intent;)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 290
    sub-int v0, p3, p2

    add-int/lit8 v0, v0, 0x1

    .line 291
    if-ne v0, v1, :cond_18

    .line 293
    iget-object v6, p0, Lcom/dropbox/android/widget/ak;->d:Ljava/util/List;

    new-instance v0, Lcom/dropbox/android/widget/ai;

    iget-object v1, p0, Lcom/dropbox/android/widget/ak;->a:Lcom/dropbox/android/widget/ag;

    const/4 v4, 0x0

    move-object v2, p4

    move-object v3, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/android/widget/ai;-><init>(Lcom/dropbox/android/widget/ag;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    :cond_17
    return-void

    .line 295
    :cond_18
    const/4 v2, 0x0

    .line 296
    iget-object v0, p4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lcom/dropbox/android/widget/ak;->a:Lcom/dropbox/android/widget/ag;

    invoke-static {v3}, Lcom/dropbox/android/widget/ag;->b(Lcom/dropbox/android/widget/ag;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 297
    if-nez v0, :cond_2a

    move v2, v1

    .line 300
    :cond_2a
    if-nez v2, :cond_9f

    .line 302
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 304
    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 305
    add-int/lit8 v0, p2, 0x1

    move v3, v0

    :goto_37
    if-gt v3, p3, :cond_9d

    .line 306
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 307
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, p0, Lcom/dropbox/android/widget/ak;->a:Lcom/dropbox/android/widget/ag;

    invoke-static {v5}, Lcom/dropbox/android/widget/ag;->b(Lcom/dropbox/android/widget/ag;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 308
    if-eqz v0, :cond_55

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_79

    :cond_55
    move v0, v1

    .line 316
    :goto_56
    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    move v6, v0

    .line 318
    :goto_5a
    if-gt p2, p3, :cond_17

    .line 319
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 320
    if-eqz v6, :cond_80

    .line 322
    iget-object v7, p0, Lcom/dropbox/android/widget/ak;->d:Ljava/util/List;

    new-instance v0, Lcom/dropbox/android/widget/ai;

    iget-object v1, p0, Lcom/dropbox/android/widget/ak;->a:Lcom/dropbox/android/widget/ag;

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object v3, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/android/widget/ai;-><init>(Lcom/dropbox/android/widget/ag;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    :goto_76
    add-int/lit8 p2, p2, 0x1

    goto :goto_5a

    .line 312
    :cond_79
    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 305
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_37

    .line 326
    :cond_80
    iget-object v7, p0, Lcom/dropbox/android/widget/ak;->d:Ljava/util/List;

    new-instance v0, Lcom/dropbox/android/widget/ai;

    iget-object v1, p0, Lcom/dropbox/android/widget/ak;->a:Lcom/dropbox/android/widget/ag;

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lcom/dropbox/android/widget/ak;->a:Lcom/dropbox/android/widget/ag;

    invoke-static {v4}, Lcom/dropbox/android/widget/ag;->b(Lcom/dropbox/android/widget/ag;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object v3, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/android/widget/ai;-><init>(Lcom/dropbox/android/widget/ag;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_76

    :cond_9d
    move v0, v2

    goto :goto_56

    :cond_9f
    move v6, v2

    goto :goto_5a
.end method


# virtual methods
.method public final a(I)Landroid/content/Intent;
    .registers 6
    .parameter

    .prologue
    .line 334
    iget-object v0, p0, Lcom/dropbox/android/widget/ak;->d:Ljava/util/List;

    if-nez v0, :cond_6

    .line 335
    const/4 v0, 0x0

    .line 344
    :goto_5
    return-object v0

    .line 338
    :cond_6
    iget-object v0, p0, Lcom/dropbox/android/widget/ak;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/widget/ai;

    .line 340
    new-instance v2, Landroid/content/Intent;

    iget-object v1, v0, Lcom/dropbox/android/widget/ai;->e:Landroid/content/Intent;

    if-eqz v1, :cond_32

    iget-object v1, v0, Lcom/dropbox/android/widget/ai;->e:Landroid/content/Intent;

    :goto_16
    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 341
    const/high16 v1, 0x300

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 342
    iget-object v0, v0, Lcom/dropbox/android/widget/ai;->a:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 343
    new-instance v1, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-object v0, v2

    .line 344
    goto :goto_5

    .line 340
    :cond_32
    iget-object v1, p0, Lcom/dropbox/android/widget/ak;->b:[Landroid/content/Intent;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    goto :goto_16
.end method

.method public final getCount()I
    .registers 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/dropbox/android/widget/ak;->d:Ljava/util/List;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/dropbox/android/widget/ak;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 354
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .registers 4
    .parameter

    .prologue
    .line 359
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 365
    if-nez p2, :cond_c

    .line 366
    iget-object v0, p0, Lcom/dropbox/android/widget/ak;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f030019

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 371
    :cond_c
    iget-object v0, p0, Lcom/dropbox/android/widget/ak;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/widget/ai;

    invoke-direct {p0, p2, v0}, Lcom/dropbox/android/widget/ak;->a(Landroid/view/View;Lcom/dropbox/android/widget/ai;)V

    .line 372
    return-object p2
.end method
