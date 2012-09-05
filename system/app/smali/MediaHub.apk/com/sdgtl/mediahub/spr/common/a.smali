.class public final Lcom/sdgtl/mediahub/spr/common/a;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/sdgtl/mediahub/spr/common/ch;

.field public static b:Lcom/sdgtl/mediahub/spr/common/ce;

.field private static c:J

.field private static e:Landroid/content/Context;

.field private static f:Landroid/widget/Toast;

.field private static g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static h:Z


# instance fields
.field private d:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    const-wide/16 v0, 0x14

    sput-wide v0, Lcom/sdgtl/mediahub/spr/common/a;->c:J

    const/4 v0, 0x0

    sput-object v0, Lcom/sdgtl/mediahub/spr/common/a;->e:Landroid/content/Context;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/sdgtl/mediahub/spr/common/a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    sput-boolean v2, Lcom/sdgtl/mediahub/spr/common/a;->h:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/sdgtl/mediahub/spr/common/a;->e:Landroid/content/Context;

    return-void
.end method

.method private a(I)Lcom/sdgtl/mediahub/spr/common/a;
    .registers 3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/a;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setIcon(I)V

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/common/a;
    .registers 8

    const/4 v6, 0x0

    const/4 v2, 0x0

    sput-object p0, Lcom/sdgtl/mediahub/spr/common/a;->e:Landroid/content/Context;

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/sdgtl/mediahub/spr/a/a;->c()Ljava/util/ArrayList;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a6

    move v1, v2

    :goto_19
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_96

    :goto_1f
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030042

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/ArrayAdapter;

    const v1, 0x7f030043

    invoke-direct {v4, p0, v1, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v1, 0x7f0d004d

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_69

    const/high16 v1, 0x7f0d

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f0d00fe

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08001b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_69
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const/high16 v0, 0x7f0a

    new-instance v1, Lcom/sdgtl/mediahub/spr/common/x;

    invoke-direct {v1}, Lcom/sdgtl/mediahub/spr/common/x;-><init>()V

    invoke-virtual {v3, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-static {p0, v3}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Landroid/app/AlertDialog$Builder;)Lcom/sdgtl/mediahub/spr/common/a;

    move-result-object v0

    const v1, 0x7f0a01b3

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->a(Ljava/lang/CharSequence;)Lcom/sdgtl/mediahub/spr/common/a;

    invoke-direct {v0, v2}, Lcom/sdgtl/mediahub/spr/common/a;->a(I)Lcom/sdgtl/mediahub/spr/common/a;

    new-instance v1, Lcom/sdgtl/mediahub/spr/common/y;

    invoke-direct {v1}, Lcom/sdgtl/mediahub/spr/common/y;-><init>()V

    invoke-direct {v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/DialogInterface$OnKeyListener;)Lcom/sdgtl/mediahub/spr/common/a;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/a;->f()V

    return-object v0

    :cond_96
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/db;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/db;->a:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_19

    :cond_a6
    const v0, 0x7f0a01b4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1f
.end method

.method public static a(Landroid/content/Context;ILjava/util/ArrayList;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;
    .registers 15

    sput-object p0, Lcom/sdgtl/mediahub/spr/common/a;->e:Landroid/content/Context;

    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    if-nez p1, :cond_a6

    const/4 v0, 0x0

    move v5, v0

    :goto_11
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v5, v0, :cond_33

    move v3, v1

    :goto_18
    const/4 v0, 0x0

    move v5, v0

    :goto_1a
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v5, v0, :cond_6b

    :cond_20
    :goto_20
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_12d

    const v0, 0x7f0a01a4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    const/4 v0, 0x0

    :goto_32
    return-object v0

    :cond_33
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    const-string v2, "01"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    const/4 v6, 0x1

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/eb;

    const-string v1, "01"

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-wide v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->g:D

    invoke-static {p0, v2, v3}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "01"

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v5, v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->c:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/sdgtl/mediahub/spr/common/eb;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v6

    goto :goto_18

    :cond_67
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_11

    :cond_6b
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    const-string v1, "03"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a1

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/eb;

    const-string v1, "02"

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-wide v9, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->g:D

    invoke-static {p0, v9, v10}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v2

    if-eqz v3, :cond_9f

    const/4 v3, 0x0

    :goto_8e
    const-string v4, "03"

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v5, v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->c:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/sdgtl/mediahub/spr/common/eb;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_9f
    const/4 v3, 0x1

    goto :goto_8e

    :cond_a1
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_1a

    :cond_a6
    const/4 v0, 0x1

    if-ne p1, v0, :cond_20

    const/4 v0, 0x0

    move v5, v0

    :goto_ab
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v5, v0, :cond_ef

    move v3, v1

    :goto_b2
    const/4 v0, 0x0

    move v5, v0

    :goto_b4
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_20

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    const-string v1, "04"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_129

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/eb;

    const-string v1, "02"

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-wide v9, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->g:D

    invoke-static {p0, v9, v10}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v2

    if-eqz v3, :cond_127

    const/4 v3, 0x0

    :goto_dd
    const-string v4, "04"

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v5, v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->c:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/sdgtl/mediahub/spr/common/eb;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_20

    :cond_ef
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    const-string v2, "02"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_123

    const/4 v6, 0x1

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/eb;

    const-string v1, "01"

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-wide v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->g:D

    invoke-static {p0, v2, v3}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "02"

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v5, v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->c:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/sdgtl/mediahub/spr/common/eb;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v6

    goto :goto_b2

    :cond_123
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_ab

    :cond_127
    const/4 v3, 0x1

    goto :goto_dd

    :cond_129
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_b4

    :cond_12d
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03004e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0d0002

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    new-instance v2, Lcom/sdgtl/mediahub/spr/common/e;

    invoke-direct {v2}, Lcom/sdgtl/mediahub/spr/common/e;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_164

    const/high16 v1, 0x7f0d

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_164
    new-instance v1, Lcom/sdgtl/mediahub/spr/common/ch;

    invoke-direct {v1, p0, v8, p1}, Lcom/sdgtl/mediahub/spr/common/ch;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    sput-object v1, Lcom/sdgtl/mediahub/spr/common/a;->a:Lcom/sdgtl/mediahub/spr/common/ch;

    const v1, 0x7f0d004d

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    sget-object v2, Lcom/sdgtl/mediahub/spr/common/a;->a:Lcom/sdgtl/mediahub/spr/common/ch;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v2, Lcom/sdgtl/mediahub/spr/common/f;

    invoke-direct {v2}, Lcom/sdgtl/mediahub/spr/common/f;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v1, 0x7f0d006a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/sdgtl/mediahub/spr/common/g;

    invoke-direct {v2, p0}, Lcom/sdgtl/mediahub/spr/common/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const/high16 v0, 0x7f0a

    new-instance v1, Lcom/sdgtl/mediahub/spr/common/h;

    invoke-direct {v1, p3}, Lcom/sdgtl/mediahub/spr/common/h;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v7, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0a0001

    new-instance v1, Lcom/sdgtl/mediahub/spr/common/i;

    invoke-direct {v1, p3}, Lcom/sdgtl/mediahub/spr/common/i;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v7, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-static {p0, v7}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Landroid/app/AlertDialog$Builder;)Lcom/sdgtl/mediahub/spr/common/a;

    move-result-object v0

    const v1, 0x7f0a01d1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->a(Ljava/lang/CharSequence;)Lcom/sdgtl/mediahub/spr/common/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->a(I)Lcom/sdgtl/mediahub/spr/common/a;

    new-instance v1, Lcom/sdgtl/mediahub/spr/common/j;

    invoke-direct {v1, p3}, Lcom/sdgtl/mediahub/spr/common/j;-><init>(Landroid/os/Handler;)V

    invoke-direct {v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/DialogInterface$OnKeyListener;)Lcom/sdgtl/mediahub/spr/common/a;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/a;->f()V

    goto/16 :goto_32
.end method

.method private static a(Landroid/content/Context;Landroid/app/AlertDialog$Builder;)Lcom/sdgtl/mediahub/spr/common/a;
    .registers 5

    sput-object p0, Lcom/sdgtl/mediahub/spr/common/a;->e:Landroid/content/Context;

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/a;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/common/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/a;->d:Landroid/app/AlertDialog;

    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/a;->d:Landroid/app/AlertDialog;

    new-instance v2, Lcom/sdgtl/mediahub/spr/common/b;

    invoke-direct {v2, v0}, Lcom/sdgtl/mediahub/spr/common/b;-><init>(Lcom/sdgtl/mediahub/spr/common/a;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    const-string v1, "AlertDialogHelper - Dialog is created"

    invoke-static {v1}, Lcom/a/a/a/a/c/a;->b(Ljava/lang/String;)I

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;
    .registers 6

    const/4 v3, 0x0

    sput-object p0, Lcom/sdgtl/mediahub/spr/common/a;->e:Landroid/content/Context;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x7f0a

    new-instance v2, Lcom/sdgtl/mediahub/spr/common/ae;

    invoke-direct {v2, p1}, Lcom/sdgtl/mediahub/spr/common/ae;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a0001

    new-instance v2, Lcom/sdgtl/mediahub/spr/common/af;

    invoke-direct {v2, p1}, Lcom/sdgtl/mediahub/spr/common/af;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Landroid/app/AlertDialog$Builder;)Lcom/sdgtl/mediahub/spr/common/a;

    move-result-object v0

    const v1, 0x7f0a00a3

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->a(Ljava/lang/CharSequence;)Lcom/sdgtl/mediahub/spr/common/a;

    invoke-direct {v0, v3}, Lcom/sdgtl/mediahub/spr/common/a;->a(I)Lcom/sdgtl/mediahub/spr/common/a;

    const v1, 0x7f0a01bc

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/a;->d:Landroid/app/AlertDialog;

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/sdgtl/mediahub/spr/common/ah;

    invoke-direct {v1, p1}, Lcom/sdgtl/mediahub/spr/common/ah;-><init>(Landroid/os/Handler;)V

    invoke-direct {v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/DialogInterface$OnKeyListener;)Lcom/sdgtl/mediahub/spr/common/a;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/a;->f()V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)Lcom/sdgtl/mediahub/spr/common/a;
    .registers 10

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    sput-object p0, Lcom/sdgtl/mediahub/spr/common/a;->e:Landroid/content/Context;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const/high16 v0, 0x7f0a

    new-instance v2, Lcom/sdgtl/mediahub/spr/common/by;

    invoke-direct {v2, p1}, Lcom/sdgtl/mediahub/spr/common/by;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0a0001

    new-instance v2, Lcom/sdgtl/mediahub/spr/common/bz;

    invoke-direct {v2, p1}, Lcom/sdgtl/mediahub/spr/common/bz;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v0, ""

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->b(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v4, :cond_5f

    const v0, 0x7f0a0054

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p2, v2, v3

    aput-object p3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_3f
    :goto_3f
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-static {p0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Landroid/app/AlertDialog$Builder;)Lcom/sdgtl/mediahub/spr/common/a;

    move-result-object v0

    const v1, 0x7f0a0119

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->a(Ljava/lang/CharSequence;)Lcom/sdgtl/mediahub/spr/common/a;

    invoke-direct {v0, v3}, Lcom/sdgtl/mediahub/spr/common/a;->a(I)Lcom/sdgtl/mediahub/spr/common/a;

    new-instance v1, Lcom/sdgtl/mediahub/spr/common/ca;

    invoke-direct {v1, p1}, Lcom/sdgtl/mediahub/spr/common/ca;-><init>(Landroid/os/Handler;)V

    invoke-direct {v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/DialogInterface$OnKeyListener;)Lcom/sdgtl/mediahub/spr/common/a;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/a;->f()V

    return-object v0

    :cond_5f
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->b(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v5, :cond_3f

    const v0, 0x7f0a0055

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p2, v2, v3

    aput-object p3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3f
.end method

.method public static a(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;
    .registers 6

    sput-object p0, Lcom/sdgtl/mediahub/spr/common/a;->e:Landroid/content/Context;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x7f0a

    new-instance v2, Lcom/sdgtl/mediahub/spr/common/au;

    invoke-direct {v2, p2}, Lcom/sdgtl/mediahub/spr/common/au;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Landroid/app/AlertDialog$Builder;)Lcom/sdgtl/mediahub/spr/common/a;

    move-result-object v0

    const v1, 0x7f0a0119

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->a(Ljava/lang/CharSequence;)Lcom/sdgtl/mediahub/spr/common/a;

    const v1, 0x1080027

    invoke-direct {v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->a(I)Lcom/sdgtl/mediahub/spr/common/a;

    new-instance v1, Lcom/sdgtl/mediahub/spr/common/av;

    invoke-direct {v1, p2}, Lcom/sdgtl/mediahub/spr/common/av;-><init>(Landroid/os/Handler;)V

    invoke-direct {v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/DialogInterface$OnKeyListener;)Lcom/sdgtl/mediahub/spr/common/a;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/a;->f()V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/sdgtl/mediahub/spr/common/a;
    .registers 7

    const/4 v3, 0x0

    sput-object p0, Lcom/sdgtl/mediahub/spr/common/a;->e:Landroid/content/Context;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x7f0a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Landroid/app/AlertDialog$Builder;)Lcom/sdgtl/mediahub/spr/common/a;

    move-result-object v0

    invoke-direct {v0, p1}, Lcom/sdgtl/mediahub/spr/common/a;->a(Ljava/lang/CharSequence;)Lcom/sdgtl/mediahub/spr/common/a;

    invoke-direct {v0, v3}, Lcom/sdgtl/mediahub/spr/common/a;->a(I)Lcom/sdgtl/mediahub/spr/common/a;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/a;->f()V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;
    .registers 7

    sput-object p0, Lcom/sdgtl/mediahub/spr/common/a;->e:Landroid/content/Context;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x7f0a

    new-instance v2, Lcom/sdgtl/mediahub/spr/common/aw;

    invoke-direct {v2, p3}, Lcom/sdgtl/mediahub/spr/common/aw;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Landroid/app/AlertDialog$Builder;)Lcom/sdgtl/mediahub/spr/common/a;

    move-result-object v0

    invoke-direct {v0, p1}, Lcom/sdgtl/mediahub/spr/common/a;->a(Ljava/lang/CharSequence;)Lcom/sdgtl/mediahub/spr/common/a;

    const v1, 0x1080027

    invoke-direct {v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->a(I)Lcom/sdgtl/mediahub/spr/common/a;

    new-instance v1, Lcom/sdgtl/mediahub/spr/common/ax;

    invoke-direct {v1, p3}, Lcom/sdgtl/mediahub/spr/common/ax;-><init>(Landroid/os/Handler;)V

    invoke-direct {v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/DialogInterface$OnKeyListener;)Lcom/sdgtl/mediahub/spr/common/a;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/a;->f()V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/sdgtl/mediahub/spr/download/DownloadInfo;)Lcom/sdgtl/mediahub/spr/common/a;
    .registers 7

    sput-object p0, Lcom/sdgtl/mediahub/spr/common/a;->e:Landroid/content/Context;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x7f0a

    new-instance v2, Lcom/sdgtl/mediahub/spr/common/bv;

    invoke-direct {v2, p2, p3, p0}, Lcom/sdgtl/mediahub/spr/common/bv;-><init>(Ljava/lang/String;Lcom/sdgtl/mediahub/spr/download/DownloadInfo;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a0001

    new-instance v2, Lcom/sdgtl/mediahub/spr/common/bw;

    invoke-direct {v2}, Lcom/sdgtl/mediahub/spr/common/bw;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Landroid/app/AlertDialog$Builder;)Lcom/sdgtl/mediahub/spr/common/a;

    move-result-object v0

    const v1, 0x7f0a0119

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->a(Ljava/lang/CharSequence;)Lcom/sdgtl/mediahub/spr/common/a;

    const v1, 0x1080027

    invoke-direct {v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->a(I)Lcom/sdgtl/mediahub/spr/common/a;

    new-instance v1, Lcom/sdgtl/mediahub/spr/common/bx;

    invoke-direct {v1}, Lcom/sdgtl/mediahub/spr/common/bx;-><init>()V

    invoke-direct {v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/DialogInterface$OnKeyListener;)Lcom/sdgtl/mediahub/spr/common/a;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/a;->f()V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/sdgtl/mediahub/spr/common/a;
    .registers 6

    const/4 v3, 0x0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x7f0a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Landroid/app/AlertDialog$Builder;)Lcom/sdgtl/mediahub/spr/common/a;

    move-result-object v0

    const v1, 0x7f0a0043

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->a(Ljava/lang/CharSequence;)Lcom/sdgtl/mediahub/spr/common/a;

    invoke-direct {v0, v3}, Lcom/sdgtl/mediahub/spr/common/a;->a(I)Lcom/sdgtl/mediahub/spr/common/a;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/a;->f()V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;
    .registers 21

    sput-object p0, Lcom/sdgtl/mediahub/spr/common/a;->e:Landroid/content/Context;

    new-instance v15, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {p0 .. p0}, Lcom/sdgtl/mediahub/spr/a/a;->g(Landroid/content/Context;)Z

    move-result v5

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-string v2, "01"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    const-string v2, "02"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fc

    :cond_2a
    const/4 v2, 0x0

    move v14, v2

    :goto_2c
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v14, v2, :cond_6c

    const-wide/16 v2, 0x0

    cmp-long v2, v10, v2

    if-eqz v2, :cond_dc

    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-eqz v2, :cond_dc

    const-string v3, "09"

    add-long v4, v10, v12

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    new-instance v2, Lcom/sdgtl/mediahub/spr/common/eb;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/sdgtl/mediahub/spr/common/eb;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_55
    :goto_55
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_13b

    const v2, 0x7f0a01a4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    const/4 v2, 0x0

    :goto_6b
    return-object v2

    :cond_6c
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;->b:Ljava/lang/String;

    const-string v3, "01"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a4

    const-string v3, "01"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;

    iget-wide v8, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;->c:J

    move-object/from16 v0, p0

    invoke-static {v0, v8, v9}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    new-instance v2, Lcom/sdgtl/mediahub/spr/common/eb;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/sdgtl/mediahub/spr/common/eb;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide v2, v8

    move-wide v6, v10

    :goto_9e
    add-int/lit8 v4, v14, 0x1

    move-wide v12, v2

    move-wide v10, v6

    move v14, v4

    goto :goto_2c

    :cond_a4
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;->b:Ljava/lang/String;

    const-string v3, "02"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f8

    const-string v7, "02"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;

    iget-wide v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;->c:J

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    new-instance v6, Lcom/sdgtl/mediahub/spr/common/eb;

    if-eqz v5, :cond_da

    const/4 v9, 0x0

    :goto_cd
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v11}, Lcom/sdgtl/mediahub/spr/common/eb;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide v6, v2

    move-wide v2, v12

    goto :goto_9e

    :cond_da
    const/4 v9, 0x1

    goto :goto_cd

    :cond_dc
    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-lez v2, :cond_55

    const-wide/16 v2, 0x0

    cmp-long v2, v10, v2

    if-nez v2, :cond_55

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_55

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdgtl/mediahub/spr/common/eb;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sdgtl/mediahub/spr/common/eb;->c:Z

    goto/16 :goto_55

    :cond_fc
    const-string v3, "02"

    const/4 v2, 0x0

    move v4, v2

    :goto_100
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_55

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;->b:Ljava/lang/String;

    const-string v5, "02"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_137

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;

    iget-wide v4, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;->c:J

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    new-instance v2, Lcom/sdgtl/mediahub/spr/common/eb;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/sdgtl/mediahub/spr/common/eb;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_55

    :cond_137
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_100

    :cond_13b
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03004e

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    new-instance v3, Lcom/sdgtl/mediahub/spr/common/ce;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v3, v0, v1}, Lcom/sdgtl/mediahub/spr/common/ce;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    sput-object v3, Lcom/sdgtl/mediahub/spr/common/a;->b:Lcom/sdgtl/mediahub/spr/common/ce;

    const v3, 0x7f0d004d

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    sget-object v4, Lcom/sdgtl/mediahub/spr/common/a;->b:Lcom/sdgtl/mediahub/spr/common/ce;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v4, Lcom/sdgtl/mediahub/spr/common/ay;

    invoke-direct {v4}, Lcom/sdgtl/mediahub/spr/common/ay;-><init>()V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v3, 0x7f0d006a

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    new-instance v4, Lcom/sdgtl/mediahub/spr/common/bj;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/sdgtl/mediahub/spr/common/bj;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0d0002

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    new-instance v4, Lcom/sdgtl/mediahub/spr/common/bt;

    invoke-direct {v4}, Lcom/sdgtl/mediahub/spr/common/bt;-><init>()V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static/range {p0 .. p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1af

    const/high16 v4, 0x7f0d

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08001b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setTextColor(I)V

    :cond_1af
    const/4 v4, 0x0

    invoke-virtual {v15, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v15, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const/high16 v2, 0x7f0a

    new-instance v4, Lcom/sdgtl/mediahub/spr/common/cb;

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    invoke-direct {v4, v0, v3, v1}, Lcom/sdgtl/mediahub/spr/common/cb;-><init>(Landroid/os/Handler;Landroid/widget/CheckBox;Landroid/content/Context;)V

    invoke-virtual {v15, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0a0001

    new-instance v3, Lcom/sdgtl/mediahub/spr/common/c;

    move-object/from16 v0, p3

    invoke-direct {v3, v0}, Lcom/sdgtl/mediahub/spr/common/c;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v15, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Landroid/app/AlertDialog$Builder;)Lcom/sdgtl/mediahub/spr/common/a;

    move-result-object v2

    const v3, 0x7f0a01d1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sdgtl/mediahub/spr/common/a;->a(Ljava/lang/CharSequence;)Lcom/sdgtl/mediahub/spr/common/a;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/sdgtl/mediahub/spr/common/a;->a(I)Lcom/sdgtl/mediahub/spr/common/a;

    new-instance v3, Lcom/sdgtl/mediahub/spr/common/d;

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    invoke-direct {v3, v0, v1}, Lcom/sdgtl/mediahub/spr/common/d;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    invoke-direct {v2, v3}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/DialogInterface$OnKeyListener;)Lcom/sdgtl/mediahub/spr/common/a;

    invoke-direct {v2}, Lcom/sdgtl/mediahub/spr/common/a;->f()V

    goto/16 :goto_6b

    :cond_1f8
    move-wide v2, v12

    move-wide v6, v10

    goto/16 :goto_9e
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ZLandroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;
    .registers 13

    const/4 v8, 0x0

    const v7, 0x7f08001b

    const/4 v6, 0x0

    sput-object p0, Lcom/sdgtl/mediahub/spr/common/a;->e:Landroid/content/Context;

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03001e

    invoke-virtual {v0, v1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0d0001

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0d0002

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    new-instance v3, Lcom/sdgtl/mediahub/spr/common/r;

    invoke-direct {v3, p0}, Lcom/sdgtl/mediahub/spr/common/r;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v3, Lcom/sdgtl/mediahub/spr/common/s;

    invoke-direct {v3}, Lcom/sdgtl/mediahub/spr/common/s;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez p2, :cond_45

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_45
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_6d

    const/high16 v3, 0x7f0d

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setTextColor(I)V

    :cond_6d
    const v1, 0x7f0d006a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/sdgtl/mediahub/spr/common/t;

    invoke-direct {v2, p0}, Lcom/sdgtl/mediahub/spr/common/t;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const/high16 v0, 0x7f0a

    new-instance v1, Lcom/sdgtl/mediahub/spr/common/u;

    invoke-direct {v1, p3}, Lcom/sdgtl/mediahub/spr/common/u;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0a0001

    new-instance v1, Lcom/sdgtl/mediahub/spr/common/v;

    invoke-direct {v1, p3}, Lcom/sdgtl/mediahub/spr/common/v;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-static {p0, v4}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Landroid/app/AlertDialog$Builder;)Lcom/sdgtl/mediahub/spr/common/a;

    move-result-object v0

    const v1, 0x7f0a01b6

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->a(Ljava/lang/CharSequence;)Lcom/sdgtl/mediahub/spr/common/a;

    invoke-direct {v0, v6}, Lcom/sdgtl/mediahub/spr/common/a;->a(I)Lcom/sdgtl/mediahub/spr/common/a;

    new-instance v1, Lcom/sdgtl/mediahub/spr/common/w;

    invoke-direct {v1, p3}, Lcom/sdgtl/mediahub/spr/common/w;-><init>(Landroid/os/Handler;)V

    invoke-direct {v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/DialogInterface$OnKeyListener;)Lcom/sdgtl/mediahub/spr/common/a;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/a;->f()V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/util/ArrayList;)Lcom/sdgtl/mediahub/spr/common/a;
    .registers 6

    const/4 v3, 0x0

    sput-object p0, Lcom/sdgtl/mediahub/spr/common/a;->e:Landroid/content/Context;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/sdgtl/mediahub/spr/common/cc;

    invoke-direct {v1, p0, p1}, Lcom/sdgtl/mediahub/spr/common/cc;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    new-instance v2, Landroid/widget/ListView;

    invoke-direct {v2, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lcom/sdgtl/mediahub/spr/common/ag;

    invoke-direct {v1, p1, p0}, Lcom/sdgtl/mediahub/spr/common/ag;-><init>(Ljava/util/ArrayList;Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x7f0a

    new-instance v2, Lcom/sdgtl/mediahub/spr/common/an;

    invoke-direct {v2}, Lcom/sdgtl/mediahub/spr/common/an;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Landroid/app/AlertDialog$Builder;)Lcom/sdgtl/mediahub/spr/common/a;

    move-result-object v0

    const v1, 0x7f0a01c0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->a(Ljava/lang/CharSequence;)Lcom/sdgtl/mediahub/spr/common/a;

    invoke-direct {v0, v3}, Lcom/sdgtl/mediahub/spr/common/a;->a(I)Lcom/sdgtl/mediahub/spr/common/a;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/a;->f()V

    return-object v0
.end method

.method public static a(Landroid/content/Context;ZLandroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;
    .registers 11

    const/4 v7, 0x0

    const v6, 0x7f08001b

    sput-object p0, Lcom/sdgtl/mediahub/spr/common/a;->e:Landroid/content/Context;

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/high16 v1, 0x7f03

    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0d0001

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz p1, :cond_a3

    const v2, 0x7f0a01be

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2c
    const v2, 0x7f0d0002

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    new-instance v3, Lcom/sdgtl/mediahub/spr/common/z;

    invoke-direct {v3, p0}, Lcom/sdgtl/mediahub/spr/common/z;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v3, Lcom/sdgtl/mediahub/spr/common/aa;

    invoke-direct {v3}, Lcom/sdgtl/mediahub/spr/common/aa;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_6d

    const/high16 v3, 0x7f0d

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setTextColor(I)V

    :cond_6d
    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const/high16 v0, 0x7f0a

    new-instance v1, Lcom/sdgtl/mediahub/spr/common/ab;

    invoke-direct {v1, p2}, Lcom/sdgtl/mediahub/spr/common/ab;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0a0001

    new-instance v1, Lcom/sdgtl/mediahub/spr/common/ac;

    invoke-direct {v1, p2}, Lcom/sdgtl/mediahub/spr/common/ac;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-static {p0, v4}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Landroid/app/AlertDialog$Builder;)Lcom/sdgtl/mediahub/spr/common/a;

    move-result-object v0

    const v1, 0x7f0a01bd

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->a(Ljava/lang/CharSequence;)Lcom/sdgtl/mediahub/spr/common/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->a(I)Lcom/sdgtl/mediahub/spr/common/a;

    new-instance v1, Lcom/sdgtl/mediahub/spr/common/ad;

    invoke-direct {v1, p2}, Lcom/sdgtl/mediahub/spr/common/ad;-><init>(Landroid/os/Handler;)V

    invoke-direct {v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/DialogInterface$OnKeyListener;)Lcom/sdgtl/mediahub/spr/common/a;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/a;->f()V

    return-object v0

    :cond_a3
    const v2, 0x7f0a01bf

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2c
.end method

.method private a(Landroid/content/DialogInterface$OnKeyListener;)Lcom/sdgtl/mediahub/spr/common/a;
    .registers 3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/a;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-object p0
.end method

.method private a(Ljava/lang/CharSequence;)Lcom/sdgtl/mediahub/spr/common/a;
    .registers 3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/a;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public static a()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sdgtl/mediahub/spr/common/a;->h:Z

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    .registers 6

    if-nez p0, :cond_3

    :goto_2
    return-void

    :cond_3
    sget-object v1, Lcom/sdgtl/mediahub/spr/common/a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    :try_start_6
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_1b

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-ge v0, v2, :cond_1b

    sget-object v0, Lcom/sdgtl/mediahub/spr/common/a;->f:Landroid/widget/Toast;

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/sdgtl/mediahub/spr/common/a;->f:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_1b
    sget-object v0, Lcom/sdgtl/mediahub/spr/common/a;->f:Landroid/widget/Toast;

    if-nez v0, :cond_27

    const-string v0, ""

    invoke-static {p0, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/sdgtl/mediahub/spr/common/a;->f:Landroid/widget/Toast;
    :try_end_27
    .catchall {:try_start_6 .. :try_end_27} :catchall_38

    :cond_27
    :try_start_27
    sget-object v0, Lcom/sdgtl/mediahub/spr/common/a;->f:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/sdgtl/mediahub/spr/common/a;->f:Landroid/widget/Toast;

    invoke-virtual {v0, p2}, Landroid/widget/Toast;->setDuration(I)V

    sget-object v0, Lcom/sdgtl/mediahub/spr/common/a;->f:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_36
    .catchall {:try_start_27 .. :try_end_36} :catchall_38
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_36} :catch_3b

    :goto_36
    :try_start_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_38

    goto :goto_2

    :catchall_38
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_3b
    move-exception v0

    const/4 v2, 0x0

    :try_start_3d
    sput-object v2, Lcom/sdgtl/mediahub/spr/common/a;->f:Landroid/widget/Toast;

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v0, Lcom/sdgtl/mediahub/spr/common/a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_53

    sget-object v0, Lcom/sdgtl/mediahub/spr/common/a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {p0, p1, p2}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    :cond_53
    sget-object v0, Lcom/sdgtl/mediahub/spr/common/a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_59
    .catchall {:try_start_3d .. :try_end_59} :catchall_38

    goto :goto_36
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V
    .registers 7

    const/4 v3, 0x0

    const v0, 0x7f0a0019

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x7f0a001a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/CharSequence;

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/sdgtl/mediahub/spr/common/k;

    invoke-direct {v1, v2, p2}, Lcom/sdgtl/mediahub/spr/common/k;-><init>([Ljava/lang/CharSequence;Landroid/os/Handler;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/sdgtl/mediahub/spr/common/l;

    invoke-direct {v1, p2}, Lcom/sdgtl/mediahub/spr/common/l;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public static b(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/common/a;
    .registers 5

    const/4 v3, 0x0

    sput-object p0, Lcom/sdgtl/mediahub/spr/common/a;->e:Landroid/content/Context;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a0112

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x7f0a

    new-instance v2, Lcom/sdgtl/mediahub/spr/common/br;

    invoke-direct {v2, p0}, Lcom/sdgtl/mediahub/spr/common/br;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Landroid/app/AlertDialog$Builder;)Lcom/sdgtl/mediahub/spr/common/a;

    move-result-object v0

    const v1, 0x7f0a0119

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->a(Ljava/lang/CharSequence;)Lcom/sdgtl/mediahub/spr/common/a;

    invoke-direct {v0, v3}, Lcom/sdgtl/mediahub/spr/common/a;->a(I)Lcom/sdgtl/mediahub/spr/common/a;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/a;->f()V

    return-object v0
.end method

.method public static b(Landroid/content/Context;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;
    .registers 5

    sput-object p0, Lcom/sdgtl/mediahub/spr/common/a;->e:Landroid/content/Context;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a01cf

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a0002

    new-instance v2, Lcom/sdgtl/mediahub/spr/common/ai;

    invoke-direct {v2, p1}, Lcom/sdgtl/mediahub/spr/common/ai;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a0001

    new-instance v2, Lcom/sdgtl/mediahub/spr/common/aj;

    invoke-direct {v2, p1}, Lcom/sdgtl/mediahub/spr/common/aj;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Landroid/app/AlertDialog$Builder;)Lcom/sdgtl/mediahub/spr/common/a;

    move-result-object v0

    const v1, 0x7f0a0119

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->a(Ljava/lang/CharSequence;)Lcom/sdgtl/mediahub/spr/common/a;

    const v1, 0x1080027

    invoke-direct {v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->a(I)Lcom/sdgtl/mediahub/spr/common/a;

    new-instance v1, Lcom/sdgtl/mediahub/spr/common/ak;

    invoke-direct {v1, p1}, Lcom/sdgtl/mediahub/spr/common/ak;-><init>(Landroid/os/Handler;)V

    invoke-direct {v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/DialogInterface$OnKeyListener;)Lcom/sdgtl/mediahub/spr/common/a;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/a;->f()V

    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;
    .registers 6

    sput-object p0, Lcom/sdgtl/mediahub/spr/common/a;->e:Landroid/content/Context;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x7f0a

    new-instance v2, Lcom/sdgtl/mediahub/spr/common/az;

    invoke-direct {v2, p2}, Lcom/sdgtl/mediahub/spr/common/az;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Landroid/app/AlertDialog$Builder;)Lcom/sdgtl/mediahub/spr/common/a;

    move-result-object v0

    const v1, 0x7f0a0027

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->a(Ljava/lang/CharSequence;)Lcom/sdgtl/mediahub/spr/common/a;

    const v1, 0x108009b

    invoke-direct {v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->a(I)Lcom/sdgtl/mediahub/spr/common/a;

    new-instance v1, Lcom/sdgtl/mediahub/spr/common/ba;

    invoke-direct {v1, p2}, Lcom/sdgtl/mediahub/spr/common/ba;-><init>(Landroid/os/Handler;)V

    invoke-direct {v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/DialogInterface$OnKeyListener;)Lcom/sdgtl/mediahub/spr/common/a;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/a;->f()V

    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V
    .registers 8

    const/4 v4, 0x0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03001b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0a0030

    new-instance v3, Lcom/sdgtl/mediahub/spr/common/m;

    invoke-direct {v3, p2}, Lcom/sdgtl/mediahub/spr/common/m;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0a0004

    new-instance v3, Lcom/sdgtl/mediahub/spr/common/n;

    invoke-direct {v3, p2}, Lcom/sdgtl/mediahub/spr/common/n;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Landroid/app/AlertDialog$Builder;)Lcom/sdgtl/mediahub/spr/common/a;

    move-result-object v0

    const v2, 0x7f0a002f

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/sdgtl/mediahub/spr/common/a;->a(Ljava/lang/CharSequence;)Lcom/sdgtl/mediahub/spr/common/a;

    invoke-direct {v0, v4}, Lcom/sdgtl/mediahub/spr/common/a;->a(I)Lcom/sdgtl/mediahub/spr/common/a;

    new-instance v2, Lcom/sdgtl/mediahub/spr/common/o;

    invoke-direct {v2, p2}, Lcom/sdgtl/mediahub/spr/common/o;-><init>(Landroid/os/Handler;)V

    invoke-direct {v0, v2}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/DialogInterface$OnKeyListener;)Lcom/sdgtl/mediahub/spr/common/a;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/a;->f()V

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/a;->d:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    const v0, 0x7f0d0061

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0d0002

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v1, Lcom/sdgtl/mediahub/spr/common/p;

    invoke-direct {v1, v2}, Lcom/sdgtl/mediahub/spr/common/p;-><init>(Landroid/widget/Button;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v1, Lcom/sdgtl/mediahub/spr/common/q;

    invoke-direct {v1}, Lcom/sdgtl/mediahub/spr/common/q;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static c(Landroid/content/Context;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;
    .registers 5

    sput-object p0, Lcom/sdgtl/mediahub/spr/common/a;->e:Landroid/content/Context;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a0025

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x7f0a

    new-instance v2, Lcom/sdgtl/mediahub/spr/common/al;

    invoke-direct {v2, p1}, Lcom/sdgtl/mediahub/spr/common/al;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a0001

    new-instance v2, Lcom/sdgtl/mediahub/spr/common/am;

    invoke-direct {v2, p1}, Lcom/sdgtl/mediahub/spr/common/am;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Landroid/app/AlertDialog$Builder;)Lcom/sdgtl/mediahub/spr/common/a;

    move-result-object v0

    const v1, 0x7f0a0119

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->a(Ljava/lang/CharSequence;)Lcom/sdgtl/mediahub/spr/common/a;

    const v1, 0x1080027

    invoke-direct {v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->a(I)Lcom/sdgtl/mediahub/spr/common/a;

    new-instance v1, Lcom/sdgtl/mediahub/spr/common/ao;

    invoke-direct {v1, p1}, Lcom/sdgtl/mediahub/spr/common/ao;-><init>(Landroid/os/Handler;)V

    invoke-direct {v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/DialogInterface$OnKeyListener;)Lcom/sdgtl/mediahub/spr/common/a;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/a;->f()V

    return-object v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;
    .registers 7

    const/4 v3, 0x0

    sput-object p0, Lcom/sdgtl/mediahub/spr/common/a;->e:Landroid/content/Context;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x7f0a

    new-instance v2, Lcom/sdgtl/mediahub/spr/common/bh;

    invoke-direct {v2, p2}, Lcom/sdgtl/mediahub/spr/common/bh;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a0001

    new-instance v2, Lcom/sdgtl/mediahub/spr/common/bi;

    invoke-direct {v2, p2}, Lcom/sdgtl/mediahub/spr/common/bi;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Landroid/app/AlertDialog$Builder;)Lcom/sdgtl/mediahub/spr/common/a;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->a(Ljava/lang/CharSequence;)Lcom/sdgtl/mediahub/spr/common/a;

    invoke-direct {v0, v3}, Lcom/sdgtl/mediahub/spr/common/a;->a(I)Lcom/sdgtl/mediahub/spr/common/a;

    new-instance v1, Lcom/sdgtl/mediahub/spr/common/bk;

    invoke-direct {v1, p2}, Lcom/sdgtl/mediahub/spr/common/bk;-><init>(Landroid/os/Handler;)V

    invoke-direct {v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/DialogInterface$OnKeyListener;)Lcom/sdgtl/mediahub/spr/common/a;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/a;->f()V

    return-object v0
.end method

.method static synthetic c()Z
    .registers 1

    sget-boolean v0, Lcom/sdgtl/mediahub/spr/common/a;->h:Z

    return v0
.end method

.method static synthetic d()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/sdgtl/mediahub/spr/common/a;->e:Landroid/content/Context;

    return-object v0
.end method

.method public static d(Landroid/content/Context;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;
    .registers 5

    sput-object p0, Lcom/sdgtl/mediahub/spr/common/a;->e:Landroid/content/Context;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a0026

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x7f0a

    new-instance v2, Lcom/sdgtl/mediahub/spr/common/ap;

    invoke-direct {v2, p1}, Lcom/sdgtl/mediahub/spr/common/ap;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Landroid/app/AlertDialog$Builder;)Lcom/sdgtl/mediahub/spr/common/a;

    move-result-object v0

    const v1, 0x7f0a0119

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->a(Ljava/lang/CharSequence;)Lcom/sdgtl/mediahub/spr/common/a;

    const v1, 0x1080027

    invoke-direct {v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->a(I)Lcom/sdgtl/mediahub/spr/common/a;

    new-instance v1, Lcom/sdgtl/mediahub/spr/common/aq;

    invoke-direct {v1, p1}, Lcom/sdgtl/mediahub/spr/common/aq;-><init>(Landroid/os/Handler;)V

    invoke-direct {v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/DialogInterface$OnKeyListener;)Lcom/sdgtl/mediahub/spr/common/a;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/a;->f()V

    return-object v0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;
    .registers 6

    sput-object p0, Lcom/sdgtl/mediahub/spr/common/a;->e:Landroid/content/Context;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_32

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :goto_c
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x7f0a

    new-instance v2, Lcom/sdgtl/mediahub/spr/common/bm;

    invoke-direct {v2, p2}, Lcom/sdgtl/mediahub/spr/common/bm;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Landroid/app/AlertDialog$Builder;)Lcom/sdgtl/mediahub/spr/common/a;

    move-result-object v0

    const v1, 0x7f0a0119

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->a(Ljava/lang/CharSequence;)Lcom/sdgtl/mediahub/spr/common/a;

    const v1, 0x1080027

    invoke-direct {v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->a(I)Lcom/sdgtl/mediahub/spr/common/a;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/a;->f()V

    return-object v0

    :cond_32
    const v1, 0x7f0a0117

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_c
.end method

.method static synthetic e()J
    .registers 2

    sget-wide v0, Lcom/sdgtl/mediahub/spr/common/a;->c:J

    return-wide v0
.end method

.method public static e(Landroid/content/Context;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;
    .registers 6

    const v3, 0x7f0a009f

    sput-object p0, Lcom/sdgtl/mediahub/spr/common/a;->e:Landroid/content/Context;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a00b2

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/sdgtl/mediahub/spr/common/ar;

    invoke-direct {v1, p1}, Lcom/sdgtl/mediahub/spr/common/ar;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a0001

    new-instance v2, Lcom/sdgtl/mediahub/spr/common/as;

    invoke-direct {v2, p1}, Lcom/sdgtl/mediahub/spr/common/as;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Landroid/app/AlertDialog$Builder;)Lcom/sdgtl/mediahub/spr/common/a;

    move-result-object v0

    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->a(Ljava/lang/CharSequence;)Lcom/sdgtl/mediahub/spr/common/a;

    new-instance v1, Lcom/sdgtl/mediahub/spr/common/at;

    invoke-direct {v1, p1}, Lcom/sdgtl/mediahub/spr/common/at;-><init>(Landroid/os/Handler;)V

    invoke-direct {v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/DialogInterface$OnKeyListener;)Lcom/sdgtl/mediahub/spr/common/a;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/a;->f()V

    return-object v0
.end method

.method public static e(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;
    .registers 6

    sput-object p0, Lcom/sdgtl/mediahub/spr/common/a;->e:Landroid/content/Context;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x7f0a

    new-instance v2, Lcom/sdgtl/mediahub/spr/common/bq;

    invoke-direct {v2, p2}, Lcom/sdgtl/mediahub/spr/common/bq;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Landroid/app/AlertDialog$Builder;)Lcom/sdgtl/mediahub/spr/common/a;

    move-result-object v0

    const v1, 0x7f0a0119

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->a(Ljava/lang/CharSequence;)Lcom/sdgtl/mediahub/spr/common/a;

    const v1, 0x1080027

    invoke-direct {v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->a(I)Lcom/sdgtl/mediahub/spr/common/a;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/a;->f()V

    return-object v0
.end method

.method public static f(Landroid/content/Context;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;
    .registers 6

    const/4 v3, 0x0

    sput-object p0, Lcom/sdgtl/mediahub/spr/common/a;->e:Landroid/content/Context;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a00e3

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x7f0a

    new-instance v2, Lcom/sdgtl/mediahub/spr/common/bb;

    invoke-direct {v2, p1}, Lcom/sdgtl/mediahub/spr/common/bb;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a0001

    new-instance v2, Lcom/sdgtl/mediahub/spr/common/bc;

    invoke-direct {v2, p1}, Lcom/sdgtl/mediahub/spr/common/bc;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Landroid/app/AlertDialog$Builder;)Lcom/sdgtl/mediahub/spr/common/a;

    move-result-object v0

    const v1, 0x7f0a00e2

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->a(Ljava/lang/CharSequence;)Lcom/sdgtl/mediahub/spr/common/a;

    invoke-direct {v0, v3}, Lcom/sdgtl/mediahub/spr/common/a;->a(I)Lcom/sdgtl/mediahub/spr/common/a;

    new-instance v1, Lcom/sdgtl/mediahub/spr/common/bd;

    invoke-direct {v1, p1}, Lcom/sdgtl/mediahub/spr/common/bd;-><init>(Landroid/os/Handler;)V

    invoke-direct {v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/DialogInterface$OnKeyListener;)Lcom/sdgtl/mediahub/spr/common/a;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/a;->f()V

    return-object v0
.end method

.method public static f(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;
    .registers 7

    const/4 v3, 0x0

    sput-object p0, Lcom/sdgtl/mediahub/spr/common/a;->e:Landroid/content/Context;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x7f0a

    new-instance v2, Lcom/sdgtl/mediahub/spr/common/bs;

    invoke-direct {v2, p2}, Lcom/sdgtl/mediahub/spr/common/bs;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Landroid/app/AlertDialog$Builder;)Lcom/sdgtl/mediahub/spr/common/a;

    move-result-object v0

    const v1, 0x7f0a010e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->a(Ljava/lang/CharSequence;)Lcom/sdgtl/mediahub/spr/common/a;

    invoke-direct {v0, v3}, Lcom/sdgtl/mediahub/spr/common/a;->a(I)Lcom/sdgtl/mediahub/spr/common/a;

    new-instance v1, Lcom/sdgtl/mediahub/spr/common/bu;

    invoke-direct {v1, p2}, Lcom/sdgtl/mediahub/spr/common/bu;-><init>(Landroid/os/Handler;)V

    invoke-direct {v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/DialogInterface$OnKeyListener;)Lcom/sdgtl/mediahub/spr/common/a;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/a;->f()V

    return-object v0
.end method

.method private f()V
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/a;->d:Landroid/app/AlertDialog;

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/a;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/a;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_12} :catch_13

    goto :goto_4

    :catch_13
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method public static g(Landroid/content/Context;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;
    .registers 6

    const/4 v3, 0x0

    sput-object p0, Lcom/sdgtl/mediahub/spr/common/a;->e:Landroid/content/Context;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a00df

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x7f0a

    new-instance v2, Lcom/sdgtl/mediahub/spr/common/be;

    invoke-direct {v2, p1}, Lcom/sdgtl/mediahub/spr/common/be;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a0001

    new-instance v2, Lcom/sdgtl/mediahub/spr/common/bf;

    invoke-direct {v2, p1}, Lcom/sdgtl/mediahub/spr/common/bf;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Landroid/app/AlertDialog$Builder;)Lcom/sdgtl/mediahub/spr/common/a;

    move-result-object v0

    const v1, 0x7f0a00dd

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->a(Ljava/lang/CharSequence;)Lcom/sdgtl/mediahub/spr/common/a;

    invoke-direct {v0, v3}, Lcom/sdgtl/mediahub/spr/common/a;->a(I)Lcom/sdgtl/mediahub/spr/common/a;

    new-instance v1, Lcom/sdgtl/mediahub/spr/common/bg;

    invoke-direct {v1, p1}, Lcom/sdgtl/mediahub/spr/common/bg;-><init>(Landroid/os/Handler;)V

    invoke-direct {v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/DialogInterface$OnKeyListener;)Lcom/sdgtl/mediahub/spr/common/a;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/a;->f()V

    return-object v0
.end method

.method public static h(Landroid/content/Context;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;
    .registers 5

    sput-object p0, Lcom/sdgtl/mediahub/spr/common/a;->e:Landroid/content/Context;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3d

    const v1, 0x7f0a0117

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :goto_17
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x7f0a

    new-instance v2, Lcom/sdgtl/mediahub/spr/common/bl;

    invoke-direct {v2, p1}, Lcom/sdgtl/mediahub/spr/common/bl;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Landroid/app/AlertDialog$Builder;)Lcom/sdgtl/mediahub/spr/common/a;

    move-result-object v0

    const v1, 0x7f0a0119

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->a(Ljava/lang/CharSequence;)Lcom/sdgtl/mediahub/spr/common/a;

    const v1, 0x1080027

    invoke-direct {v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->a(I)Lcom/sdgtl/mediahub/spr/common/a;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/a;->f()V

    return-object v0

    :cond_3d
    const v1, 0x7f0a0118

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_17
.end method

.method public static i(Landroid/content/Context;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;
    .registers 5

    sput-object p0, Lcom/sdgtl/mediahub/spr/common/a;->e:Landroid/content/Context;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a011d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x7f0a

    new-instance v2, Lcom/sdgtl/mediahub/spr/common/bn;

    invoke-direct {v2, p1}, Lcom/sdgtl/mediahub/spr/common/bn;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Landroid/app/AlertDialog$Builder;)Lcom/sdgtl/mediahub/spr/common/a;

    move-result-object v0

    const v1, 0x7f0a0119

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->a(Ljava/lang/CharSequence;)Lcom/sdgtl/mediahub/spr/common/a;

    const v1, 0x1080027

    invoke-direct {v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->a(I)Lcom/sdgtl/mediahub/spr/common/a;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/a;->f()V

    return-object v0
.end method

.method public static j(Landroid/content/Context;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;
    .registers 5

    sput-object p0, Lcom/sdgtl/mediahub/spr/common/a;->e:Landroid/content/Context;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a0113

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x7f0a

    new-instance v2, Lcom/sdgtl/mediahub/spr/common/bo;

    invoke-direct {v2, p1}, Lcom/sdgtl/mediahub/spr/common/bo;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Landroid/app/AlertDialog$Builder;)Lcom/sdgtl/mediahub/spr/common/a;

    move-result-object v0

    const v1, 0x7f0a0119

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->a(Ljava/lang/CharSequence;)Lcom/sdgtl/mediahub/spr/common/a;

    const v1, 0x1080027

    invoke-direct {v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->a(I)Lcom/sdgtl/mediahub/spr/common/a;

    new-instance v1, Lcom/sdgtl/mediahub/spr/common/bp;

    invoke-direct {v1, p1}, Lcom/sdgtl/mediahub/spr/common/bp;-><init>(Landroid/os/Handler;)V

    invoke-direct {v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/DialogInterface$OnKeyListener;)Lcom/sdgtl/mediahub/spr/common/a;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/a;->f()V

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/DialogInterface$OnDismissListener;)Lcom/sdgtl/mediahub/spr/common/a;
    .registers 3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/a;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-object p0
.end method

.method public final b()Z
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/a;->d:Landroid/app/AlertDialog;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/a;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
