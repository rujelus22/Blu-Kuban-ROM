.class public LPe;
.super Landroid/widget/ArrayAdapter;
.source "ContactFilterAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "LPb;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:LZX;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LZX",
            "<",
            "LPb;",
            ">;"
        }
    .end annotation
.end field

.field private a:Landroid/widget/Filter;


# direct methods
.method public constructor <init>(Landroid/content/Context;LZX;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "LZX",
            "<",
            "LPb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 157
    sget v0, LcU;->add_collaborator_list_item:I

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 159
    iput-object p2, p0, LPe;->a:LZX;

    .line 160
    return-void
.end method

.method static synthetic a(LPe;)LZX;
    .registers 2
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, LPe;->a:LZX;

    return-object v0
.end method

.method public static a(Ljava/util/List;)LZX;
    .registers 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LPh;",
            ">;)",
            "LZX",
            "<",
            "LPb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 167
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 168
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LPh;

    .line 170
    invoke-static {}, Lcg;->b()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 230
    :cond_20
    invoke-static {v4}, LZX;->a(Ljava/util/List;)LZX;

    move-result-object v0

    return-object v0

    .line 174
    :cond_25
    invoke-interface {v0}, LPh;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LPe;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 175
    invoke-interface {v0}, LPh;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_39
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 176
    new-instance v9, LPb;

    invoke-interface {v0}, LPh;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v2, v1}, LPb;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 181
    new-instance v2, Landroid/util/Pair;

    const-string v3, ""

    invoke-direct {v2, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_76

    .line 185
    new-instance v2, Landroid/util/Pair;

    const/4 v3, 0x0

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v11, ""

    invoke-direct {v2, v3, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    :cond_76
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_94

    .line 190
    new-instance v2, Landroid/util/Pair;

    const/4 v3, 0x0

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-direct {v2, v3, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    :cond_94
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_107

    .line 201
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    const/4 v2, 0x0

    move v3, v2

    :goto_a2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v3, v2, :cond_be

    .line 203
    if-lez v3, :cond_b1

    .line 204
    const-string v2, " "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    :cond_b1
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_a2

    .line 208
    :cond_be
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    const/4 v2, 0x1

    move v3, v2

    :goto_c5
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_e0

    .line 210
    const/4 v2, 0x1

    if-le v3, v2, :cond_d3

    .line 211
    const-string v2, " "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    :cond_d3
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_c5

    .line 215
    :cond_e0
    new-instance v2, Landroid/util/Pair;

    const/4 v3, 0x0

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v2, v3, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    new-instance v2, Landroid/util/Pair;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-direct {v2, v3, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    :cond_107
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 221
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_113
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 223
    const/4 v2, 0x2

    new-array v10, v2, [Ljava/lang/String;

    const/4 v11, 0x0

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    aput-object v2, v10, v11

    const/4 v2, 0x1

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    aput-object v1, v10, v2

    invoke-static {v9, v10}, LZZ;->a(Ljava/lang/Object;[Ljava/lang/String;)LZZ;

    move-result-object v1

    .line 225
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_113
.end method

.method private a(LPb;)Landroid/text/SpannableStringBuilder;
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 253
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 255
    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {p1}, LPb;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 256
    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v3

    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 258
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 259
    const-string v1, "  "

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 260
    invoke-virtual {p1}, LPb;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 261
    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 36
    invoke-static {p0}, LPe;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 266
    sget-object v0, Lafl;->a:Lafl;

    invoke-static {v0}, LafR;->a(Lafl;)LafR;

    move-result-object v0

    invoke-virtual {v0}, LafR;->a()LafR;

    move-result-object v0

    invoke-virtual {v0, p0}, LafR;->a(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v0

    .line 268
    invoke-static {v0}, LaiA;->a(Ljava/lang/Iterable;)LaiA;

    move-result-object v0

    .line 269
    return-object v0
.end method


# virtual methods
.method public getFilter()Landroid/widget/Filter;
    .registers 3

    .prologue
    .line 235
    iget-object v0, p0, LPe;->a:Landroid/widget/Filter;

    if-nez v0, :cond_c

    .line 236
    new-instance v0, LPg;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LPg;-><init>(LPe;LPf;)V

    iput-object v0, p0, LPe;->a:Landroid/widget/Filter;

    .line 238
    :cond_c
    iget-object v0, p0, LPe;->a:Landroid/widget/Filter;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 243
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    .line 244
    check-cast v0, Landroid/widget/TextView;

    .line 246
    invoke-virtual {p0, p1}, LPe;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LPb;

    invoke-direct {p0, v2}, LPe;->a(LPb;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    .line 248
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    return-object v1
.end method
