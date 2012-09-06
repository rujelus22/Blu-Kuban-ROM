.class public LCr;
.super Ljava/lang/Object;
.source "LayoutSelection.java"


# direct methods
.method private static a(LCl;III)I
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 341
    invoke-virtual {p0, p2}, LCl;->h(I)I

    move-result v0

    .line 342
    invoke-virtual {p0, p3}, LCl;->h(I)I

    move-result v1

    .line 344
    if-ne v0, v1, :cond_21

    .line 347
    invoke-virtual {p0, p2}, LCl;->a(I)F

    move-result v0

    .line 348
    invoke-virtual {p0, p3}, LCl;->a(I)F

    move-result v1

    .line 350
    if-gez p1, :cond_1b

    .line 353
    cmpg-float v0, v0, v1

    if-gez v0, :cond_19

    .line 378
    :cond_18
    :goto_18
    return p2

    :cond_19
    move p2, p3

    .line 356
    goto :goto_18

    .line 360
    :cond_1b
    cmpl-float v0, v0, v1

    if-gtz v0, :cond_18

    move p2, p3

    .line 363
    goto :goto_18

    .line 372
    :cond_21
    invoke-virtual {p0, p2}, LCl;->h(I)I

    move-result v0

    .line 373
    invoke-virtual {p0, v0}, LCl;->d(I)I

    move-result v0

    .line 375
    if-ne v0, p1, :cond_30

    .line 376
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_18

    .line 378
    :cond_30
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_18
.end method

.method private static a(Landroid/text/Spannable;LCl;I)I
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 323
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 324
    invoke-virtual {p1, v0}, LCl;->h(I)I

    move-result v1

    .line 325
    invoke-virtual {p1, v1}, LCl;->d(I)I

    move-result v0

    .line 327
    mul-int/2addr v0, p2

    if-gez v0, :cond_14

    .line 328
    invoke-virtual {p1, v1}, LCl;->c(I)I

    move-result v0

    .line 335
    :cond_13
    :goto_13
    return v0

    .line 330
    :cond_14
    invoke-virtual {p1, v1}, LCl;->i(I)I

    move-result v0

    .line 332
    invoke-virtual {p1}, LCl;->a()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_13

    .line 335
    add-int/lit8 v0, v0, -0x1

    goto :goto_13
.end method

.method public static a(Landroid/text/Spannable;LCl;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 45
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 46
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 48
    if-eq v2, v3, :cond_22

    .line 49
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 50
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 52
    invoke-static {p0, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 54
    if-nez v4, :cond_20

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v3

    if-ne v2, v3, :cond_20

    .line 78
    :cond_1f
    :goto_1f
    return v0

    :cond_20
    move v0, v1

    .line 58
    goto :goto_1f

    .line 60
    :cond_22
    invoke-virtual {p1, v3}, LCl;->h(I)I

    move-result v2

    .line 62
    if-lez v2, :cond_1f

    .line 65
    invoke-virtual {p1, v2}, LCl;->d(I)I

    move-result v0

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p1, v4}, LCl;->d(I)I

    move-result v4

    if-ne v0, v4, :cond_43

    .line 67
    invoke-virtual {p1, v3}, LCl;->a(I)F

    move-result v0

    .line 68
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2, v0}, LCl;->a(IF)I

    move-result v0

    .line 73
    :goto_3e
    invoke-static {p0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    move v0, v1

    .line 74
    goto :goto_1f

    .line 70
    :cond_43
    add-int/lit8 v0, v2, -0x1

    invoke-virtual {p1, v0}, LCl;->c(I)I

    move-result v0

    goto :goto_3e
.end method

.method public static a(Landroid/text/Spannable;LCs;Z)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 297
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-interface {p1, v0}, LCs;->a(I)I

    move-result v0

    .line 298
    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    .line 299
    if-eqz p2, :cond_12

    .line 300
    invoke-static {p0, v0}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 305
    :cond_10
    :goto_10
    const/4 v0, 0x1

    return v0

    .line 302
    :cond_12
    invoke-static {p0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_10
.end method

.method public static b(Landroid/text/Spannable;LCl;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 86
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 87
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 89
    if-eq v2, v3, :cond_22

    .line 90
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 91
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 93
    invoke-static {p0, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 95
    if-nez v4, :cond_20

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v3

    if-ne v2, v3, :cond_20

    .line 119
    :cond_1f
    :goto_1f
    return v0

    :cond_20
    move v0, v1

    .line 99
    goto :goto_1f

    .line 101
    :cond_22
    invoke-virtual {p1, v3}, LCl;->h(I)I

    move-result v2

    .line 103
    invoke-virtual {p1}, LCl;->a()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_1f

    .line 106
    invoke-virtual {p1, v2}, LCl;->d(I)I

    move-result v0

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4}, LCl;->d(I)I

    move-result v4

    if-ne v0, v4, :cond_49

    .line 108
    invoke-virtual {p1, v3}, LCl;->a(I)F

    move-result v0

    .line 109
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2, v0}, LCl;->a(IF)I

    move-result v0

    .line 114
    :goto_44
    invoke-static {p0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    move v0, v1

    .line 115
    goto :goto_1f

    .line 111
    :cond_49
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p1, v0}, LCl;->c(I)I

    move-result v0

    goto :goto_44
.end method

.method public static b(Landroid/text/Spannable;LCs;Z)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 311
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-interface {p1, v0}, LCs;->b(I)I

    move-result v0

    .line 312
    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    .line 313
    if-eqz p2, :cond_12

    .line 314
    invoke-static {p0, v0}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 319
    :cond_10
    :goto_10
    const/4 v0, 0x1

    return v0

    .line 316
    :cond_12
    invoke-static {p0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_10
.end method

.method public static c(Landroid/text/Spannable;LCl;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 128
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 129
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 131
    if-eq v1, v2, :cond_14

    .line 132
    const/4 v3, -0x1

    invoke-static {p1, v3, v1, v2}, LCr;->a(LCl;III)I

    move-result v1

    invoke-static {p0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 143
    :goto_13
    return v0

    .line 135
    :cond_14
    invoke-virtual {p1, v2}, LCl;->m(I)I

    move-result v1

    .line 137
    if-eq v1, v2, :cond_1e

    .line 138
    invoke-static {p0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_13

    .line 143
    :cond_1e
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static d(Landroid/text/Spannable;LCl;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 153
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 154
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 156
    if-eq v1, v2, :cond_13

    .line 157
    invoke-static {p1, v0, v1, v2}, LCr;->a(LCl;III)I

    move-result v1

    invoke-static {p0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 168
    :goto_12
    return v0

    .line 160
    :cond_13
    invoke-virtual {p1, v2}, LCl;->n(I)I

    move-result v1

    .line 162
    if-eq v1, v2, :cond_1d

    .line 163
    invoke-static {p0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_12

    .line 168
    :cond_1d
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public static e(Landroid/text/Spannable;LCl;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 176
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 177
    invoke-virtual {p1, v0}, LCl;->h(I)I

    move-result v1

    .line 179
    if-lez v1, :cond_2c

    .line 182
    invoke-virtual {p1, v1}, LCl;->d(I)I

    move-result v2

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p1, v3}, LCl;->d(I)I

    move-result v3

    if-ne v2, v3, :cond_25

    .line 184
    invoke-virtual {p1, v0}, LCl;->a(I)F

    move-result v0

    .line 185
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1, v0}, LCl;->a(IF)I

    move-result v0

    .line 190
    :goto_21
    invoke-static {p0, v0}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 197
    :cond_24
    :goto_24
    return v4

    .line 187
    :cond_25
    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p1, v0}, LCl;->c(I)I

    move-result v0

    goto :goto_21

    .line 192
    :cond_2c
    if-eqz v0, :cond_24

    .line 193
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    goto :goto_24
.end method

.method public static f(Landroid/text/Spannable;LCl;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 205
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 206
    invoke-virtual {p1, v0}, LCl;->h(I)I

    move-result v1

    .line 208
    invoke-virtual {p1}, LCl;->a()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_32

    .line 211
    invoke-virtual {p1, v1}, LCl;->d(I)I

    move-result v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, LCl;->d(I)I

    move-result v3

    if-ne v2, v3, :cond_2b

    .line 213
    invoke-virtual {p1, v0}, LCl;->a(I)F

    move-result v0

    .line 214
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1, v0}, LCl;->a(IF)I

    move-result v0

    .line 219
    :goto_27
    invoke-static {p0, v0}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 226
    :cond_2a
    :goto_2a
    return v4

    .line 216
    :cond_2b
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v0}, LCl;->c(I)I

    move-result v0

    goto :goto_27

    .line 221
    :cond_32
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v1

    if-eq v0, v1, :cond_2a

    .line 222
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    invoke-static {p0, v0}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    goto :goto_2a
.end method

.method public static g(Landroid/text/Spannable;LCl;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 234
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 235
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 236
    invoke-virtual {p1, v0}, LCl;->m(I)I

    move-result v1

    .line 238
    if-eq v1, v0, :cond_11

    .line 239
    invoke-static {p0, v1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 243
    :cond_11
    return v2
.end method

.method public static h(Landroid/text/Spannable;LCl;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 251
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 252
    invoke-virtual {p1, v0}, LCl;->n(I)I

    move-result v1

    .line 254
    if-eq v1, v0, :cond_e

    .line 255
    invoke-static {p0, v1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 259
    :cond_e
    return v2
.end method

.method public static i(Landroid/text/Spannable;LCl;)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 263
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, LCr;->a(Landroid/text/Spannable;LCl;I)I

    move-result v0

    .line 264
    invoke-static {p0, v0}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 265
    const/4 v0, 0x1

    return v0
.end method

.method public static j(Landroid/text/Spannable;LCl;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 269
    invoke-static {p0, p1, v1}, LCr;->a(Landroid/text/Spannable;LCl;I)I

    move-result v0

    .line 270
    invoke-static {p0, v0}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 271
    return v1
.end method

.method public static k(Landroid/text/Spannable;LCl;)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 275
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, LCr;->a(Landroid/text/Spannable;LCl;I)I

    move-result v0

    .line 276
    invoke-static {p0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 277
    const/4 v0, 0x1

    return v0
.end method

.method public static l(Landroid/text/Spannable;LCl;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 281
    invoke-static {p0, p1, v1}, LCr;->a(Landroid/text/Spannable;LCl;I)I

    move-result v0

    .line 282
    invoke-static {p0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 283
    return v1
.end method
