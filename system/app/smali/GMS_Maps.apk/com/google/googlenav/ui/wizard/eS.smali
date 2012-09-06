.class public final Lcom/google/googlenav/ui/wizard/es;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/eq;

.field private b:I

.field private c:I


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/wizard/eq;Landroid/content/Context;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 181
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/es;->a:Lcom/google/googlenav/ui/wizard/eq;

    .line 182
    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 178
    iput v0, p0, Lcom/google/googlenav/ui/wizard/es;->b:I

    .line 179
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/googlenav/ui/wizard/es;->c:I

    .line 183
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/wizard/eq;Landroid/content/Context;Lcom/google/googlenav/ui/wizard/er;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 176
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/wizard/es;-><init>(Lcom/google/googlenav/ui/wizard/eq;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getItemViewType(I)I
    .registers 3
    .parameter

    .prologue
    .line 247
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/wizard/es;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/google/googlenav/ui/wizard/es;->b:I

    :goto_a
    return v0

    :cond_b
    iget v0, p0, Lcom/google/googlenav/ui/wizard/es;->c:I

    goto :goto_a
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 189
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/es;->a:Lcom/google/googlenav/ui/wizard/eq;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/eq;->c(Lcom/google/googlenav/ui/wizard/eq;)Lcom/google/googlenav/ui/wizard/es;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/es;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 190
    instance-of v5, v1, Ljava/lang/String;

    .line 192
    if-nez p2, :cond_61

    .line 194
    if-eqz v5, :cond_4a

    .line 195
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/es;->a:Lcom/google/googlenav/ui/wizard/eq;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/eq;->a(Lcom/google/googlenav/ui/wizard/eq;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f040186

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 196
    const v0, 0x7f100404

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 202
    :goto_28
    new-instance v4, Lcom/google/googlenav/ui/wizard/ev;

    invoke-direct {v4, v6}, Lcom/google/googlenav/ui/wizard/ev;-><init>(Lcom/google/googlenav/ui/wizard/er;)V

    .line 203
    iput-object v0, v4, Lcom/google/googlenav/ui/wizard/ev;->a:Landroid/widget/TextView;

    .line 204
    invoke-virtual {v2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object p2, v2

    move-object v2, v4

    .line 209
    :goto_34
    if-eqz v5, :cond_69

    .line 210
    iget-object v3, v2, Lcom/google/googlenav/ui/wizard/ev;->a:Landroid/widget/TextView;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/google/googlenav/ui/aV;->v:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v0, v2, Lcom/google/googlenav/ui/wizard/ev;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    :goto_49
    return-object p2

    .line 198
    :cond_4a
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/es;->a:Lcom/google/googlenav/ui/wizard/eq;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/eq;->a(Lcom/google/googlenav/ui/wizard/eq;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f040185

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 199
    const v0, 0x7f100403

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_28

    .line 206
    :cond_61
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/wizard/ev;

    move-object v2, v0

    goto :goto_34

    .line 214
    :cond_69
    check-cast v1, Law/c;

    .line 216
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 217
    invoke-virtual {v1}, Law/c;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/google/googlenav/ui/aV;->t:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v5}, Lcom/google/googlenav/ui/aW;->b(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    invoke-virtual {v1}, Law/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b6

    .line 220
    invoke-virtual {v1}, Law/c;->c()Ljava/lang/String;

    move-result-object v0

    const-string v5, "\n"

    invoke-static {v0, v5}, Laa/b;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 221
    array-length v6, v5

    move v0, v3

    :goto_93
    if-ge v0, v6, :cond_b6

    aget-object v3, v5, v0

    .line 222
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v7, Lcom/google/googlenav/ui/aV;->v:Lcom/google/googlenav/ui/aV;

    invoke-static {v3, v7}, Lcom/google/googlenav/ui/aW;->b(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    add-int/lit8 v0, v0, 0x1

    goto :goto_93

    .line 226
    :cond_b6
    iget-object v0, v2, Lcom/google/googlenav/ui/wizard/ev;->a:Landroid/widget/TextView;

    invoke-static {v0, v4}, Lcom/google/googlenav/ui/bn;->a(Landroid/widget/TextView;Ljava/util/List;)V

    .line 227
    iget-object v0, v2, Lcom/google/googlenav/ui/wizard/ev;->a:Landroid/widget/TextView;

    new-instance v2, Lcom/google/googlenav/ui/wizard/et;

    invoke-direct {v2, p0, v1}, Lcom/google/googlenav/ui/wizard/et;-><init>(Lcom/google/googlenav/ui/wizard/es;Law/c;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_49
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 242
    const/4 v0, 0x2

    return v0
.end method
