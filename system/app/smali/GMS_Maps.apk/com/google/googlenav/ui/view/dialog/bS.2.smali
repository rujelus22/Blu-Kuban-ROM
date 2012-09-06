.class final Lcom/google/googlenav/ui/view/dialog/bS;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/bO;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/view/dialog/bO;Landroid/content/Context;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/bS;->a:Lcom/google/googlenav/ui/view/dialog/bO;

    .line 223
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 224
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/view/dialog/bO;Landroid/content/Context;Lcom/google/googlenav/ui/view/dialog/bP;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 220
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/view/dialog/bS;-><init>(Lcom/google/googlenav/ui/view/dialog/bO;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v10, 0x3

    const/4 v9, 0x0

    const/16 v8, 0x8

    .line 230
    if-nez p2, :cond_f7

    .line 231
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bS;->a:Lcom/google/googlenav/ui/view/dialog/bO;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/bO;->c(Lcom/google/googlenav/ui/view/dialog/bO;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400db

    invoke-virtual {v0, v1, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 232
    new-instance v1, Lcom/google/googlenav/ui/view/dialog/cd;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/google/googlenav/ui/view/dialog/cd;-><init>(Lcom/google/googlenav/ui/view/dialog/bP;)V

    .line 233
    const v0, 0x7f100288

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/dialog/cd;->a:Landroid/widget/ImageView;

    .line 234
    const v0, 0x7f100191

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/dialog/cd;->b:Landroid/widget/TextView;

    .line 235
    const v0, 0x7f1001e0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/google/googlenav/ui/view/dialog/cd;->c:Landroid/view/View;

    .line 236
    const v0, 0x7f10028a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/dialog/cd;->e:Landroid/widget/TextView;

    .line 237
    const v0, 0x7f100289

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/dialog/cd;->d:Landroid/widget/TextView;

    .line 238
    const v0, 0x7f1001f5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/dialog/cd;->g:Landroid/widget/ProgressBar;

    .line 239
    const v0, 0x7f10028f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/dialog/cd;->h:Landroid/widget/ImageButton;

    .line 240
    const v0, 0x7f10028b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/google/googlenav/ui/view/dialog/cd;->i:Landroid/view/View;

    .line 241
    const v0, 0x7f10028d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/dialog/cd;->j:Landroid/widget/TextView;

    .line 242
    const v0, 0x7f10028c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/dialog/cd;->k:Landroid/widget/ImageView;

    .line 244
    const v0, 0x7f100290

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/dialog/cd;->l:Landroid/widget/ImageButton;

    .line 245
    const v0, 0x7f10028e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/dialog/cd;->f:Landroid/widget/TextView;

    .line 246
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 251
    :goto_9e
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bS;->a:Lcom/google/googlenav/ui/view/dialog/bO;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/bO;->b(Lcom/google/googlenav/ui/view/dialog/bO;)Lcom/google/googlenav/ui/view/dialog/bS;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/view/dialog/bS;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laz/f;

    .line 252
    invoke-virtual {p2, v9}, Landroid/view/View;->setClickable(Z)V

    .line 255
    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/bS;->a:Lcom/google/googlenav/ui/view/dialog/bO;

    invoke-static {v2}, Lcom/google/googlenav/ui/view/dialog/bO;->a(Lcom/google/googlenav/ui/view/dialog/bO;)Laz/f;

    move-result-object v2

    if-nez v2, :cond_ff

    if-nez p1, :cond_ff

    .line 256
    iget-object v0, v1, Lcom/google/googlenav/ui/view/dialog/cd;->a:Landroid/widget/ImageView;

    const v2, 0x7f0202cb

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 257
    iget-object v0, v1, Lcom/google/googlenav/ui/view/dialog/cd;->b:Landroid/widget/TextView;

    const/16 v2, 0x342

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/aV;->t:Lcom/google/googlenav/ui/aV;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v0, v1, Lcom/google/googlenav/ui/view/dialog/cd;->c:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 260
    iget-object v0, v1, Lcom/google/googlenav/ui/view/dialog/cd;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 261
    iget-object v0, v1, Lcom/google/googlenav/ui/view/dialog/cd;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 262
    iget-object v0, v1, Lcom/google/googlenav/ui/view/dialog/cd;->i:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 263
    iget-object v0, v1, Lcom/google/googlenav/ui/view/dialog/cd;->l:Landroid/widget/ImageButton;

    invoke-virtual {v0, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 264
    iget-object v0, v1, Lcom/google/googlenav/ui/view/dialog/cd;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 265
    new-instance v0, Lcom/google/googlenav/ui/view/dialog/bT;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/dialog/bT;-><init>(Lcom/google/googlenav/ui/view/dialog/bS;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 484
    :goto_f6
    return-object p2

    .line 248
    :cond_f7
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/dialog/cd;

    move-object v1, v0

    goto :goto_9e

    .line 281
    :cond_ff
    iget-object v2, v1, Lcom/google/googlenav/ui/view/dialog/cd;->a:Landroid/widget/ImageView;

    .line 282
    invoke-virtual {v0}, Laz/f;->h()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 283
    invoke-virtual {v0}, Laz/f;->h()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_191

    .line 284
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 303
    :goto_10e
    iget-object v2, v1, Lcom/google/googlenav/ui/view/dialog/cd;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Laz/f;->d()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/googlenav/ui/aV;->t:Lcom/google/googlenav/ui/aV;

    invoke-static {v3, v4}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/bS;->a:Lcom/google/googlenav/ui/view/dialog/bO;

    invoke-static {v2}, Lcom/google/googlenav/ui/view/dialog/bO;->a(Lcom/google/googlenav/ui/view/dialog/bO;)Laz/f;

    move-result-object v2

    if-eq v0, v2, :cond_213

    .line 307
    iget-object v2, v1, Lcom/google/googlenav/ui/view/dialog/cd;->c:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 308
    iget-object v2, v1, Lcom/google/googlenav/ui/view/dialog/cd;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 309
    iget-object v2, v1, Lcom/google/googlenav/ui/view/dialog/cd;->i:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 310
    iget-object v2, v1, Lcom/google/googlenav/ui/view/dialog/cd;->l:Landroid/widget/ImageButton;

    invoke-virtual {v2, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 311
    iget-object v2, v1, Lcom/google/googlenav/ui/view/dialog/cd;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 312
    const-string v3, ""

    .line 313
    const v2, 0x7f0f0035

    .line 314
    invoke-virtual {v0}, Laz/f;->a()I

    move-result v4

    if-ne v4, v10, :cond_1a0

    .line 316
    const/16 v2, 0x349

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 317
    const v2, 0x7f0f0036

    .line 350
    :cond_152
    :goto_152
    iget-object v4, v1, Lcom/google/googlenav/ui/view/dialog/cd;->f:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    iget-object v3, v1, Lcom/google/googlenav/ui/view/dialog/cd;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/bS;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 448
    :goto_160
    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/bS;->a:Lcom/google/googlenav/ui/view/dialog/bO;

    invoke-static {v2}, Lcom/google/googlenav/ui/view/dialog/bO;->a(Lcom/google/googlenav/ui/view/dialog/bO;)Laz/f;

    move-result-object v2

    if-ne v0, v2, :cond_178

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/bS;->a:Lcom/google/googlenav/ui/view/dialog/bO;

    invoke-static {v2}, Lcom/google/googlenav/ui/view/dialog/bO;->h(Lcom/google/googlenav/ui/view/dialog/bO;)I

    move-result v2

    if-eqz v2, :cond_178

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/bS;->a:Lcom/google/googlenav/ui/view/dialog/bO;

    invoke-static {v2}, Lcom/google/googlenav/ui/view/dialog/bO;->h(Lcom/google/googlenav/ui/view/dialog/bO;)I

    move-result v2

    if-ne v2, v10, :cond_327

    .line 451
    :cond_178
    iget-object v2, v1, Lcom/google/googlenav/ui/view/dialog/cd;->h:Landroid/widget/ImageButton;

    const v3, 0x7f0203d8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 452
    iget-object v2, v1, Lcom/google/googlenav/ui/view/dialog/cd;->h:Landroid/widget/ImageButton;

    invoke-virtual {v2, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 453
    iget-object v1, v1, Lcom/google/googlenav/ui/view/dialog/cd;->h:Landroid/widget/ImageButton;

    new-instance v2, Lcom/google/googlenav/ui/view/dialog/cb;

    invoke-direct {v2, p0, v0}, Lcom/google/googlenav/ui/view/dialog/cb;-><init>(Lcom/google/googlenav/ui/view/dialog/bS;Laz/f;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_f6

    .line 287
    :cond_191
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/google/googlenav/ui/view/dialog/bU;

    invoke-direct {v4, p0, v0, v2}, Lcom/google/googlenav/ui/view/dialog/bU;-><init>(Lcom/google/googlenav/ui/view/dialog/bS;Laz/f;Landroid/widget/ImageView;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_10e

    .line 318
    :cond_1a0
    invoke-virtual {v0}, Laz/f;->a()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1b1

    .line 320
    const/16 v2, 0x348

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 321
    const v2, 0x7f0f0036

    goto :goto_152

    .line 322
    :cond_1b1
    invoke-virtual {v0}, Laz/f;->a()I

    move-result v4

    if-nez v4, :cond_1f9

    .line 324
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/google/googlenav/ui/view/dialog/bS;->a:Lcom/google/googlenav/ui/view/dialog/bO;

    invoke-static {v4}, Lcom/google/googlenav/ui/view/dialog/bO;->f(Lcom/google/googlenav/ui/view/dialog/bO;)Ljava/text/DateFormat;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    invoke-virtual {v0}, Laz/f;->c()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Laz/f;->e()Lcom/google/googlenav/prefetch/android/y;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/googlenav/prefetch/android/y;->l()I

    move-result v4

    mul-int/lit8 v4, v4, 0xf

    invoke-static {v4}, Lcom/google/googlenav/ui/view/dialog/bO;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 330
    new-instance v4, Lcom/google/googlenav/ui/view/dialog/bW;

    invoke-direct {v4, p0, p1, v0}, Lcom/google/googlenav/ui/view/dialog/bW;-><init>(Lcom/google/googlenav/ui/view/dialog/bS;ILaz/f;)V

    invoke-virtual {p2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_152

    .line 339
    :cond_1f9
    invoke-virtual {v0}, Laz/f;->a()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_152

    .line 341
    const/16 v2, 0x33c

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 342
    const v2, 0x7f0f0037

    .line 343
    new-instance v4, Lcom/google/googlenav/ui/view/dialog/bX;

    invoke-direct {v4, p0, v0}, Lcom/google/googlenav/ui/view/dialog/bX;-><init>(Lcom/google/googlenav/ui/view/dialog/bS;Laz/f;)V

    invoke-virtual {p2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_152

    .line 353
    :cond_213
    iget-object v2, v1, Lcom/google/googlenav/ui/view/dialog/cd;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 354
    iget-object v2, v1, Lcom/google/googlenav/ui/view/dialog/cd;->i:Landroid/view/View;

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 355
    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/bS;->a:Lcom/google/googlenav/ui/view/dialog/bO;

    invoke-static {v2}, Lcom/google/googlenav/ui/view/dialog/bO;->h(Lcom/google/googlenav/ui/view/dialog/bO;)I

    move-result v2

    if-ne v2, v6, :cond_2d2

    .line 356
    iget-object v2, v1, Lcom/google/googlenav/ui/view/dialog/cd;->j:Landroid/widget/TextView;

    const/16 v3, 0x346

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    iget-object v2, v1, Lcom/google/googlenav/ui/view/dialog/cd;->k:Landroid/widget/ImageView;

    const v3, 0x7f0202db

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 367
    :goto_238
    iget-object v2, v1, Lcom/google/googlenav/ui/view/dialog/cd;->i:Landroid/view/View;

    new-instance v3, Lcom/google/googlenav/ui/view/dialog/bY;

    invoke-direct {v3, p0}, Lcom/google/googlenav/ui/view/dialog/bY;-><init>(Lcom/google/googlenav/ui/view/dialog/bS;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 395
    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/bS;->a:Lcom/google/googlenav/ui/view/dialog/bO;

    invoke-static {v2}, Lcom/google/googlenav/ui/view/dialog/bO;->h(Lcom/google/googlenav/ui/view/dialog/bO;)I

    move-result v2

    if-ne v2, v6, :cond_30a

    .line 396
    iget-object v2, v1, Lcom/google/googlenav/ui/view/dialog/cd;->l:Landroid/widget/ImageButton;

    const v3, 0x7f020188

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 397
    iget-object v2, v1, Lcom/google/googlenav/ui/view/dialog/cd;->l:Landroid/widget/ImageButton;

    invoke-virtual {v2, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 398
    iget-object v2, v1, Lcom/google/googlenav/ui/view/dialog/cd;->l:Landroid/widget/ImageButton;

    new-instance v3, Lcom/google/googlenav/ui/view/dialog/bZ;

    invoke-direct {v3, p0}, Lcom/google/googlenav/ui/view/dialog/bZ;-><init>(Lcom/google/googlenav/ui/view/dialog/bS;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 424
    :goto_261
    iget-object v2, v1, Lcom/google/googlenav/ui/view/dialog/cd;->c:Landroid/view/View;

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 425
    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/bS;->a:Lcom/google/googlenav/ui/view/dialog/bO;

    invoke-static {v2}, Lcom/google/googlenav/ui/view/dialog/bO;->h(Lcom/google/googlenav/ui/view/dialog/bO;)I

    move-result v2

    if-ne v2, v10, :cond_311

    .line 426
    iget-object v2, v1, Lcom/google/googlenav/ui/view/dialog/cd;->d:Landroid/widget/TextView;

    const/high16 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 430
    :goto_275
    iget-object v2, v1, Lcom/google/googlenav/ui/view/dialog/cd;->d:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/dialog/bS;->a:Lcom/google/googlenav/ui/view/dialog/bO;

    invoke-static {v3}, Lcom/google/googlenav/ui/view/dialog/bO;->i(Lcom/google/googlenav/ui/view/dialog/bO;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/bS;->a:Lcom/google/googlenav/ui/view/dialog/bO;

    invoke-static {v2}, Lcom/google/googlenav/ui/view/dialog/bO;->j(Lcom/google/googlenav/ui/view/dialog/bO;)I

    move-result v2

    if-eq v2, v5, :cond_31a

    .line 432
    iget-object v2, v1, Lcom/google/googlenav/ui/view/dialog/cd;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 433
    iget-object v2, v1, Lcom/google/googlenav/ui/view/dialog/cd;->e:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/googlenav/ui/view/dialog/bS;->a:Lcom/google/googlenav/ui/view/dialog/bO;

    invoke-static {v4}, Lcom/google/googlenav/ui/view/dialog/bO;->j(Lcom/google/googlenav/ui/view/dialog/bO;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    :goto_2b1
    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/bS;->a:Lcom/google/googlenav/ui/view/dialog/bO;

    invoke-static {v2}, Lcom/google/googlenav/ui/view/dialog/bO;->j(Lcom/google/googlenav/ui/view/dialog/bO;)I

    move-result v2

    if-eq v2, v5, :cond_320

    .line 439
    iget-object v2, v1, Lcom/google/googlenav/ui/view/dialog/cd;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 440
    iget-object v2, v1, Lcom/google/googlenav/ui/view/dialog/cd;->g:Landroid/widget/ProgressBar;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 441
    iget-object v2, v1, Lcom/google/googlenav/ui/view/dialog/cd;->g:Landroid/widget/ProgressBar;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/dialog/bS;->a:Lcom/google/googlenav/ui/view/dialog/bO;

    invoke-static {v3}, Lcom/google/googlenav/ui/view/dialog/bO;->j(Lcom/google/googlenav/ui/view/dialog/bO;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_160

    .line 358
    :cond_2d2
    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/bS;->a:Lcom/google/googlenav/ui/view/dialog/bO;

    invoke-static {v2}, Lcom/google/googlenav/ui/view/dialog/bO;->h(Lcom/google/googlenav/ui/view/dialog/bO;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2f5

    .line 360
    iget-object v2, v1, Lcom/google/googlenav/ui/view/dialog/cd;->i:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 361
    iget-object v2, v1, Lcom/google/googlenav/ui/view/dialog/cd;->j:Landroid/widget/TextView;

    const/16 v3, 0x6b

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    iget-object v2, v1, Lcom/google/googlenav/ui/view/dialog/cd;->k:Landroid/widget/ImageView;

    const v3, 0x7f020188

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_238

    .line 364
    :cond_2f5
    iget-object v2, v1, Lcom/google/googlenav/ui/view/dialog/cd;->j:Landroid/widget/TextView;

    const/16 v3, 0x34d

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    iget-object v2, v1, Lcom/google/googlenav/ui/view/dialog/cd;->k:Landroid/widget/ImageView;

    const v3, 0x7f020369

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_238

    .line 421
    :cond_30a
    iget-object v2, v1, Lcom/google/googlenav/ui/view/dialog/cd;->l:Landroid/widget/ImageButton;

    invoke-virtual {v2, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_261

    .line 428
    :cond_311
    iget-object v2, v1, Lcom/google/googlenav/ui/view/dialog/cd;->d:Landroid/widget/TextView;

    const/high16 v3, -0x100

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_275

    .line 435
    :cond_31a
    iget-object v2, v1, Lcom/google/googlenav/ui/view/dialog/cd;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2b1

    .line 443
    :cond_320
    iget-object v2, v1, Lcom/google/googlenav/ui/view/dialog/cd;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_160

    .line 481
    :cond_327
    iget-object v0, v1, Lcom/google/googlenav/ui/view/dialog/cd;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_f6
.end method
