.class public LHB;
.super Landroid/widget/SimpleCursorTreeAdapter;
.source "NavigationCollectionGroupAdapter.java"


# static fields
.field private static final a:I

.field private static a:Landroid/database/Cursor;

.field private static final a:[I

.field private static final a:[Ljava/lang/String;

.field private static final b:I

.field private static final b:[I

.field private static final b:[Ljava/lang/String;


# instance fields
.field private final a:LHD;

.field private final a:LVo;

.field private final a:LhM;

.field private a:Ljava/lang/String;

.field private final a:Ljc;

.field private final a:Llu;

.field private final a:Z

.field private a:[LHA;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    sget v0, LcU;->navigation_folder_row:I

    sput v0, LHB;->a:I

    .line 54
    sget v0, LcU;->navigation_folder_group:I

    sput v0, LHB;->b:I

    .line 55
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "LABEL"

    aput-object v1, v0, v2

    sput-object v0, LHB;->a:[Ljava/lang/String;

    .line 56
    new-array v0, v3, [I

    sget v1, LcS;->name:I

    aput v1, v0, v2

    sput-object v0, LHB;->a:[I

    .line 57
    new-array v0, v3, [Ljava/lang/String;

    sget-object v1, LMk;->a:LMk;

    invoke-virtual {v1}, LMk;->a()LLV;

    move-result-object v1

    invoke-virtual {v1}, LLV;->a()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    sput-object v0, LHB;->b:[Ljava/lang/String;

    .line 58
    new-array v0, v3, [I

    sget v1, LcS;->name:I

    aput v1, v0, v2

    sput-object v0, LHB;->b:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[LHA;Ljava/lang/String;Llu;LhM;Ljc;LVo;LHD;Z)V
    .registers 20
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 101
    invoke-static {p1, p4, p3}, LHB;->a(Landroid/content/Context;Llu;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v2

    invoke-static {p2}, LHB;->a([LHA;)Landroid/database/Cursor;

    move-result-object v3

    sget v4, LHB;->b:I

    sget-object v5, LHB;->a:[Ljava/lang/String;

    sget-object v6, LHB;->a:[I

    sget v7, LHB;->a:I

    sget-object v8, LHB;->b:[Ljava/lang/String;

    sget-object v9, LHB;->b:[I

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SimpleCursorTreeAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I[Ljava/lang/String;[II[Ljava/lang/String;[I)V

    .line 110
    invoke-static/range {p8 .. p8}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iput-object p2, p0, LHB;->a:[LHA;

    .line 113
    iput-object p4, p0, LHB;->a:Llu;

    .line 114
    iput-object p5, p0, LHB;->a:LhM;

    .line 115
    move-object/from16 v0, p6

    iput-object v0, p0, LHB;->a:Ljc;

    .line 116
    iput-object p3, p0, LHB;->a:Ljava/lang/String;

    .line 117
    move-object/from16 v0, p7

    iput-object v0, p0, LHB;->a:LVo;

    .line 118
    move-object/from16 v0, p8

    iput-object v0, p0, LHB;->a:LHD;

    .line 119
    move/from16 v0, p9

    iput-boolean v0, p0, LHB;->a:Z

    .line 120
    return-void
.end method

.method static synthetic a(LHB;)LHD;
    .registers 2
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, LHB;->a:LHD;

    return-object v0
.end method

.method private static a(Landroid/content/Context;Llu;Ljava/lang/String;)Landroid/content/Context;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 311
    invoke-interface {p1, p2}, Llu;->b(Ljava/lang/String;)LkG;

    move-result-object v0

    .line 312
    sget-object v1, Lnk;->a:Lnk;

    invoke-virtual {v1, v0}, Lnk;->a(LkG;)LnL;

    move-result-object v1

    .line 313
    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Llu;->a(LkG;LnL;I)Landroid/database/Cursor;

    move-result-object v0

    sput-object v0, LHB;->a:Landroid/database/Cursor;

    .line 314
    return-object p0
.end method

.method private static a([LHA;)Landroid/database/Cursor;
    .registers 8
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 271
    new-instance v2, Landroid/database/MatrixCursor;

    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v0, v1

    const-string v3, "LABEL"

    aput-object v3, v0, v5

    invoke-direct {v2, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move v0, v1

    .line 272
    :goto_13
    array-length v3, p0

    if-ge v0, v3, :cond_2e

    .line 273
    new-array v3, v6, [Ljava/lang/Object;

    add-int/lit8 v4, v0, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    aget-object v4, p0, v0

    invoke-virtual {v4}, LHA;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 272
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 276
    :cond_2e
    return-object v2
.end method

.method private a(I)V
    .registers 5
    .parameter

    .prologue
    .line 261
    iget-object v0, p0, LHB;->a:[LHA;

    aget-object v0, v0, p1

    iget-object v1, p0, LHB;->a:Llu;

    iget-object v2, p0, LHB;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LHA;->a(Llu;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, LHB;->setChildrenCursor(ILandroid/database/Cursor;)V

    .line 262
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 286
    invoke-static {}, Lkg;->b()Z

    move-result v0

    if-nez v0, :cond_7

    .line 292
    :goto_6
    return-void

    .line 289
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LhW;

    .line 290
    iget-object v1, p0, LHB;->a:Ljc;

    invoke-interface {v1}, Ljc;->a()LhW;

    move-result-object v1

    invoke-interface {v0, v1}, LhW;->a(LhW;)Z

    move-result v0

    .line 291
    invoke-virtual {p1, v0}, Landroid/view/View;->setActivated(Z)V

    goto :goto_6
.end method

.method public a([LHA;Ljava/lang/String;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 129
    iget-object v0, p0, LHB;->a:[LHA;

    invoke-static {v0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    array-length v0, p1

    iget-object v2, p0, LHB;->a:[LHA;

    array-length v2, v2

    if-ne v0, v2, :cond_41

    const/4 v0, 0x1

    :goto_d
    invoke-static {v0}, LafQ;->b(Z)V

    .line 132
    iget-object v0, p0, LHB;->a:[LHA;

    .line 133
    iput-object p1, p0, LHB;->a:[LHA;

    .line 134
    iget-object v2, p0, LHB;->a:Ljava/lang/String;

    .line 135
    iput-object p2, p0, LHB;->a:Ljava/lang/String;

    .line 137
    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 138
    :goto_1e
    array-length v2, p1

    if-ge v1, v2, :cond_4c

    .line 139
    aget-object v2, v0, v1

    iget-object v3, p0, LHB;->a:Llu;

    iget-object v4, p0, LHB;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, LHA;->a(Llu;Ljava/lang/String;)LnL;

    move-result-object v2

    .line 140
    aget-object v3, p1, v1

    iget-object v4, p0, LHB;->a:Llu;

    iget-object v5, p0, LHB;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, LHA;->a(Llu;Ljava/lang/String;)LnL;

    move-result-object v3

    .line 141
    invoke-virtual {v3, v2}, LnL;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    .line 143
    invoke-direct {p0, v1}, LHB;->a(I)V

    .line 138
    :cond_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_41
    move v0, v1

    .line 130
    goto :goto_d

    .line 148
    :cond_43
    :goto_43
    array-length v0, p1

    if-ge v1, v0, :cond_4c

    .line 149
    invoke-direct {p0, v1}, LHB;->a(I)V

    .line 148
    add-int/lit8 v1, v1, 0x1

    goto :goto_43

    .line 153
    :cond_4c
    iput-object p1, p0, LHB;->a:[LHA;

    .line 154
    return-void
.end method

.method protected bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 239
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/SimpleCursorTreeAdapter;->bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 241
    sget-object v0, LMk;->n:LMk;

    invoke-virtual {v0}, LMk;->a()LLV;

    move-result-object v0

    invoke-virtual {v0, p3}, LLV;->a(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    .line 243
    sget-object v0, LMk;->j:LMk;

    invoke-virtual {v0}, LMk;->a()LLV;

    move-result-object v0

    invoke-virtual {v0, p3}, LLV;->a(Landroid/database/Cursor;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 244
    if-eqz v0, :cond_2a

    .line 245
    sget v0, LcS;->folder_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 246
    sget v2, LcR;->ic_type_folder_shared:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 249
    :cond_2a
    new-instance v0, LhX;

    invoke-direct {v0}, LhX;-><init>()V

    iget-object v2, p0, LHB;->a:LhM;

    iget-object v3, p0, LHB;->a:Ljava/lang/String;

    invoke-interface {v2, v1, v3}, LhM;->a(Ljava/lang/String;Ljava/lang/String;)LhK;

    move-result-object v1

    invoke-virtual {v0, v1}, LhX;->a(LhK;)LhX;

    move-result-object v0

    invoke-virtual {v0}, LhX;->a()LhW;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 252
    invoke-virtual {p0, p1}, LHB;->a(Landroid/view/View;)V

    .line 253
    return-void
.end method

.method protected bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 172
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/SimpleCursorTreeAdapter;->bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 174
    const-string v0, "_id"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 175
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 176
    add-int/lit8 v4, v0, -0x1

    .line 177
    iget-object v0, p0, LHB;->a:[LHA;

    aget-object v6, v0, v4

    .line 179
    sget v0, LcS;->group_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 180
    invoke-virtual {v6}, LHA;->a()I

    move-result v7

    .line 181
    if-lez v7, :cond_4e

    .line 182
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 183
    if-eqz p4, :cond_da

    new-array v1, v5, [I

    const v9, 0x10100a8

    aput v9, v1, v2

    :goto_36
    invoke-virtual {v8, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 189
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 192
    invoke-virtual {v6}, LHA;->b()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 193
    new-instance v1, LHC;

    invoke-direct {v1, p0, v4, v6}, LHC;-><init>(LHB;ILHA;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    :cond_4e
    if-lez v7, :cond_dd

    move v1, v2

    :goto_51
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 203
    sget v1, LcS;->pin_old:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 204
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v7, LcY;->navigation_pinned:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 206
    iget-object v7, p0, LHB;->a:Llu;

    iget-object v8, p0, LHB;->a:Ljava/lang/String;

    invoke-interface {v7, v8}, Llu;->b(Ljava/lang/String;)LkG;

    move-result-object v7

    .line 207
    invoke-virtual {v6}, LHA;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e6

    .line 208
    iget-boolean v4, p0, LHB;->a:Z

    if-nez v4, :cond_e0

    iget-object v4, p0, LHB;->a:LVo;

    invoke-virtual {v4, v7, v2}, LVo;->a(LkG;Z)Z

    move-result v4

    if-eqz v4, :cond_e0

    move v4, v5

    .line 211
    :goto_85
    if-eqz v4, :cond_e2

    move v4, v2

    :goto_88
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 213
    sget v1, LcS;->name:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-boolean v4, p0, LHB;->a:Z

    if-nez v4, :cond_e4

    :goto_95
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 214
    iget-boolean v1, p0, LHB;->a:Z

    if-eqz v1, :cond_b4

    .line 215
    sget v1, LcS;->group_icon:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 216
    const/high16 v2, 0x4120

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v5, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    .line 218
    invoke-static {v1, v2}, LabE;->a(Landroid/view/View;I)V

    .line 221
    :cond_b4
    iget-object v1, p0, LHB;->a:Ljava/lang/String;

    iget-object v2, p0, LHB;->a:LhM;

    invoke-virtual {v6, v1, v2}, LHA;->a(Ljava/lang/String;LhM;)LhW;

    move-result-object v1

    .line 224
    invoke-interface {v1}, LhW;->c()Ljava/lang/String;

    move-result-object v2

    .line 225
    if-eqz v2, :cond_d3

    .line 226
    iget-object v3, p0, LHB;->a:Llu;

    invoke-interface {v3, v7, v2}, Llu;->a(LkG;Ljava/lang/String;)LkM;

    move-result-object v2

    .line 227
    invoke-virtual {v2}, LkM;->d()Z

    move-result v2

    if-eqz v2, :cond_d3

    .line 228
    sget v2, LcR;->ic_type_folder_shared:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 232
    :cond_d3
    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 234
    invoke-virtual {p0, p1}, LHB;->a(Landroid/view/View;)V

    .line 235
    return-void

    .line 183
    :cond_da
    const/4 v1, 0x0

    goto/16 :goto_36

    :cond_dd
    move v1, v3

    .line 201
    goto/16 :goto_51

    :cond_e0
    move v4, v2

    .line 208
    goto :goto_85

    :cond_e2
    move v4, v3

    .line 211
    goto :goto_88

    :cond_e4
    move v2, v3

    .line 213
    goto :goto_95

    :cond_e6
    move v4, v2

    goto :goto_85
.end method

.method protected getChildrenCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 5
    .parameter

    .prologue
    .line 159
    iget-object v0, p0, LHB;->a:[LHA;

    if-nez v0, :cond_7

    .line 160
    sget-object v0, LHB;->a:Landroid/database/Cursor;

    .line 167
    :goto_6
    return-object v0

    .line 163
    :cond_7
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 164
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 165
    iget-object v1, p0, LHB;->a:[LHA;

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    .line 167
    iget-object v1, p0, LHB;->a:Llu;

    iget-object v2, p0, LHB;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LHA;->a(Llu;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_6
.end method
