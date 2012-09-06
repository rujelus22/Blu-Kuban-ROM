.class public LQI;
.super Landroid/widget/ArrayAdapter;
.source "SingleTokenContactFilterAdapter.java"


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
.field private a:Landroid/widget/Filter;

.field private final a:[LQK;


# direct methods
.method public constructor <init>(Landroid/content/Context;[LPh;)V
    .registers 15
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 165
    sget v0, LcU;->add_collaborator_list_item:I

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 168
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 169
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 170
    array-length v5, p2

    move v1, v2

    :goto_12
    if-ge v1, v5, :cond_20

    aget-object v6, p2, v1

    .line 172
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 194
    :cond_20
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LPb;

    .line 195
    invoke-virtual {p0, v0}, LQI;->add(Ljava/lang/Object;)V

    goto :goto_24

    .line 176
    :cond_34
    invoke-interface {v6}, LPh;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v7, " "

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 177
    invoke-interface {v6}, LPh;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_87

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 178
    new-instance v9, LPb;

    invoke-interface {v6}, LPh;->b()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v0}, LPb;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 186
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_72
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 188
    new-instance v11, LQK;

    invoke-direct {v11, v0, v9}, LQK;-><init>(Ljava/lang/String;LPb;)V

    .line 189
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_72

    .line 170
    :cond_87
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_12

    .line 199
    :cond_8b
    new-array v0, v2, [LQK;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LQK;

    iput-object v0, p0, LQI;->a:[LQK;

    .line 200
    iget-object v0, p0, LQI;->a:[LQK;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 201
    return-void
.end method

.method private a(LPb;)Landroid/text/SpannableStringBuilder;
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 223
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 225
    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {p1}, LPb;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 226
    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v3

    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 228
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 229
    const-string v1, "  "

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 230
    invoke-virtual {p1}, LPb;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 231
    return-object v0
.end method

.method static synthetic a(LQI;)[LQK;
    .registers 2
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, LQI;->a:[LQK;

    return-object v0
.end method


# virtual methods
.method public getFilter()Landroid/widget/Filter;
    .registers 3

    .prologue
    .line 205
    iget-object v0, p0, LQI;->a:Landroid/widget/Filter;

    if-nez v0, :cond_c

    .line 206
    new-instance v0, LQL;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LQL;-><init>(LQI;LQJ;)V

    iput-object v0, p0, LQI;->a:Landroid/widget/Filter;

    .line 208
    :cond_c
    iget-object v0, p0, LQI;->a:Landroid/widget/Filter;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 213
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    .line 214
    check-cast v0, Landroid/widget/TextView;

    .line 216
    invoke-virtual {p0, p1}, LQI;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LPb;

    invoke-direct {p0, v2}, LQI;->a(LPb;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    .line 218
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    return-object v1
.end method
