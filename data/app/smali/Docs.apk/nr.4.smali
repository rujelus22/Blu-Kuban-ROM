.class public Lnr;
.super Ljava/lang/Object;
.source "EntryViewBinder.java"

# interfaces
.implements Lbs;


# instance fields
.field private a:I

.field private final a:LFX;

.field private final a:LQN;

.field private a:LTE;

.field private final a:LZT;

.field private final a:Laau;

.field private a:Landroid/database/Cursor;

.field private final a:LeZ;

.field private final a:Ljava/lang/String;

.field private a:Lld;

.field private final a:Llu;

.field private final a:Lnx;

.field public final a:Lny;

.field private final a:LsB;

.field private a:Z

.field private final b:I

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private final f:Z

.field private final g:Z

.field private final h:Z


# direct methods
.method public constructor <init>(Llu;LQN;LZT;Lny;Lnx;LsB;Ljava/lang/String;LFX;Laau;ZZILeZ;)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
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
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lnr;->a:Landroid/database/Cursor;

    .line 160
    const/4 v0, -0x1

    iput v0, p0, Lnr;->a:I

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnr;->a:Z

    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnr;->b:Z

    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnr;->c:Z

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lnr;->a:LTE;

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnr;->d:Z

    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnr;->e:Z

    .line 180
    iput-object p1, p0, Lnr;->a:Llu;

    .line 181
    iput-object p2, p0, Lnr;->a:LQN;

    .line 182
    iput-object p4, p0, Lnr;->a:Lny;

    .line 183
    iput-object p5, p0, Lnr;->a:Lnx;

    .line 184
    iput-object p6, p0, Lnr;->a:LsB;

    .line 185
    iput-object p7, p0, Lnr;->a:Ljava/lang/String;

    .line 186
    iput-object p3, p0, Lnr;->a:LZT;

    .line 187
    iput-object p8, p0, Lnr;->a:LFX;

    .line 188
    iput-object p9, p0, Lnr;->a:Laau;

    .line 189
    const-string v0, "enableMultiSelect"

    const/4 v1, 0x0

    invoke-interface {p8, v0, v1}, LFX;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lnr;->f:Z

    .line 191
    iput-boolean p10, p0, Lnr;->g:Z

    .line 192
    iput-boolean p11, p0, Lnr;->h:Z

    .line 193
    iput p12, p0, Lnr;->b:I

    .line 194
    iput-object p13, p0, Lnr;->a:LeZ;

    .line 195
    return-void
.end method

.method static synthetic a(Lnr;)Lnx;
    .registers 2
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lnr;->a:Lnx;

    return-object v0
.end method

.method private a(Landroid/database/Cursor;)V
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 198
    iget-object v0, p0, Lnr;->a:Landroid/database/Cursor;

    if-ne v0, p1, :cond_e

    iget v0, p0, Lnr;->a:I

    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    if-eq v0, v3, :cond_87

    .line 199
    :cond_e
    iput-object p1, p0, Lnr;->a:Landroid/database/Cursor;

    .line 200
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    iput v0, p0, Lnr;->a:I

    .line 201
    invoke-static {p1}, LMj;->c(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    .line 202
    sget-object v0, LMk;->u:LMk;

    invoke-virtual {v0}, LMk;->a()LLV;

    move-result-object v0

    invoke-virtual {v0, p1}, LLV;->a(Landroid/database/Cursor;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lnr;->a:Z

    .line 203
    iget-object v0, p0, Lnr;->a:Ljava/lang/String;

    invoke-static {v0, v3}, Lld;->a(Ljava/lang/String;Ljava/lang/String;)Lld;

    move-result-object v0

    iput-object v0, p0, Lnr;->a:Lld;

    .line 204
    iget-object v0, p0, Lnr;->a:Lld;

    invoke-static {v0}, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncReceiver;->a(Lld;)LTE;

    move-result-object v0

    iput-object v0, p0, Lnr;->a:LTE;

    .line 205
    iget-object v0, p0, Lnr;->a:LTE;

    if-eqz v0, :cond_88

    iget-object v0, p0, Lnr;->a:LTE;

    invoke-virtual {v0}, LTE;->a()LTD;

    move-result-object v0

    sget-object v4, LTD;->a:LTD;

    if-ne v0, v4, :cond_88

    move v0, v1

    :goto_49
    iput-boolean v0, p0, Lnr;->b:Z

    .line 206
    iget-object v0, p0, Lnr;->a:LTE;

    if-eqz v0, :cond_8a

    iget-object v0, p0, Lnr;->a:LTE;

    invoke-virtual {v0}, LTE;->a()LTD;

    move-result-object v0

    sget-object v4, LTD;->b:LTD;

    if-ne v0, v4, :cond_8a

    move v0, v1

    :goto_5a
    iput-boolean v0, p0, Lnr;->c:Z

    .line 208
    iget-object v0, p0, Lnr;->a:Llu;

    iget-object v4, p0, Lnr;->a:Ljava/lang/String;

    invoke-interface {v0, v4}, Llu;->b(Ljava/lang/String;)LkG;

    move-result-object v0

    .line 209
    iget-object v4, p0, Lnr;->a:Llu;

    invoke-interface {v4, v0, v3}, Llu;->a(LkG;Ljava/lang/String;)LkR;

    move-result-object v3

    .line 210
    if-eqz v3, :cond_8c

    iget-object v0, p0, Lnr;->a:LQN;

    sget-object v4, LQM;->a:LQM;

    invoke-interface {v0, v3, v4}, LQN;->a(LkR;LQM;)Z

    move-result v0

    if-eqz v0, :cond_8c

    move v0, v1

    :goto_77
    iput-boolean v0, p0, Lnr;->d:Z

    .line 212
    if-eqz v3, :cond_8e

    iget-object v0, p0, Lnr;->a:LQN;

    sget-object v4, LQM;->a:LQM;

    invoke-interface {v0, v3, v4}, LQN;->b(LkR;LQM;)Z

    move-result v0

    if-eqz v0, :cond_8e

    :goto_85
    iput-boolean v1, p0, Lnr;->e:Z

    .line 215
    :cond_87
    return-void

    :cond_88
    move v0, v2

    .line 205
    goto :goto_49

    :cond_8a
    move v0, v2

    .line 206
    goto :goto_5a

    :cond_8c
    move v0, v2

    .line 210
    goto :goto_77

    :cond_8e
    move v1, v2

    .line 212
    goto :goto_85
.end method

.method private a(Landroid/widget/TextView;Z)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 400
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 402
    if-eqz p2, :cond_12

    .line 403
    const/4 v1, 0x5

    sget v2, LcS;->title:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 407
    :goto_e
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 408
    return-void

    .line 405
    :cond_12
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_e
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/database/Cursor;I)Z
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 219
    invoke-direct {p0, p2}, Lnr;->a(Landroid/database/Cursor;)V

    .line 220
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 222
    iget-object v0, p0, Lnr;->a:Laau;

    invoke-interface {v0}, Laau;->b()Z

    move-result v0

    if-nez v0, :cond_54

    move v0, v2

    .line 224
    :goto_14
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 225
    sget v6, LcS;->title:I

    if-ne v1, v6, :cond_5f

    .line 226
    check-cast p1, Landroid/widget/TextView;

    .line 227
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v0, p0, Lnr;->a:LeZ;

    sget-object v1, LeV;->o:LeV;

    invoke-interface {v0, v1}, LeZ;->a(LeV;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 229
    sget-object v0, LMk;->e:LMk;

    invoke-virtual {v0}, LMk;->a()LLV;

    move-result-object v0

    invoke-virtual {v0, p2}, LLV;->a(Landroid/database/Cursor;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 231
    sget-object v4, LMk;->h:LMk;

    invoke-virtual {v4}, LMk;->a()LLV;

    move-result-object v4

    invoke-virtual {v4, p2}, LLV;->a(Landroid/database/Cursor;)J

    move-result-wide v4

    .line 233
    cmp-long v0, v4, v0

    if-gez v0, :cond_4c

    move v3, v2

    .line 236
    :cond_4c
    if-eqz v3, :cond_56

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    :goto_50
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 392
    :cond_53
    :goto_53
    return v2

    :cond_54
    move v0, v3

    .line 222
    goto :goto_14

    .line 236
    :cond_56
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_50

    .line 238
    :cond_59
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_53

    .line 241
    :cond_5f
    sget v6, LcS;->star_cb:I

    if-ne v1, v6, :cond_90

    move-object v0, p1

    .line 243
    check-cast v0, Landroid/widget/ToggleButton;

    .line 244
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_8a

    move v1, v2

    :goto_6d
    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 245
    iget-object v1, p0, Lnr;->a:LFX;

    const-string v4, "canChangeStarring"

    invoke-interface {v1, v4, v2}, LFX;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 246
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 250
    invoke-static {p2}, LMj;->c(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    .line 251
    new-instance v3, Lns;

    invoke-direct {v3, p0, v1}, Lns;-><init>(Lnr;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_53

    :cond_8a
    move v1, v3

    .line 244
    goto :goto_6d

    .line 259
    :cond_8c
    invoke-virtual {p1, v3}, Landroid/view/View;->setClickable(Z)V

    goto :goto_53

    .line 262
    :cond_90
    sget v6, LcS;->group_title:I

    if-ne v1, v6, :cond_e9

    .line 263
    iget-object v0, p0, Lnr;->a:LsB;

    invoke-virtual {v0}, LsB;->a()LsM;

    move-result-object v6

    .line 264
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v1, p1

    .line 265
    check-cast v1, Landroid/widget/TextView;

    .line 267
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v7

    sget v8, LcS;->group_title_container:I

    if-ne v7, v8, :cond_271

    .line 269
    sget v4, LcS;->group_padding:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object p1, v0

    move-object v0, v4

    .line 271
    :goto_b3
    invoke-interface {v6}, LsM;->a()Z

    move-result v4

    if-eqz v4, :cond_be

    .line 272
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    move v2, v3

    .line 273
    goto :goto_53

    .line 275
    :cond_be
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 276
    if-eqz v0, :cond_cd

    .line 277
    invoke-interface {p2}, Landroid/database/Cursor;->isFirst()Z

    move-result v4

    if-eqz v4, :cond_ca

    move v3, v5

    :cond_ca
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 280
    :cond_cd
    iget v0, p0, Lnr;->b:I

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 281
    invoke-interface {v6}, LsM;->a()Ljava/lang/String;

    move-result-object v0

    .line 282
    if-nez v0, :cond_e4

    .line 283
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {v6}, LsM;->a()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 285
    :cond_e4
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_53

    .line 287
    :cond_e9
    sget v6, LcS;->date:I

    if-ne v1, v6, :cond_110

    .line 288
    iget-boolean v0, p0, Lnr;->g:Z

    if-eqz v0, :cond_103

    :goto_f1
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 289
    check-cast p1, Landroid/widget/TextView;

    .line 293
    invoke-interface {p2, p3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_105

    .line 294
    const-string v0, ""

    .line 299
    :goto_fe
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_53

    :cond_103
    move v5, v3

    .line 288
    goto :goto_f1

    .line 296
    :cond_105
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 297
    iget-object v3, p0, Lnr;->a:LZT;

    invoke-virtual {v3, v0, v1}, LZT;->a(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_fe

    .line 301
    :cond_110
    sget v6, LcS;->last_modifier_name:I

    if-ne v1, v6, :cond_12f

    .line 302
    iget-boolean v0, p0, Lnr;->h:Z

    .line 304
    if-eqz v0, :cond_11f

    .line 305
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 306
    if-nez v4, :cond_11f

    move v0, v3

    .line 310
    :cond_11f
    if-eqz v0, :cond_12d

    :goto_121
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 311
    if-eqz v0, :cond_53

    .line 312
    check-cast p1, Landroid/widget/TextView;

    .line 313
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_53

    :cond_12d
    move v3, v5

    .line 310
    goto :goto_121

    .line 316
    :cond_12f
    sget v6, LcS;->preview_button:I

    if-ne v1, v6, :cond_13c

    .line 317
    if-eqz v0, :cond_13a

    :goto_135
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_53

    :cond_13a
    move v3, v5

    goto :goto_135

    .line 319
    :cond_13c
    sget v0, LcS;->selected_checkbox:I

    if-ne v1, v0, :cond_16a

    .line 320
    iget-boolean v0, p0, Lnr;->f:Z

    if-eqz v0, :cond_53

    .line 323
    iget-object v0, p0, Lnr;->a:Laau;

    invoke-interface {v0}, Laau;->b()Z

    move-result v0

    if-eqz v0, :cond_168

    :goto_14c
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 324
    check-cast p1, Landroid/widget/ToggleButton;

    .line 325
    iget-object v0, p0, Lnr;->a:Lld;

    iget-object v0, v0, Lld;->b:Ljava/lang/String;

    .line 326
    iget-object v1, p0, Lnr;->a:Lnx;

    invoke-interface {v1, v0}, Lnx;->a(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 328
    new-instance v1, Lnt;

    invoke-direct {v1, p0, v0}, Lnt;-><init>(Lnr;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_53

    :cond_168
    move v3, v5

    .line 323
    goto :goto_14c

    .line 335
    :cond_16a
    sget v0, LcS;->pin_status:I

    if-ne v1, v0, :cond_1a8

    move-object v0, p1

    .line 336
    check-cast v0, Landroid/widget/TextView;

    .line 338
    iget-boolean v1, p0, Lnr;->g:Z

    if-eqz v1, :cond_192

    .line 339
    iget-boolean v1, p0, Lnr;->e:Z

    if-nez v1, :cond_188

    .line 340
    sget v1, LcY;->pin_not_available:I

    .line 355
    :goto_17b
    iget-boolean v4, p0, Lnr;->g:Z

    invoke-direct {p0, v0, v4}, Lnr;->a(Landroid/widget/TextView;Z)V

    .line 356
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 357
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_53

    .line 341
    :cond_188
    iget-boolean v1, p0, Lnr;->d:Z

    if-nez v1, :cond_18f

    .line 342
    sget v1, LcY;->pin_out_of_date:I

    goto :goto_17b

    .line 344
    :cond_18f
    sget v1, LcY;->pin_up_to_date:I

    goto :goto_17b

    .line 347
    :cond_192
    iget-boolean v1, p0, Lnr;->a:Z

    if-eqz v1, :cond_19d

    iget-boolean v1, p0, Lnr;->e:Z

    if-eqz v1, :cond_19d

    .line 348
    sget v1, LcY;->pin_offline:I

    goto :goto_17b

    .line 350
    :cond_19d
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_53

    .line 359
    :cond_1a8
    sget v0, LcS;->pin_update:I

    if-ne v1, v0, :cond_1cd

    .line 360
    iget-boolean v0, p0, Lnr;->g:Z

    if-eqz v0, :cond_1cb

    iget-boolean v0, p0, Lnr;->d:Z

    if-nez v0, :cond_1cb

    iget-boolean v0, p0, Lnr;->b:Z

    if-nez v0, :cond_1cb

    iget-boolean v0, p0, Lnr;->c:Z

    if-nez v0, :cond_1cb

    :goto_1bc
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 362
    new-instance v0, Lnz;

    iget-object v1, p0, Lnr;->a:Lld;

    invoke-direct {v0, v1}, Lnz;-><init>(Lld;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_53

    :cond_1cb
    move v3, v5

    .line 360
    goto :goto_1bc

    .line 364
    :cond_1cd
    sget v0, LcS;->pin_waiting:I

    if-ne v1, v0, :cond_1fa

    .line 365
    iget-boolean v0, p0, Lnr;->g:Z

    if-eqz v0, :cond_1f8

    iget-boolean v0, p0, Lnr;->b:Z

    if-eqz v0, :cond_1f8

    :goto_1d9
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 366
    iget-boolean v0, p0, Lnr;->g:Z

    if-eqz v0, :cond_53

    .line 367
    new-instance v0, Lnu;

    iget-object v1, p0, Lnr;->a:Lld;

    invoke-direct {v0, v1}, Lnu;-><init>(Lld;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    new-instance v0, Lnv;

    sget-object v1, Lnw;->a:Lnw;

    iget-object v3, p0, Lnr;->a:Lld;

    invoke-direct {v0, v1, v3}, Lnv;-><init>(Lnw;Lld;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_53

    :cond_1f8
    move v3, v5

    .line 365
    goto :goto_1d9

    .line 371
    :cond_1fa
    sget v0, LcS;->pin_progress:I

    if-ne v1, v0, :cond_237

    .line 372
    iget-boolean v0, p0, Lnr;->g:Z

    if-eqz v0, :cond_235

    iget-boolean v0, p0, Lnr;->c:Z

    if-eqz v0, :cond_235

    :goto_206
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 373
    iget-boolean v0, p0, Lnr;->g:Z

    if-eqz v0, :cond_223

    iget-boolean v0, p0, Lnr;->c:Z

    if-eqz v0, :cond_223

    move-object v0, p1

    .line 374
    check-cast v0, Lcom/google/android/apps/docs/view/ProgressButton;

    iget-object v1, p0, Lnr;->a:LTE;

    invoke-static {v4, v0, v1}, LZH;->a(Lcom/google/android/apps/docs/view/CustomButton;Lcom/google/android/apps/docs/view/ProgressButton;LTE;)V

    .line 375
    new-instance v0, Lnu;

    iget-object v1, p0, Lnr;->a:Lld;

    invoke-direct {v0, v1}, Lnu;-><init>(Lld;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    :cond_223
    iget-boolean v0, p0, Lnr;->g:Z

    if-eqz v0, :cond_53

    .line 378
    new-instance v0, Lnv;

    sget-object v1, Lnw;->b:Lnw;

    iget-object v3, p0, Lnr;->a:Lld;

    invoke-direct {v0, v1, v3}, Lnv;-><init>(Lnw;Lld;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_53

    :cond_235
    move v3, v5

    .line 372
    goto :goto_206

    .line 381
    :cond_237
    sget v0, LcS;->pin_filler:I

    if-ne v1, v0, :cond_249

    .line 382
    iget-boolean v0, p0, Lnr;->g:Z

    if-eqz v0, :cond_243

    iget-boolean v0, p0, Lnr;->d:Z

    if-eqz v0, :cond_244

    :cond_243
    move v3, v5

    :cond_244
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_53

    .line 384
    :cond_249
    sget v0, LcS;->doc_icon:I

    if-ne v1, v0, :cond_26e

    .line 385
    check-cast p1, Landroid/widget/ImageView;

    .line 386
    invoke-static {p2}, LMj;->a(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    .line 387
    invoke-static {p2}, LMj;->b(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    .line 388
    sget-object v3, LMk;->j:LMk;

    invoke-virtual {v3}, LMk;->a()LLV;

    move-result-object v3

    invoke-virtual {v3, p2}, LLV;->a(Landroid/database/Cursor;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 389
    invoke-static {v0, v1, v3}, LkT;->a(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_53

    :cond_26e
    move v2, v3

    .line 392
    goto/16 :goto_53

    :cond_271
    move-object v0, v4

    goto/16 :goto_b3
.end method
