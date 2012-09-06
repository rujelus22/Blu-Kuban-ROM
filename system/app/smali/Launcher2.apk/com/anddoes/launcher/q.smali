.class final Lcom/anddoes/launcher/q;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field a:Landroid/util/SparseBooleanArray;

.field final synthetic b:Lcom/anddoes/launcher/AppPickerActivity;


# direct methods
.method public constructor <init>(Lcom/anddoes/launcher/AppPickerActivity;)V
    .registers 4
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/anddoes/launcher/q;->b:Lcom/anddoes/launcher/AppPickerActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 203
    invoke-static {p1}, Lcom/anddoes/launcher/AppPickerActivity;->a(Lcom/anddoes/launcher/AppPickerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 204
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1, v0}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v1, p0, Lcom/anddoes/launcher/q;->a:Landroid/util/SparseBooleanArray;

    .line 205
    return-void
.end method

.method static synthetic a(Lcom/anddoes/launcher/q;)Lcom/anddoes/launcher/AppPickerActivity;
    .registers 2
    .parameter

    .prologue
    .line 198
    iget-object v0, p0, Lcom/anddoes/launcher/q;->b:Lcom/anddoes/launcher/AppPickerActivity;

    return-object v0
.end method

.method private a(I)Lcom/anddoes/launcher/y;
    .registers 3
    .parameter

    .prologue
    .line 212
    iget-object v0, p0, Lcom/anddoes/launcher/q;->b:Lcom/anddoes/launcher/AppPickerActivity;

    invoke-static {v0}, Lcom/anddoes/launcher/AppPickerActivity;->a(Lcom/anddoes/launcher/AppPickerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 213
    if-ltz p1, :cond_e

    if-lt p1, v0, :cond_10

    .line 214
    :cond_e
    const/4 v0, 0x0

    .line 216
    :goto_f
    return-object v0

    :cond_10
    iget-object v0, p0, Lcom/anddoes/launcher/q;->b:Lcom/anddoes/launcher/AppPickerActivity;

    invoke-static {v0}, Lcom/anddoes/launcher/AppPickerActivity;->a(Lcom/anddoes/launcher/AppPickerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/y;

    goto :goto_f
.end method


# virtual methods
.method public final getCount()I
    .registers 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/anddoes/launcher/q;->b:Lcom/anddoes/launcher/AppPickerActivity;

    invoke-static {v0}, Lcom/anddoes/launcher/AppPickerActivity;->a(Lcom/anddoes/launcher/AppPickerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/q;->a(I)Lcom/anddoes/launcher/y;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .registers 4
    .parameter

    .prologue
    .line 220
    iget-object v0, p0, Lcom/anddoes/launcher/q;->b:Lcom/anddoes/launcher/AppPickerActivity;

    invoke-static {v0}, Lcom/anddoes/launcher/AppPickerActivity;->a(Lcom/anddoes/launcher/AppPickerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 221
    if-ltz p1, :cond_e

    if-lt p1, v0, :cond_18

    .line 222
    :cond_e
    const-string v0, "AppPickerActivity"

    const-string v1, "Position out of bounds in List Adapter"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const-wide/16 v0, -0x1

    .line 225
    :goto_17
    return-wide v0

    :cond_18
    int-to-long v0, p1

    goto :goto_17
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 229
    iget-object v0, p0, Lcom/anddoes/launcher/q;->b:Lcom/anddoes/launcher/AppPickerActivity;

    invoke-static {v0}, Lcom/anddoes/launcher/AppPickerActivity;->a(Lcom/anddoes/launcher/AppPickerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_38

    .line 230
    const-string v0, "AppPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid view position: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", actual size is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/anddoes/launcher/q;->b:Lcom/anddoes/launcher/AppPickerActivity;

    invoke-static {v2}, Lcom/anddoes/launcher/AppPickerActivity;->a(Lcom/anddoes/launcher/AppPickerActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const/4 p2, 0x0

    .line 275
    :cond_37
    :goto_37
    return-object p2

    .line 234
    :cond_38
    if-nez p2, :cond_d0

    .line 236
    iget-object v0, p0, Lcom/anddoes/launcher/q;->b:Lcom/anddoes/launcher/AppPickerActivity;

    invoke-static {v0}, Lcom/anddoes/launcher/AppPickerActivity;->b(Lcom/anddoes/launcher/AppPickerActivity;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030006

    invoke-virtual {v0, v1, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 237
    new-instance v0, Lcom/anddoes/launcher/s;

    invoke-direct {v0, p0, p2}, Lcom/anddoes/launcher/s;-><init>(Lcom/anddoes/launcher/q;Landroid/view/View;)V

    .line 238
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v0

    .line 243
    :goto_50
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/q;->a(I)Lcom/anddoes/launcher/y;

    move-result-object v2

    .line 244
    if-eqz v2, :cond_37

    .line 245
    iget-object v0, v1, Lcom/anddoes/launcher/s;->b:Landroid/widget/ImageView;

    if-nez v0, :cond_67

    iget-object v0, v1, Lcom/anddoes/launcher/s;->a:Landroid/view/View;

    const v3, 0x7f080004

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/anddoes/launcher/s;->b:Landroid/widget/ImageView;

    :cond_67
    iget-object v0, v1, Lcom/anddoes/launcher/s;->b:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/anddoes/launcher/q;->b:Lcom/anddoes/launcher/AppPickerActivity;

    invoke-static {v3}, Lcom/anddoes/launcher/AppPickerActivity;->c(Lcom/anddoes/launcher/AppPickerActivity;)Lcom/anddoes/launcher/ds;

    move-result-object v3

    iget-object v4, v2, Lcom/anddoes/launcher/y;->c:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Lcom/anddoes/launcher/ds;->a(Landroid/content/Intent;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 246
    iget-object v0, v1, Lcom/anddoes/launcher/s;->c:Landroid/widget/TextView;

    if-nez v0, :cond_89

    iget-object v0, v1, Lcom/anddoes/launcher/s;->a:Landroid/view/View;

    const v3, 0x7f080005

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/anddoes/launcher/s;->c:Landroid/widget/TextView;

    :cond_89
    iget-object v0, v1, Lcom/anddoes/launcher/s;->c:Landroid/widget/TextView;

    iget-object v3, v2, Lcom/anddoes/launcher/y;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v0, p0, Lcom/anddoes/launcher/q;->b:Lcom/anddoes/launcher/AppPickerActivity;

    invoke-static {v0}, Lcom/anddoes/launcher/AppPickerActivity;->d(Lcom/anddoes/launcher/AppPickerActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d9

    .line 248
    iget-object v0, p0, Lcom/anddoes/launcher/q;->b:Lcom/anddoes/launcher/AppPickerActivity;

    invoke-static {v0}, Lcom/anddoes/launcher/AppPickerActivity;->d(Lcom/anddoes/launcher/AppPickerActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/anddoes/launcher/y;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d9

    .line 249
    iget-object v0, p0, Lcom/anddoes/launcher/q;->a:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 250
    iget-object v0, p0, Lcom/anddoes/launcher/q;->b:Lcom/anddoes/launcher/AppPickerActivity;

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/anddoes/launcher/AppPickerActivity;->a(Lcom/anddoes/launcher/AppPickerActivity;Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/anddoes/launcher/q;->b:Lcom/anddoes/launcher/AppPickerActivity;

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/anddoes/launcher/AppPickerActivity;->b(Lcom/anddoes/launcher/AppPickerActivity;Ljava/lang/String;)V

    .line 252
    invoke-virtual {v1}, Lcom/anddoes/launcher/s;->a()Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 268
    :goto_c2
    invoke-virtual {v1}, Lcom/anddoes/launcher/s;->a()Landroid/widget/RadioButton;

    move-result-object v0

    new-instance v1, Lcom/anddoes/launcher/r;

    invoke-direct {v1, p0, p1}, Lcom/anddoes/launcher/r;-><init>(Lcom/anddoes/launcher/q;I)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_37

    .line 240
    :cond_d0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/s;

    move-object v1, v0

    goto/16 :goto_50

    .line 253
    :cond_d9
    iget-object v0, p0, Lcom/anddoes/launcher/q;->b:Lcom/anddoes/launcher/AppPickerActivity;

    invoke-static {v0}, Lcom/anddoes/launcher/AppPickerActivity;->e(Lcom/anddoes/launcher/AppPickerActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13a

    iget-object v0, p0, Lcom/anddoes/launcher/q;->b:Lcom/anddoes/launcher/AppPickerActivity;

    invoke-static {v0}, Lcom/anddoes/launcher/AppPickerActivity;->f(Lcom/anddoes/launcher/AppPickerActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13a

    .line 254
    iget-object v0, v2, Lcom/anddoes/launcher/y;->f:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/anddoes/launcher/q;->b:Lcom/anddoes/launcher/AppPickerActivity;

    invoke-static {v3}, Lcom/anddoes/launcher/AppPickerActivity;->e(Lcom/anddoes/launcher/AppPickerActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13a

    .line 255
    iget-object v0, v2, Lcom/anddoes/launcher/y;->f:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/anddoes/launcher/q;->b:Lcom/anddoes/launcher/AppPickerActivity;

    invoke-static {v3}, Lcom/anddoes/launcher/AppPickerActivity;->f(Lcom/anddoes/launcher/AppPickerActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13a

    .line 256
    iget-object v0, p0, Lcom/anddoes/launcher/q;->b:Lcom/anddoes/launcher/AppPickerActivity;

    invoke-virtual {v2}, Lcom/anddoes/launcher/y;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/anddoes/launcher/AppPickerActivity;->c(Lcom/anddoes/launcher/AppPickerActivity;Ljava/lang/String;)V

    .line 257
    iget-object v0, v2, Lcom/anddoes/launcher/y;->c:Landroid/content/Intent;

    if-eqz v0, :cond_132

    .line 258
    iget-object v0, p0, Lcom/anddoes/launcher/q;->b:Lcom/anddoes/launcher/AppPickerActivity;

    iget-object v2, v2, Lcom/anddoes/launcher/y;->c:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/anddoes/launcher/AppPickerActivity;->d(Lcom/anddoes/launcher/AppPickerActivity;Ljava/lang/String;)V

    .line 262
    :goto_125
    iget-object v0, p0, Lcom/anddoes/launcher/q;->a:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 263
    invoke-virtual {v1}, Lcom/anddoes/launcher/s;->a()Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_c2

    .line 260
    :cond_132
    iget-object v0, p0, Lcom/anddoes/launcher/q;->b:Lcom/anddoes/launcher/AppPickerActivity;

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/anddoes/launcher/AppPickerActivity;->d(Lcom/anddoes/launcher/AppPickerActivity;Ljava/lang/String;)V

    goto :goto_125

    .line 265
    :cond_13a
    iget-object v0, p0, Lcom/anddoes/launcher/q;->a:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 266
    invoke-virtual {v1}, Lcom/anddoes/launcher/s;->a()Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_c2
.end method
