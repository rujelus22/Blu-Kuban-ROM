.class public final Lcom/anddoes/launcher/b;
.super Landroid/widget/BaseExpandableListAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/ActPickerActivity;

.field private final b:Ljava/util/List;

.field private final c:Landroid/widget/AbsListView$LayoutParams;

.field private final d:I


# direct methods
.method public constructor <init>(Lcom/anddoes/launcher/ActPickerActivity;Ljava/util/List;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/anddoes/launcher/b;->a:Lcom/anddoes/launcher/ActPickerActivity;

    .line 124
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 125
    iput-object p2, p0, Lcom/anddoes/launcher/b;->b:Ljava/util/List;

    .line 126
    invoke-virtual {p1}, Lcom/anddoes/launcher/ActPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x105

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/b;->d:I

    .line 127
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    .line 128
    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 127
    iput-object v0, p0, Lcom/anddoes/launcher/b;->c:Landroid/widget/AbsListView$LayoutParams;

    .line 129
    return-void
.end method

.method private a(II)Landroid/content/pm/ActivityInfo;
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 133
    .line 135
    :try_start_2
    iget-object v0, p0, Lcom/anddoes/launcher/b;->a:Lcom/anddoes/launcher/ActPickerActivity;

    invoke-static {v0}, Lcom/anddoes/launcher/ActPickerActivity;->a(Lcom/anddoes/launcher/ActPickerActivity;)Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 136
    iget-object v0, p0, Lcom/anddoes/launcher/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 137
    const/4 v4, 0x1

    .line 135
    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 138
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_3b

    .line 140
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v5, v4

    move v3, v1

    move v0, v1

    :goto_20
    if-lt v3, v5, :cond_24

    move-object v0, v2

    .line 153
    :goto_23
    return-object v0

    .line 140
    :cond_24
    aget-object v1, v4, v3

    .line 141
    iget-boolean v6, v1, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-eqz v6, :cond_34

    iget-boolean v6, v1, Landroid/content/pm/ActivityInfo;->exported:Z
    :try_end_2c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2c} :catch_38

    if-eqz v6, :cond_34

    .line 142
    if-ne v0, p2, :cond_32

    move-object v0, v1

    .line 144
    goto :goto_23

    .line 146
    :cond_32
    add-int/lit8 v0, v0, 0x1

    .line 140
    :cond_34
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_20

    .line 150
    :catch_38
    move-exception v0

    move-object v0, v2

    .line 151
    goto :goto_23

    :cond_3b
    move-object v0, v2

    goto :goto_23
.end method

.method private a(I)Landroid/content/pm/PackageInfo;
    .registers 3
    .parameter

    .prologue
    .line 206
    iget-object v0, p0, Lcom/anddoes/launcher/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    return-object v0
.end method


# virtual methods
.method public final synthetic getChild(II)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-direct {p0, p1, p2}, Lcom/anddoes/launcher/b;->a(II)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getChildId(II)J
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 158
    int-to-long v0, p2

    return-wide v0
.end method

.method public final getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 185
    invoke-direct {p0, p1, p2}, Lcom/anddoes/launcher/b;->a(II)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 186
    if-eqz v2, :cond_65

    .line 187
    if-nez p4, :cond_66

    .line 188
    new-instance v1, Lcom/anddoes/launcher/c;

    invoke-direct {v1, p0, v4}, Lcom/anddoes/launcher/c;-><init>(Lcom/anddoes/launcher/b;B)V

    .line 189
    iget-object v0, p0, Lcom/anddoes/launcher/b;->a:Lcom/anddoes/launcher/ActPickerActivity;

    invoke-static {v0}, Lcom/anddoes/launcher/ActPickerActivity;->b(Lcom/anddoes/launcher/ActPickerActivity;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f030002

    invoke-virtual {v0, v3, p5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    .line 190
    const v0, 0x1020006

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/anddoes/launcher/c;->a:Landroid/widget/ImageView;

    .line 191
    const v0, 0x1020016

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/anddoes/launcher/c;->b:Landroid/widget/TextView;

    .line 192
    const v0, 0x1020010

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/anddoes/launcher/c;->c:Landroid/widget/TextView;

    .line 193
    invoke-virtual {p4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    .line 197
    :goto_40
    iget-object v1, v0, Lcom/anddoes/launcher/c;->a:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/anddoes/launcher/b;->a:Lcom/anddoes/launcher/ActPickerActivity;

    invoke-static {v3}, Lcom/anddoes/launcher/ActPickerActivity;->a(Lcom/anddoes/launcher/ActPickerActivity;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 198
    iget-object v1, v0, Lcom/anddoes/launcher/c;->b:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/anddoes/launcher/b;->a:Lcom/anddoes/launcher/ActPickerActivity;

    invoke-static {v3}, Lcom/anddoes/launcher/ActPickerActivity;->a(Lcom/anddoes/launcher/ActPickerActivity;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v0, v0, Lcom/anddoes/launcher/c;->c:Landroid/widget/TextView;

    iget-object v1, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    :cond_65
    return-object p4

    .line 195
    :cond_66
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/c;

    goto :goto_40
.end method

.method public final getChildrenCount(I)I
    .registers 9
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 163
    .line 165
    :try_start_1
    iget-object v0, p0, Lcom/anddoes/launcher/b;->a:Lcom/anddoes/launcher/ActPickerActivity;

    invoke-static {v0}, Lcom/anddoes/launcher/ActPickerActivity;->a(Lcom/anddoes/launcher/ActPickerActivity;)Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 166
    iget-object v0, p0, Lcom/anddoes/launcher/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 167
    const/4 v3, 0x1

    .line 165
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 168
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_34

    .line 169
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v4, v3

    move v2, v1

    move v0, v1

    :goto_1f
    if-lt v2, v4, :cond_22

    .line 178
    :goto_21
    return v0

    .line 169
    :cond_22
    aget-object v5, v3, v2

    .line 170
    iget-boolean v6, v5, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-eqz v6, :cond_2e

    iget-boolean v5, v5, Landroid/content/pm/ActivityInfo;->exported:Z
    :try_end_2a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_2a} :catch_31

    if-eqz v5, :cond_2e

    .line 171
    add-int/lit8 v0, v0, 0x1

    .line 169
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 175
    :catch_31
    move-exception v0

    move v0, v1

    .line 176
    goto :goto_21

    :cond_34
    move v0, v1

    goto :goto_21
.end method

.method public final synthetic getGroup(I)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/b;->a(I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getGroupCount()I
    .registers 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/anddoes/launcher/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getGroupId(I)J
    .registers 4
    .parameter

    .prologue
    .line 216
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 223
    if-nez p3, :cond_5e

    .line 224
    new-instance p3, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/anddoes/launcher/b;->a:Lcom/anddoes/launcher/ActPickerActivity;

    invoke-direct {p3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 225
    iget-object v0, p0, Lcom/anddoes/launcher/b;->c:Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    const/16 v0, 0x13

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 227
    iget v0, p0, Lcom/anddoes/launcher/b;->d:I

    iget v1, p0, Lcom/anddoes/launcher/b;->d:I

    div-int/lit8 v1, v1, 0x8

    const/4 v2, 0x0

    iget v3, p0, Lcom/anddoes/launcher/b;->d:I

    div-int/lit8 v3, v3, 0x8

    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 228
    iget-object v0, p0, Lcom/anddoes/launcher/b;->a:Lcom/anddoes/launcher/ActPickerActivity;

    const v1, 0x1030044

    invoke-virtual {p3, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 229
    const/4 v0, 0x1

    invoke-virtual {p3, v4, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 235
    :goto_2e
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/b;->a(I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 237
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lcom/anddoes/launcher/b;->a:Lcom/anddoes/launcher/ActPickerActivity;

    invoke-static {v2}, Lcom/anddoes/launcher/ActPickerActivity;->a(Lcom/anddoes/launcher/ActPickerActivity;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 238
    iget-object v2, p0, Lcom/anddoes/launcher/b;->a:Lcom/anddoes/launcher/ActPickerActivity;

    .line 236
    invoke-static {v1, v2}, Lcom/anddoes/launcher/kw;->b(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 239
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lcom/anddoes/launcher/b;->a:Lcom/anddoes/launcher/ActPickerActivity;

    invoke-static {v2}, Lcom/anddoes/launcher/ActPickerActivity;->a(Lcom/anddoes/launcher/ActPickerActivity;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget v0, p0, Lcom/anddoes/launcher/b;->d:I

    div-int/lit8 v0, v0, 0x6

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 241
    invoke-virtual {p3, v1, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 242
    return-object p3

    .line 232
    :cond_5e
    check-cast p3, Landroid/widget/TextView;

    goto :goto_2e
.end method

.method public final hasStableIds()Z
    .registers 2

    .prologue
    .line 252
    const/4 v0, 0x1

    return v0
.end method

.method public final isChildSelectable(II)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 247
    const/4 v0, 0x1

    return v0
.end method
