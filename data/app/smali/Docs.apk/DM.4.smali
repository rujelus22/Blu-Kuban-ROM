.class LDM;
.super Ljava/lang/Object;
.source "PasswordTransformationMethod.java"

# interfaces
.implements Landroid/text/GetChars;
.implements Ljava/lang/CharSequence;


# instance fields
.field private final a:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p1, p0, LDM;->a:Ljava/lang/CharSequence;

    .line 148
    return-void
.end method


# virtual methods
.method public charAt(I)C
    .registers 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 157
    iget-object v0, p0, LDM;->a:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_57

    .line 158
    iget-object v0, p0, LDM;->a:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    .line 160
    sget-object v1, LDW;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 161
    sget-object v3, LDW;->b:Ljava/lang/Object;

    invoke-interface {v0, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 163
    if-lt p1, v1, :cond_22

    if-ge p1, v3, :cond_22

    .line 164
    iget-object v0, p0, LDM;->a:Ljava/lang/CharSequence;

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 181
    :goto_21
    return v0

    .line 167
    :cond_22
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v3, LDO;

    invoke-interface {v0, v2, v1, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [LDO;

    .line 169
    :goto_2e
    array-length v3, v1

    if-ge v2, v3, :cond_57

    .line 170
    aget-object v3, v1, v2

    invoke-static {v3}, LDO;->a(LDO;)LDL;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_54

    .line 171
    aget-object v3, v1, v2

    invoke-interface {v0, v3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 172
    aget-object v4, v1, v2

    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 174
    if-lt p1, v3, :cond_54

    if-ge p1, v4, :cond_54

    .line 175
    iget-object v0, p0, LDM;->a:Ljava/lang/CharSequence;

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    goto :goto_21

    .line 169
    :cond_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 181
    :cond_57
    invoke-static {}, LDL;->a()C

    move-result v0

    goto :goto_21
.end method

.method public getChars(II[CI)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v5, 0x0

    .line 199
    iget-object v2, p0, LDM;->a:Ljava/lang/CharSequence;

    invoke-static {v2, p1, p2, p3, p4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 205
    iget-object v2, p0, LDM;->a:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Spanned;

    if-eqz v2, :cond_7e

    .line 206
    iget-object v0, p0, LDM;->a:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    .line 208
    sget-object v1, LDW;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    .line 209
    sget-object v1, LDW;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 211
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v2, LDO;

    invoke-interface {v0, v5, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [LDO;

    .line 212
    array-length v4, v1

    .line 213
    new-array v3, v4, [I

    .line 214
    new-array v2, v4, [I

    move v8, v5

    .line 216
    :goto_30
    if-ge v8, v4, :cond_51

    .line 217
    aget-object v9, v1, v8

    invoke-static {v9}, LDO;->a(LDO;)LDL;

    move-result-object v9

    invoke-interface {v0, v9}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    if-ltz v9, :cond_4e

    .line 218
    aget-object v9, v1, v8

    invoke-interface {v0, v9}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    aput v9, v3, v8

    .line 219
    aget-object v9, v1, v8

    invoke-interface {v0, v9}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v9

    aput v9, v2, v8

    .line 216
    :cond_4e
    add-int/lit8 v8, v8, 0x1

    goto :goto_30

    :cond_51
    move-object v0, v2

    move-object v1, v3

    move v2, v4

    move v3, v6

    move v4, v7

    :goto_56
    move v7, p1

    .line 224
    :goto_57
    if-ge v7, p2, :cond_7b

    .line 225
    if-lt v7, v4, :cond_5d

    if-lt v7, v3, :cond_74

    :cond_5d
    move v6, v5

    .line 228
    :goto_5e
    if-ge v6, v2, :cond_7c

    .line 229
    aget v8, v1, v6

    if-lt v7, v8, :cond_78

    aget v8, v0, v6

    if-ge v7, v8, :cond_78

    .line 230
    const/4 v6, 0x1

    .line 235
    :goto_69
    if-nez v6, :cond_74

    .line 236
    sub-int v6, v7, p1

    add-int/2addr v6, p4

    invoke-static {}, LDL;->a()C

    move-result v8

    aput-char v8, p3, v6

    .line 224
    :cond_74
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_57

    .line 228
    :cond_78
    add-int/lit8 v6, v6, 0x1

    goto :goto_5e

    .line 240
    :cond_7b
    return-void

    :cond_7c
    move v6, v5

    goto :goto_69

    :cond_7e
    move v2, v5

    move v3, v1

    move v4, v1

    move-object v1, v0

    goto :goto_56
.end method

.method public length()I
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, LDM;->a:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 186
    sub-int v0, p2, p1

    new-array v0, v0, [C

    .line 188
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, LDM;->getChars(II[CI)V

    .line 189
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 194
    const/4 v0, 0x0

    invoke-virtual {p0}, LDM;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, LDM;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
