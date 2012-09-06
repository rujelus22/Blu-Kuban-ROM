.class final Lcom/anddoes/launcher/kq;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/anddoes/launcher/ui/d;
.implements Lcom/anddoes/launcher/ui/e;


# instance fields
.field public a:Ljava/util/List;

.field final synthetic b:Lcom/anddoes/launcher/TabConfigActivity;

.field private c:I


# direct methods
.method public constructor <init>(Lcom/anddoes/launcher/TabConfigActivity;)V
    .registers 3
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/anddoes/launcher/kq;->b:Lcom/anddoes/launcher/TabConfigActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 187
    const/4 v0, -0x1

    iput v0, p0, Lcom/anddoes/launcher/kq;->c:I

    .line 190
    invoke-static {p1}, Lcom/anddoes/launcher/TabConfigActivity;->a(Lcom/anddoes/launcher/TabConfigActivity;)Lcom/anddoes/launcher/preference/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/c;->e()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/kq;->a:Ljava/util/List;

    .line 191
    return-void
.end method

.method static synthetic a(Lcom/anddoes/launcher/kq;)Lcom/anddoes/launcher/TabConfigActivity;
    .registers 2
    .parameter

    .prologue
    .line 184
    iget-object v0, p0, Lcom/anddoes/launcher/kq;->b:Lcom/anddoes/launcher/TabConfigActivity;

    return-object v0
.end method


# virtual methods
.method public final a(II)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 278
    const/4 v0, -0x1

    iput v0, p0, Lcom/anddoes/launcher/kq;->c:I

    .line 279
    invoke-virtual {p0}, Lcom/anddoes/launcher/kq;->notifyDataSetChanged()V

    .line 282
    if-eq p1, p2, :cond_3e

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 284
    iget-object v0, p0, Lcom/anddoes/launcher/kq;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 288
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 289
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2e

    .line 290
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 292
    :cond_2e
    iget-object v1, p0, Lcom/anddoes/launcher/kq;->b:Lcom/anddoes/launcher/TabConfigActivity;

    invoke-static {v1}, Lcom/anddoes/launcher/TabConfigActivity;->a(Lcom/anddoes/launcher/TabConfigActivity;)Lcom/anddoes/launcher/preference/c;

    move-result-object v1

    const-string v2, "all_groups"

    invoke-virtual {v1, v2, v0}, Lcom/anddoes/launcher/preference/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/anddoes/launcher/kq;->b:Lcom/anddoes/launcher/TabConfigActivity;

    invoke-static {v0}, Lcom/anddoes/launcher/TabConfigActivity;->c(Lcom/anddoes/launcher/TabConfigActivity;)V

    .line 295
    :cond_3e
    return-void

    .line 284
    :cond_3f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/ca;

    .line 285
    iget-object v0, v0, Lcom/anddoes/launcher/ca;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    const-string v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 222
    iget-object v0, p0, Lcom/anddoes/launcher/kq;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/anddoes/launcher/kq;->b:Lcom/anddoes/launcher/TabConfigActivity;

    invoke-static {v1}, Lcom/anddoes/launcher/TabConfigActivity;->a(Lcom/anddoes/launcher/TabConfigActivity;)Lcom/anddoes/launcher/preference/c;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/anddoes/launcher/preference/c;->c(Ljava/lang/String;)Lcom/anddoes/launcher/ca;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    invoke-virtual {p0}, Lcom/anddoes/launcher/kq;->notifyDataSetChanged()V

    .line 224
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 194
    iget-object v0, p0, Lcom/anddoes/launcher/kq;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_10

    .line 200
    :goto_c
    invoke-virtual {p0}, Lcom/anddoes/launcher/kq;->notifyDataSetChanged()V

    .line 201
    return-void

    .line 194
    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/ca;

    .line 195
    iget-object v2, v0, Lcom/anddoes/launcher/ca;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 196
    iput-object p2, v0, Lcom/anddoes/launcher/ca;->b:Ljava/lang/String;

    goto :goto_c
.end method

.method public final b(II)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 299
    iput p2, p0, Lcom/anddoes/launcher/kq;->c:I

    .line 300
    if-ltz p1, :cond_2b

    iget-object v0, p0, Lcom/anddoes/launcher/kq;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p1, v0, :cond_2b

    if-ltz p2, :cond_2b

    iget-object v0, p0, Lcom/anddoes/launcher/kq;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p2, v0, :cond_2b

    iget-object v0, p0, Lcom/anddoes/launcher/kq;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/ca;

    iget-object v1, p0, Lcom/anddoes/launcher/kq;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/anddoes/launcher/kq;->a:Ljava/util/List;

    invoke-interface {v1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/anddoes/launcher/kq;->notifyDataSetChanged()V

    .line 301
    :cond_2b
    return-void
.end method

.method public final getCount()I
    .registers 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/anddoes/launcher/kq;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 210
    if-ltz p1, :cond_8

    invoke-virtual {p0}, Lcom/anddoes/launcher/kq;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_a

    .line 211
    :cond_8
    const/4 v0, 0x0

    .line 213
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/anddoes/launcher/kq;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_9
.end method

.method public final getItemId(I)J
    .registers 4
    .parameter

    .prologue
    .line 218
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 228
    if-ltz p1, :cond_b

    invoke-virtual {p0}, Lcom/anddoes/launcher/kq;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_d

    .line 229
    :cond_b
    const/4 p2, 0x0

    .line 267
    :goto_c
    return-object p2

    .line 232
    :cond_d
    iget-object v0, p0, Lcom/anddoes/launcher/kq;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/ca;

    .line 234
    if-nez p2, :cond_6f

    .line 235
    new-instance v2, Lcom/anddoes/launcher/ks;

    invoke-direct {v2, p0, v4}, Lcom/anddoes/launcher/ks;-><init>(Lcom/anddoes/launcher/kq;B)V

    .line 236
    iget-object v1, p0, Lcom/anddoes/launcher/kq;->b:Lcom/anddoes/launcher/TabConfigActivity;

    invoke-static {v1}, Lcom/anddoes/launcher/TabConfigActivity;->b(Lcom/anddoes/launcher/TabConfigActivity;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f030029

    invoke-virtual {v1, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 237
    const v1, 0x7f080003

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/anddoes/launcher/ks;->a:Landroid/widget/TextView;

    .line 238
    const v1, 0x7f080060

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/anddoes/launcher/ks;->b:Landroid/widget/ImageView;

    .line 239
    const v1, 0x7f08005f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/anddoes/launcher/ks;->c:Landroid/widget/ImageView;

    .line 240
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    .line 246
    :goto_4e
    iget-object v2, v1, Lcom/anddoes/launcher/ks;->a:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/anddoes/launcher/ca;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget v0, p0, Lcom/anddoes/launcher/kq;->c:I

    if-ne p1, v0, :cond_76

    .line 248
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 252
    :goto_5d
    invoke-virtual {p0}, Lcom/anddoes/launcher/kq;->getCount()I

    move-result v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_7a

    .line 253
    iget-object v0, v1, Lcom/anddoes/launcher/ks;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 266
    :goto_69
    iget-object v0, v1, Lcom/anddoes/launcher/ks;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_c

    .line 243
    :cond_6f
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anddoes/launcher/ks;

    goto :goto_4e

    .line 250
    :cond_76
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5d

    .line 255
    :cond_7a
    iget-object v0, v1, Lcom/anddoes/launcher/ks;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 256
    iget-object v0, v1, Lcom/anddoes/launcher/ks;->b:Landroid/widget/ImageView;

    const v2, 0x108003c

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 257
    iget-object v0, v1, Lcom/anddoes/launcher/ks;->b:Landroid/widget/ImageView;

    new-instance v2, Lcom/anddoes/launcher/kr;

    invoke-direct {v2, p0, p1}, Lcom/anddoes/launcher/kr;-><init>(Lcom/anddoes/launcher/kq;I)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_69
.end method
