.class public Lcom/anddoes/launcher/GroupConfigActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/String;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Lcom/anddoes/launcher/preference/c;

.field private C:Landroid/widget/CheckBox;

.field private D:[Ljava/lang/String;

.field private E:Lcom/anddoes/launcher/LauncherApplication;

.field public i:Ljava/util/ArrayList;

.field private j:Lcom/anddoes/launcher/ds;

.field private k:Ljava/util/ArrayList;

.field private l:Landroid/view/LayoutInflater;

.field private m:Landroid/widget/ListView;

.field private n:Lcom/anddoes/launcher/dl;

.field private o:Ljava/util/HashMap;

.field private p:Ljava/lang/String;

.field private q:Landroid/widget/EditText;

.field private r:Landroid/widget/Spinner;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:[Ljava/lang/String;

.field private w:[Ljava/lang/String;

.field private x:Z

.field private y:Lcom/anddoes/launcher/preference/h;

.field private z:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 46
    const-string v0, "extra_title"

    sput-object v0, Lcom/anddoes/launcher/GroupConfigActivity;->a:Ljava/lang/String;

    .line 47
    const-string v0, "extra_init_list"

    sput-object v0, Lcom/anddoes/launcher/GroupConfigActivity;->b:Ljava/lang/String;

    .line 48
    const-string v0, "extra_result"

    sput-object v0, Lcom/anddoes/launcher/GroupConfigActivity;->c:Ljava/lang/String;

    .line 49
    const-string v0, "extra_return_arg"

    sput-object v0, Lcom/anddoes/launcher/GroupConfigActivity;->d:Ljava/lang/String;

    .line 50
    const-string v0, "extra_result_name"

    sput-object v0, Lcom/anddoes/launcher/GroupConfigActivity;->e:Ljava/lang/String;

    .line 51
    const-string v0, "extra_init_name"

    sput-object v0, Lcom/anddoes/launcher/GroupConfigActivity;->f:Ljava/lang/String;

    .line 52
    const-string v0, "extra_name_list"

    sput-object v0, Lcom/anddoes/launcher/GroupConfigActivity;->g:Ljava/lang/String;

    .line 53
    const-string v0, "extra_is_app_group"

    sput-object v0, Lcom/anddoes/launcher/GroupConfigActivity;->h:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->o:Ljava/util/HashMap;

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->x:Z

    .line 41
    return-void
.end method

.method private a(Ljava/lang/String;)I
    .registers 4
    .parameter

    .prologue
    .line 231
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/anddoes/launcher/GroupConfigActivity;->w:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_c

    .line 236
    iget-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->w:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :cond_b
    return v0

    .line 232
    :cond_c
    iget-object v1, p0, Lcom/anddoes/launcher/GroupConfigActivity;->w:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 231
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private a()V
    .registers 12

    .prologue
    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 305
    iget-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->o:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 306
    iget-boolean v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->x:Z

    if-eqz v0, :cond_c9

    .line 307
    new-instance v3, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->E:Lcom/anddoes/launcher/LauncherApplication;

    invoke-virtual {v0}, Lcom/anddoes/launcher/LauncherApplication;->b()Lcom/anddoes/launcher/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anddoes/launcher/LauncherModel;->a()Lcom/anddoes/launcher/h;

    move-result-object v0

    iget-object v0, v0, Lcom/anddoes/launcher/h;->a:Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 308
    iget-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->y:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->z()Ljava/lang/String;

    move-result-object v0

    .line 310
    iget-object v2, p0, Lcom/anddoes/launcher/GroupConfigActivity;->C:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    .line 311
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/anddoes/launcher/GroupConfigActivity;->k:Ljava/util/ArrayList;

    .line 312
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 313
    iget-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->p:Ljava/lang/String;

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 315
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v2, v1

    .line 316
    :goto_42
    if-lt v2, v7, :cond_65

    .line 326
    iget-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8e

    .line 330
    iget-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_64

    .line 331
    iget-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5e
    :goto_5e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_a2

    .line 371
    :cond_64
    return-void

    .line 317
    :cond_65
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/y;

    .line 318
    invoke-virtual {v0}, Lcom/anddoes/launcher/y;->b()Ljava/lang/String;

    move-result-object v8

    .line 319
    invoke-static {v8, v5}, Lcom/anddoes/launcher/GroupConfigActivity;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7f

    .line 320
    if-eqz v4, :cond_85

    iget-object v9, p0, Lcom/anddoes/launcher/GroupConfigActivity;->D:[Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/anddoes/launcher/GroupConfigActivity;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_85

    .line 321
    :cond_7f
    invoke-static {v8, v6}, Lcom/anddoes/launcher/GroupConfigActivity;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8a

    .line 322
    :cond_85
    iget-object v8, p0, Lcom/anddoes/launcher/GroupConfigActivity;->k:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    :cond_8a
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_42

    .line 326
    :cond_8e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/y;

    .line 327
    iget-object v3, p0, Lcom/anddoes/launcher/GroupConfigActivity;->o:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/anddoes/launcher/y;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4a

    .line 331
    :cond_a2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/y;

    .line 332
    array-length v4, v6

    move v2, v1

    :goto_aa
    if-ge v2, v4, :cond_5e

    aget-object v5, v6, v2

    .line 333
    invoke-virtual {v0}, Lcom/anddoes/launcher/y;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c6

    .line 334
    iget-object v2, p0, Lcom/anddoes/launcher/GroupConfigActivity;->o:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/anddoes/launcher/y;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5e

    .line 332
    :cond_c6
    add-int/lit8 v2, v2, 0x1

    goto :goto_aa

    .line 341
    :cond_c9
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->E:Lcom/anddoes/launcher/LauncherApplication;

    iget-object v0, v0, Lcom/anddoes/launcher/LauncherApplication;->i:Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 342
    iget-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->C:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    .line 343
    iget-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->p:Ljava/lang/String;

    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 345
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->i:Ljava/util/ArrayList;

    .line 346
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v0, v1

    .line 347
    :goto_ec
    if-lt v0, v5, :cond_119

    move v0, v1

    .line 355
    :goto_ef
    iget-object v2, p0, Lcom/anddoes/launcher/GroupConfigActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_13d

    .line 359
    iget-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_64

    move v0, v1

    .line 360
    :goto_100
    iget-object v2, p0, Lcom/anddoes/launcher/GroupConfigActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_64

    .line 361
    iget-object v2, p0, Lcom/anddoes/launcher/GroupConfigActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/anddoes/launcher/ia;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 362
    array-length v5, v4

    move v2, v1

    :goto_114
    if-lt v2, v5, :cond_153

    .line 360
    :goto_116
    add-int/lit8 v0, v0, 0x1

    goto :goto_100

    .line 348
    :cond_119
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/anddoes/launcher/ia;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 349
    if-eqz v3, :cond_131

    iget-object v7, p0, Lcom/anddoes/launcher/GroupConfigActivity;->D:[Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/anddoes/launcher/GroupConfigActivity;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_131

    .line 350
    invoke-static {v6, v4}, Lcom/anddoes/launcher/GroupConfigActivity;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13a

    .line 351
    :cond_131
    iget-object v6, p0, Lcom/anddoes/launcher/GroupConfigActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    :cond_13a
    add-int/lit8 v0, v0, 0x1

    goto :goto_ec

    .line 356
    :cond_13d
    iget-object v2, p0, Lcom/anddoes/launcher/GroupConfigActivity;->o:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/anddoes/launcher/GroupConfigActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/anddoes/launcher/ia;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    add-int/lit8 v0, v0, 0x1

    goto :goto_ef

    .line 362
    :cond_153
    aget-object v6, v4, v2

    .line 363
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_165

    .line 364
    iget-object v2, p0, Lcom/anddoes/launcher/GroupConfigActivity;->o:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_116

    .line 362
    :cond_165
    add-int/lit8 v2, v2, 0x1

    goto :goto_114
.end method

.method private a(Landroid/view/View;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->x:Z

    if-eqz v0, :cond_42

    .line 242
    iget-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/y;

    .line 243
    invoke-virtual {v0}, Lcom/anddoes/launcher/y;->b()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 247
    :goto_11
    iget-object v2, p0, Lcom/anddoes/launcher/GroupConfigActivity;->o:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->o:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4e

    const/4 v0, 0x0

    :goto_22
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const v0, 0x7f080006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/anddoes/launcher/GroupConfigActivity;->o:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 249
    return-void

    .line 245
    :cond_42
    iget-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/anddoes/launcher/ia;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_11

    .line 247
    :cond_4e
    const/4 v0, 0x1

    goto :goto_22
.end method

.method static synthetic a(Lcom/anddoes/launcher/GroupConfigActivity;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 214
    iget-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->w:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_23

    iget-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->m:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->C:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->q:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_22
    :goto_22
    return-void

    :cond_23
    iget-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->m:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->C:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->q:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/anddoes/launcher/GroupConfigActivity;->v:[Ljava/lang/String;

    iget-object v2, p0, Lcom/anddoes/launcher/GroupConfigActivity;->r:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_22
.end method

.method static synthetic a(Lcom/anddoes/launcher/GroupConfigActivity;Landroid/view/View;I)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 239
    invoke-direct {p0, p1, p2}, Lcom/anddoes/launcher/GroupConfigActivity;->a(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic a(Lcom/anddoes/launcher/GroupConfigActivity;)Z
    .registers 2
    .parameter

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->x:Z

    return v0
.end method

.method private static a(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 167
    array-length v2, p1

    move v1, v0

    :goto_3
    if-lt v1, v2, :cond_6

    .line 172
    :goto_5
    return v0

    .line 167
    :cond_6
    aget-object v3, p1, v1

    .line 168
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 169
    const/4 v0, 0x1

    goto :goto_5

    .line 167
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method private b()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 375
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 377
    iget-boolean v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->x:Z

    if-eqz v0, :cond_47

    .line 378
    iget-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_25

    .line 392
    :cond_16
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 393
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_24

    .line 394
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 396
    :cond_24
    return-object v0

    .line 378
    :cond_25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/y;

    .line 379
    invoke-virtual {v0}, Lcom/anddoes/launcher/y;->b()Ljava/lang/String;

    move-result-object v3

    .line 380
    iget-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->o:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 381
    const-string v0, ";"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10

    .line 385
    :cond_47
    const/4 v0, 0x0

    move v1, v0

    :goto_49
    iget-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_16

    .line 386
    iget-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/anddoes/launcher/ia;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 387
    iget-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->o:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_72

    .line 388
    const-string v0, ";"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    :cond_72
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_49
.end method

.method static synthetic b(Lcom/anddoes/launcher/GroupConfigActivity;)Ljava/util/ArrayList;
    .registers 2
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->k:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic c(Lcom/anddoes/launcher/GroupConfigActivity;)Landroid/view/LayoutInflater;
    .registers 2
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->l:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic d(Lcom/anddoes/launcher/GroupConfigActivity;)Lcom/anddoes/launcher/ds;
    .registers 2
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->j:Lcom/anddoes/launcher/ds;

    return-object v0
.end method

.method static synthetic e(Lcom/anddoes/launcher/GroupConfigActivity;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->A:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/anddoes/launcher/GroupConfigActivity;)Landroid/content/pm/PackageManager;
    .registers 2
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->z:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic g(Lcom/anddoes/launcher/GroupConfigActivity;)Ljava/util/HashMap;
    .registers 2
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->o:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic h(Lcom/anddoes/launcher/GroupConfigActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 304
    invoke-direct {p0}, Lcom/anddoes/launcher/GroupConfigActivity;->a()V

    return-void
.end method

.method static synthetic i(Lcom/anddoes/launcher/GroupConfigActivity;)Lcom/anddoes/launcher/dl;
    .registers 2
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->n:Lcom/anddoes/launcher/dl;

    return-object v0
.end method


# virtual methods
.method final a(Landroid/content/ComponentName;II)[I
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 401
    invoke-static {p0, p1}, Lcom/anddoes/launcher/ia;->a(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/graphics/Rect;

    move-result-object v0

    .line 408
    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    .line 409
    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v2

    .line 410
    invoke-virtual {p0}, Lcom/anddoes/launcher/GroupConfigActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 411
    const/4 v3, 0x0

    .line 410
    invoke-static {v2, v1, v0, v3}, Lcom/anddoes/launcher/CellLayout;->a(Landroid/content/res/Resources;II[I)[I

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 81
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    const v0, 0x7f030013

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/GroupConfigActivity;->setContentView(I)V

    .line 84
    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/GroupConfigActivity;->setResult(I)V

    .line 85
    invoke-virtual {p0}, Lcom/anddoes/launcher/GroupConfigActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 86
    if-nez v3, :cond_17

    .line 87
    invoke-virtual {p0}, Lcom/anddoes/launcher/GroupConfigActivity;->finish()V

    .line 90
    :cond_17
    new-instance v0, Lcom/anddoes/launcher/preference/h;

    invoke-direct {v0, p0}, Lcom/anddoes/launcher/preference/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->y:Lcom/anddoes/launcher/preference/h;

    .line 91
    new-instance v0, Lcom/anddoes/launcher/preference/c;

    invoke-direct {v0, p0}, Lcom/anddoes/launcher/preference/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->B:Lcom/anddoes/launcher/preference/c;

    .line 92
    invoke-virtual {p0}, Lcom/anddoes/launcher/GroupConfigActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->z:Landroid/content/pm/PackageManager;

    .line 93
    invoke-virtual {p0}, Lcom/anddoes/launcher/GroupConfigActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f060256

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->A:Ljava/lang/String;

    .line 94
    sget-object v0, Lcom/anddoes/launcher/GroupConfigActivity;->d:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->u:Ljava/lang/String;

    .line 95
    sget-object v0, Lcom/anddoes/launcher/GroupConfigActivity;->h:Ljava/lang/String;

    invoke-virtual {v3, v0, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->x:Z

    .line 96
    invoke-virtual {p0}, Lcom/anddoes/launcher/GroupConfigActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/LauncherApplication;

    iput-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->E:Lcom/anddoes/launcher/LauncherApplication;

    .line 97
    iget-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->E:Lcom/anddoes/launcher/LauncherApplication;

    invoke-virtual {v0}, Lcom/anddoes/launcher/LauncherApplication;->a()Lcom/anddoes/launcher/ds;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->j:Lcom/anddoes/launcher/ds;

    .line 99
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/GroupConfigActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->l:Landroid/view/LayoutInflater;

    .line 100
    const v0, 0x7f080028

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/GroupConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->C:Landroid/widget/CheckBox;

    .line 102
    iget-boolean v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->x:Z

    if-eqz v0, :cond_153

    .line 103
    iget-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->B:Lcom/anddoes/launcher/preference/c;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/c;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->D:[Ljava/lang/String;

    .line 107
    :goto_7f
    sget-object v0, Lcom/anddoes/launcher/GroupConfigActivity;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->p:Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->p:Ljava/lang/String;

    if-nez v0, :cond_8f

    .line 109
    const-string v0, ""

    iput-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->p:Ljava/lang/String;

    .line 111
    :cond_8f
    invoke-direct {p0}, Lcom/anddoes/launcher/GroupConfigActivity;->a()V

    .line 113
    sget-object v0, Lcom/anddoes/launcher/GroupConfigActivity;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_9d

    .line 115
    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/GroupConfigActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 118
    :cond_9d
    const v0, 0x7f080027

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/GroupConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->q:Landroid/widget/EditText;

    .line 119
    sget-object v0, Lcom/anddoes/launcher/GroupConfigActivity;->f:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->s:Ljava/lang/String;

    .line 120
    iget-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->s:Ljava/lang/String;

    if-nez v0, :cond_196

    .line 121
    const-string v0, ""

    iput-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->s:Ljava/lang/String;

    .line 125
    :goto_b8
    iget-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->q:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/anddoes/launcher/GroupConfigActivity;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 126
    sget-object v0, Lcom/anddoes/launcher/GroupConfigActivity;->g:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->t:Ljava/lang/String;

    .line 127
    iget-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->t:Ljava/lang/String;

    if-nez v0, :cond_cf

    .line 128
    const-string v0, ""

    iput-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->t:Ljava/lang/String;

    .line 131
    :cond_cf
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/GroupConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->m:Landroid/widget/ListView;

    .line 132
    new-instance v0, Lcom/anddoes/launcher/dl;

    invoke-direct {v0, p0}, Lcom/anddoes/launcher/dl;-><init>(Lcom/anddoes/launcher/GroupConfigActivity;)V

    iput-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->n:Lcom/anddoes/launcher/dl;

    .line 133
    iget-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->m:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/anddoes/launcher/GroupConfigActivity;->n:Lcom/anddoes/launcher/dl;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 134
    iget-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->m:Landroid/widget/ListView;

    invoke-virtual {v0, v8}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 135
    iget-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->m:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 136
    const v0, 0x7f080026

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/GroupConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->r:Landroid/widget/Spinner;

    .line 137
    invoke-virtual {p0}, Lcom/anddoes/launcher/GroupConfigActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-boolean v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->x:Z

    if-eqz v0, :cond_1a0

    const v0, 0x7f070001

    :goto_108
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->w:[Ljava/lang/String;

    .line 138
    invoke-virtual {p0}, Lcom/anddoes/launcher/GroupConfigActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-boolean v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->x:Z

    if-eqz v0, :cond_1a5

    const/high16 v0, 0x7f07

    :goto_118
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->v:[Ljava/lang/String;

    .line 140
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090008

    iget-object v2, p0, Lcom/anddoes/launcher/GroupConfigActivity;->v:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 141
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 142
    iget-object v1, p0, Lcom/anddoes/launcher/GroupConfigActivity;->r:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 143
    iget-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->r:Landroid/widget/Spinner;

    new-instance v1, Lcom/anddoes/launcher/dh;

    invoke-direct {v1, p0}, Lcom/anddoes/launcher/dh;-><init>(Lcom/anddoes/launcher/GroupConfigActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 155
    iget-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->r:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/anddoes/launcher/GroupConfigActivity;->p:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/anddoes/launcher/GroupConfigActivity;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 157
    iget-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->C:Landroid/widget/CheckBox;

    new-instance v1, Lcom/anddoes/launcher/di;

    invoke-direct {v1, p0}, Lcom/anddoes/launcher/di;-><init>(Lcom/anddoes/launcher/GroupConfigActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 164
    return-void

    .line 105
    :cond_153
    iget-object v4, p0, Lcom/anddoes/launcher/GroupConfigActivity;->B:Lcom/anddoes/launcher/preference/c;

    const-string v0, ""

    invoke-virtual {v4}, Lcom/anddoes/launcher/preference/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_16a

    const-string v5, ";"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    :goto_168
    if-lt v1, v6, :cond_174

    :cond_16a
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->D:[Ljava/lang/String;

    goto/16 :goto_7f

    :cond_174
    aget-object v2, v5, v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lcom/anddoes/launcher/preference/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_168

    .line 123
    :cond_196
    invoke-virtual {p0}, Lcom/anddoes/launcher/GroupConfigActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    goto/16 :goto_b8

    .line 137
    :cond_1a0
    const v0, 0x7f070003

    goto/16 :goto_108

    .line 138
    :cond_1a5
    const v0, 0x7f070002

    goto/16 :goto_118
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 183
    const/4 v0, 0x1

    const v1, 0x7f060008

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 185
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 186
    const/4 v0, 0x2

    const v1, 0x7f06000b

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 188
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 190
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 208
    if-ltz p3, :cond_11

    iget-boolean v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->x:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_c
    if-ge p3, v0, :cond_11

    .line 209
    invoke-direct {p0, p2, p3}, Lcom/anddoes/launcher/GroupConfigActivity;->a(Landroid/view/View;I)V

    .line 211
    :cond_11
    return-void

    .line 208
    :cond_12
    iget-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_c
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 12
    .parameter

    .prologue
    const v9, 0x7f060007

    const v8, 0x7f060005

    const v7, 0x1080027

    const/4 v1, 0x1

    .line 195
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_f0

    .line 203
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_15
    return v0

    .line 197
    :pswitch_16
    iget-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->q:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ";"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_54

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f06004c

    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/GroupConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/anddoes/launcher/dj;

    invoke-direct {v2, p0}, Lcom/anddoes/launcher/dj;-><init>(Lcom/anddoes/launcher/GroupConfigActivity;)V

    invoke-virtual {v0, v9, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_52
    move v0, v1

    .line 198
    goto :goto_15

    .line 197
    :cond_54
    iget-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_68

    iget-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->t:Ljava/lang/String;

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    :goto_66
    if-lt v0, v4, :cond_a9

    :cond_68
    iget-object v0, p0, Lcom/anddoes/launcher/GroupConfigActivity;->w:[Ljava/lang/String;

    iget-object v3, p0, Lcom/anddoes/launcher/GroupConfigActivity;->r:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    aget-object v0, v0, v3

    const-string v3, "LIST_CUSTOM"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7e

    invoke-direct {p0}, Lcom/anddoes/launcher/GroupConfigActivity;->b()Ljava/lang/String;

    move-result-object v0

    :cond_7e
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iget-object v4, p0, Lcom/anddoes/launcher/GroupConfigActivity;->u:Ljava/lang/String;

    if-eqz v4, :cond_8e

    sget-object v4, Lcom/anddoes/launcher/GroupConfigActivity;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/anddoes/launcher/GroupConfigActivity;->u:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_8e
    sget-object v4, Lcom/anddoes/launcher/GroupConfigActivity;->c:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v2, :cond_9a

    sget-object v0, Lcom/anddoes/launcher/GroupConfigActivity;->e:Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_9a
    sget-object v0, Lcom/anddoes/launcher/GroupConfigActivity;->h:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/anddoes/launcher/GroupConfigActivity;->x:Z

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v3}, Lcom/anddoes/launcher/GroupConfigActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/anddoes/launcher/GroupConfigActivity;->finish()V

    goto :goto_52

    :cond_a9
    aget-object v5, v3, v0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_e5

    iget-object v6, p0, Lcom/anddoes/launcher/GroupConfigActivity;->s:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_e5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f06004d

    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/GroupConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/anddoes/launcher/dk;

    invoke-direct {v2, p0}, Lcom/anddoes/launcher/dk;-><init>(Lcom/anddoes/launcher/GroupConfigActivity;)V

    invoke-virtual {v0, v9, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_52

    :cond_e5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_66

    .line 200
    :pswitch_e9
    invoke-virtual {p0}, Lcom/anddoes/launcher/GroupConfigActivity;->finish()V

    move v0, v1

    .line 201
    goto/16 :goto_15

    .line 195
    nop

    :pswitch_data_f0
    .packed-switch 0x1
        :pswitch_e9
        :pswitch_16
    .end packed-switch
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 177
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 178
    invoke-static {p0}, Lcom/anddoes/launcher/i;->a(Landroid/content/Context;)Lcom/anddoes/launcher/i;

    move-result-object v0

    const-string v1, "/GroupConfig"

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/i;->b(Ljava/lang/String;)V

    .line 179
    return-void
.end method
