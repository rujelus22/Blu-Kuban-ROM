.class public abstract LDG;
.super Ljava/lang/Object;
.source "MetaKeyKeyListener.java"


# static fields
.field private static final a:Ljava/lang/Object;

.field private static final b:Ljava/lang/Object;

.field private static final c:Ljava/lang/Object;

.field private static final d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 135
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, LDG;->a:Ljava/lang/Object;

    .line 136
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, LDG;->b:Ljava/lang/Object;

    .line 137
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, LDG;->c:Ljava/lang/Object;

    .line 138
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, LDG;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ljava/lang/CharSequence;)I
    .registers 6
    .parameter

    .prologue
    const/16 v4, 0x800

    .line 159
    sget-object v0, LDG;->a:Ljava/lang/Object;

    const/4 v1, 0x1

    const/16 v2, 0x100

    invoke-static {p0, v0, v1, v2}, LDG;->a(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v0

    sget-object v1, LDG;->b:Ljava/lang/Object;

    const/4 v2, 0x2

    const/16 v3, 0x200

    invoke-static {p0, v1, v2, v3}, LDG;->a(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, LDG;->c:Ljava/lang/Object;

    const/4 v2, 0x4

    const/16 v3, 0x400

    invoke-static {p0, v1, v2, v3}, LDG;->a(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, LDG;->d:Ljava/lang/Object;

    invoke-static {p0, v1, v4, v4}, LDG;->a(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static final a(Ljava/lang/CharSequence;I)I
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 174
    sparse-switch p1, :sswitch_data_24

    .line 188
    const/4 v0, 0x0

    :goto_6
    return v0

    .line 176
    :sswitch_7
    sget-object v0, LDG;->a:Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, LDG;->a(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v0

    goto :goto_6

    .line 179
    :sswitch_e
    sget-object v0, LDG;->b:Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, LDG;->a(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v0

    goto :goto_6

    .line 182
    :sswitch_15
    sget-object v0, LDG;->c:Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, LDG;->a(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v0

    goto :goto_6

    .line 185
    :sswitch_1c
    sget-object v0, LDG;->d:Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, LDG;->a(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v0

    goto :goto_6

    .line 174
    nop

    :sswitch_data_24
    .sparse-switch
        0x1 -> :sswitch_7
        0x2 -> :sswitch_e
        0x4 -> :sswitch_15
        0x800 -> :sswitch_1c
    .end sparse-switch
.end method

.method private static a(Ljava/lang/CharSequence;Ljava/lang/Object;II)I
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 194
    instance-of v1, p0, Landroid/text/Spanned;

    if-nez v1, :cond_7

    move p3, v0

    .line 206
    :cond_6
    :goto_6
    return p3

    .line 198
    :cond_7
    check-cast p0, Landroid/text/Spanned;

    .line 199
    invoke-interface {p0, p1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v1

    .line 201
    const v2, 0x4000011

    if-eq v1, v2, :cond_6

    .line 203
    if-eqz v1, :cond_16

    move p3, p2

    .line 204
    goto :goto_6

    :cond_16
    move p3, v0

    .line 206
    goto :goto_6
.end method

.method public static a(Landroid/text/Editable;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 368
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_9

    sget-object v0, LDG;->a:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 369
    :cond_9
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_12

    sget-object v0, LDG;->b:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 370
    :cond_12
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_1b

    sget-object v0, LDG;->c:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 371
    :cond_1b
    and-int/lit16 v0, p1, 0x800

    if-eqz v0, :cond_24

    sget-object v0, LDG;->d:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 372
    :cond_24
    return-void
.end method

.method private a(Landroid/text/Editable;Ljava/lang/Object;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const v4, 0x4000011

    const v3, 0x1000011

    const/4 v2, 0x0

    .line 289
    invoke-interface {p1, p2}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 291
    if-ne v0, v3, :cond_e

    .line 301
    :cond_d
    :goto_d
    return-void

    .line 293
    :cond_e
    const v1, 0x2000011

    if-ne v0, v1, :cond_17

    .line 294
    invoke-interface {p1, p2, v2, v2, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_d

    .line 295
    :cond_17
    const v1, 0x3000011

    if-eq v0, v1, :cond_d

    .line 297
    if-ne v0, v4, :cond_22

    .line 298
    invoke-interface {p1, p2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_d

    .line 300
    :cond_22
    invoke-interface {p1, p2, v2, v2, v3}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_d
.end method

.method private a(Landroid/text/Editable;Ljava/lang/Object;Landroid/view/KeyEvent;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 344
    invoke-interface {p1, p2}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 345
    invoke-static {}, LCx;->a()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 346
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/KeyCharacterMap;->getModifierBehavior()I

    move-result v1

    packed-switch v1, :pswitch_data_34

    .line 355
    invoke-interface {p1, p2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 361
    :cond_19
    :goto_19
    return-void

    .line 348
    :pswitch_1a
    const v1, 0x3000011

    if-ne v0, v1, :cond_23

    .line 349
    invoke-interface {p1, p2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_19

    .line 350
    :cond_23
    const v1, 0x1000011

    if-ne v0, v1, :cond_19

    .line 351
    const v0, 0x2000011

    invoke-interface {p1, p2, v2, v2, v0}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_19

    .line 359
    :cond_2f
    invoke-interface {p1, p2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_19

    .line 346
    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_1a
    .end packed-switch
.end method

.method public static a(Landroid/text/Spannable;)V
    .registers 2
    .parameter

    .prologue
    .line 144
    sget-object v0, LDG;->a:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 145
    sget-object v0, LDG;->b:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 146
    sget-object v0, LDG;->c:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 147
    sget-object v0, LDG;->d:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 148
    return-void
.end method

.method private static a(Landroid/text/Spannable;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 239
    invoke-interface {p0, p1}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 241
    const v1, 0x1000011

    if-ne v0, v1, :cond_11

    .line 242
    const v0, 0x3000011

    invoke-interface {p0, p1, v2, v2, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 245
    :cond_10
    :goto_10
    return-void

    .line 243
    :cond_11
    const v1, 0x2000011

    if-ne v0, v1, :cond_10

    .line 244
    invoke-interface {p0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_10
.end method

.method public static a(Landroid/view/View;Landroid/text/Spannable;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 308
    sget-object v0, LDG;->d:Ljava/lang/Object;

    const v1, 0x1000011

    invoke-interface {p1, v0, v2, v2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 309
    return-void
.end method

.method public static a(Ljava/lang/CharSequence;Ljava/lang/Object;)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 226
    sget-object v0, LDG;->a:Ljava/lang/Object;

    if-eq p1, v0, :cond_10

    sget-object v0, LDG;->b:Ljava/lang/Object;

    if-eq p1, v0, :cond_10

    sget-object v0, LDG;->c:Ljava/lang/Object;

    if-eq p1, v0, :cond_10

    sget-object v0, LDG;->d:Ljava/lang/Object;

    if-ne p1, v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static b(Landroid/text/Spannable;)V
    .registers 2
    .parameter

    .prologue
    .line 216
    sget-object v0, LDG;->a:Ljava/lang/Object;

    invoke-static {p0, v0}, LDG;->a(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 217
    sget-object v0, LDG;->b:Ljava/lang/Object;

    invoke-static {p0, v0}, LDG;->a(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 218
    sget-object v0, LDG;->c:Ljava/lang/Object;

    invoke-static {p0, v0}, LDG;->a(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 219
    return-void
.end method

.method private static b(Landroid/text/Spannable;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 259
    invoke-interface {p0, p1}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 261
    const v1, 0x4000011

    if-ne v0, v1, :cond_c

    .line 262
    invoke-interface {p0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 263
    :cond_c
    return-void
.end method

.method public static b(Landroid/view/View;Landroid/text/Spannable;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 317
    sget-object v0, LDG;->d:Ljava/lang/Object;

    invoke-interface {p1, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 318
    return-void
.end method

.method public static b(Ljava/lang/CharSequence;Ljava/lang/Object;)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 235
    sget-object v0, LDG;->d:Ljava/lang/Object;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected static c(Landroid/text/Spannable;)V
    .registers 2
    .parameter

    .prologue
    .line 252
    sget-object v0, LDG;->a:Ljava/lang/Object;

    invoke-static {p0, v0}, LDG;->b(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 253
    sget-object v0, LDG;->b:Ljava/lang/Object;

    invoke-static {p0, v0}, LDG;->b(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 254
    sget-object v0, LDG;->c:Ljava/lang/Object;

    invoke-static {p0, v0}, LDG;->b(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 255
    sget-object v0, LDG;->d:Ljava/lang/Object;

    invoke-static {p0, v0}, LDG;->b(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 256
    return-void
.end method


# virtual methods
.method public clearMetaKeyState(Landroid/view/View;Landroid/text/Editable;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 364
    invoke-static {p2, p3}, LDG;->a(Landroid/text/Editable;I)V

    .line 365
    return-void
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 269
    const/16 v1, 0x3b

    if-eq p3, v1, :cond_9

    const/16 v1, 0x3c

    if-ne p3, v1, :cond_f

    .line 270
    :cond_9
    sget-object v1, LDG;->a:Ljava/lang/Object;

    invoke-direct {p0, p2, v1}, LDG;->a(Landroid/text/Editable;Ljava/lang/Object;)V

    .line 285
    :goto_e
    return v0

    .line 274
    :cond_f
    const/16 v1, 0x39

    if-eq p3, v1, :cond_1b

    const/16 v1, 0x3a

    if-eq p3, v1, :cond_1b

    const/16 v1, 0x4e

    if-ne p3, v1, :cond_21

    .line 276
    :cond_1b
    sget-object v1, LDG;->b:Ljava/lang/Object;

    invoke-direct {p0, p2, v1}, LDG;->a(Landroid/text/Editable;Ljava/lang/Object;)V

    goto :goto_e

    .line 280
    :cond_21
    const/16 v1, 0x3f

    if-ne p3, v1, :cond_2b

    .line 281
    sget-object v1, LDG;->c:Ljava/lang/Object;

    invoke-direct {p0, p2, v1}, LDG;->a(Landroid/text/Editable;Ljava/lang/Object;)V

    goto :goto_e

    .line 285
    :cond_2b
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 324
    const/16 v1, 0x3b

    if-eq p3, v1, :cond_9

    const/16 v1, 0x3c

    if-ne p3, v1, :cond_f

    .line 325
    :cond_9
    sget-object v1, LDG;->a:Ljava/lang/Object;

    invoke-direct {p0, p2, v1, p4}, LDG;->a(Landroid/text/Editable;Ljava/lang/Object;Landroid/view/KeyEvent;)V

    .line 340
    :goto_e
    return v0

    .line 329
    :cond_f
    const/16 v1, 0x39

    if-eq p3, v1, :cond_1b

    const/16 v1, 0x3a

    if-eq p3, v1, :cond_1b

    const/16 v1, 0x4e

    if-ne p3, v1, :cond_21

    .line 331
    :cond_1b
    sget-object v1, LDG;->b:Ljava/lang/Object;

    invoke-direct {p0, p2, v1, p4}, LDG;->a(Landroid/text/Editable;Ljava/lang/Object;Landroid/view/KeyEvent;)V

    goto :goto_e

    .line 335
    :cond_21
    const/16 v1, 0x3f

    if-ne p3, v1, :cond_2b

    .line 336
    sget-object v1, LDG;->c:Ljava/lang/Object;

    invoke-direct {p0, p2, v1, p4}, LDG;->a(Landroid/text/Editable;Ljava/lang/Object;Landroid/view/KeyEvent;)V

    goto :goto_e

    .line 340
    :cond_2b
    const/4 v0, 0x0

    goto :goto_e
.end method
