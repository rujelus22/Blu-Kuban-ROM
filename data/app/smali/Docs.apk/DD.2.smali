.class public LDD;
.super LDK;
.source "DigitsKeyListener.java"


# static fields
.field private static a:[LDD;

.field private static final a:[[C


# instance fields
.field private final a:Z

.field private a:[C

.field private final b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/16 v4, 0xb

    const/4 v3, 0x4

    .line 48
    new-array v0, v3, [[C

    const/4 v1, 0x0

    const/16 v2, 0xa

    new-array v2, v2, [C

    fill-array-data v2, :array_30

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v4, [C

    fill-array-data v2, :array_3e

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v4, [C

    fill-array-data v2, :array_4e

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0xc

    new-array v2, v2, [C

    fill-array-data v2, :array_5e

    aput-object v2, v0, v1

    sput-object v0, LDD;->a:[[C

    .line 218
    new-array v0, v3, [LDD;

    sput-object v0, LDD;->a:[LDD;

    return-void

    .line 48
    :array_30
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
    .end array-data

    :array_3e
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x2dt 0x0t
    .end array-data

    nop

    :array_4e
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x2et 0x0t
    .end array-data

    nop

    :array_5e
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x2dt 0x0t
        0x2et 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, v0, v0}, LDD;-><init>(ZZ)V

    .line 60
    return-void
.end method

.method public constructor <init>(ZZ)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, LDK;-><init>()V

    .line 68
    iput-boolean p1, p0, LDD;->a:Z

    .line 69
    iput-boolean p2, p0, LDD;->b:Z

    .line 71
    if-eqz p1, :cond_16

    const/4 v1, 0x1

    :goto_b
    if-eqz p2, :cond_e

    const/4 v0, 0x2

    :cond_e
    or-int/2addr v0, v1

    .line 72
    sget-object v1, LDD;->a:[[C

    aget-object v0, v1, v0

    iput-object v0, p0, LDD;->a:[C

    .line 73
    return-void

    :cond_16
    move v1, v0

    .line 71
    goto :goto_b
.end method

.method public static a(Ljava/lang/String;)LDD;
    .registers 5
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 105
    new-instance v0, LDD;

    invoke-direct {v0}, LDD;-><init>()V

    .line 107
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    new-array v1, v1, [C

    iput-object v1, v0, LDD;->a:[C

    .line 108
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, v0, LDD;->a:[C

    invoke-virtual {p0, v3, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 110
    return-object v0
.end method

.method public static a(ZZ)LDD;
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 88
    if-eqz p0, :cond_13

    const/4 v1, 0x1

    :goto_4
    if-eqz p1, :cond_7

    const/4 v0, 0x2

    :cond_7
    or-int/2addr v0, v1

    .line 90
    sget-object v1, LDD;->a:[LDD;

    aget-object v1, v1, v0

    if-eqz v1, :cond_15

    .line 91
    sget-object v1, LDD;->a:[LDD;

    aget-object v0, v1, v0

    .line 94
    :goto_12
    return-object v0

    :cond_13
    move v1, v0

    .line 88
    goto :goto_4

    .line 93
    :cond_15
    sget-object v1, LDD;->a:[LDD;

    new-instance v2, LDD;

    invoke-direct {v2, p0, p1}, LDD;-><init>(ZZ)V

    aput-object v2, v1, v0

    .line 94
    sget-object v1, LDD;->a:[LDD;

    aget-object v0, v1, v0

    goto :goto_12
.end method


# virtual methods
.method protected a()[C
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, LDD;->a:[C

    return-object v0
.end method

.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 128
    invoke-super/range {p0 .. p6}, LDK;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 130
    iget-boolean v1, p0, LDD;->a:Z

    if-nez v1, :cond_d

    iget-boolean v1, p0, LDD;->b:Z

    if-nez v1, :cond_d

    .line 214
    :cond_c
    :goto_c
    return-object v0

    .line 134
    :cond_d
    if-eqz v0, :cond_15

    .line 136
    const/4 p2, 0x0

    .line 137
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result p3

    move-object p1, v0

    .line 140
    :cond_15
    const/4 v3, -0x1

    .line 141
    const/4 v1, -0x1

    .line 142
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v4

    .line 148
    const/4 v2, 0x0

    :goto_1c
    if-ge v2, p5, :cond_30

    .line 149
    invoke-interface {p4, v2}, Landroid/text/Spanned;->charAt(I)C

    move-result v5

    .line 151
    const/16 v6, 0x2d

    if-ne v5, v6, :cond_2a

    move v3, v2

    .line 148
    :cond_27
    :goto_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 153
    :cond_2a
    const/16 v6, 0x2e

    if-ne v5, v6, :cond_27

    move v1, v2

    .line 154
    goto :goto_27

    :cond_30
    move v2, p6

    .line 157
    :goto_31
    if-ge v2, v4, :cond_46

    .line 158
    invoke-interface {p4, v2}, Landroid/text/Spanned;->charAt(I)C

    move-result v5

    .line 160
    const/16 v6, 0x2d

    if-ne v5, v6, :cond_3e

    .line 161
    const-string v0, ""

    goto :goto_c

    .line 162
    :cond_3e
    const/16 v6, 0x2e

    if-ne v5, v6, :cond_43

    move v1, v2

    .line 157
    :cond_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    .line 174
    :cond_46
    const/4 v2, 0x0

    .line 176
    add-int/lit8 v4, p3, -0x1

    move v5, v3

    move v3, v1

    move-object v1, v2

    :goto_4c
    if-lt v4, p2, :cond_87

    .line 177
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 178
    const/4 v2, 0x0

    .line 180
    const/16 v7, 0x2d

    if-ne v6, v7, :cond_6b

    .line 181
    if-ne v4, p2, :cond_5b

    if-eqz p5, :cond_65

    .line 182
    :cond_5b
    const/4 v2, 0x1

    .line 196
    :cond_5c
    :goto_5c
    if-eqz v2, :cond_84

    .line 197
    add-int/lit8 v2, p2, 0x1

    if-ne p3, v2, :cond_75

    .line 198
    const-string v0, ""

    goto :goto_c

    .line 183
    :cond_65
    if-ltz v5, :cond_69

    .line 184
    const/4 v2, 0x1

    goto :goto_5c

    :cond_69
    move v5, v4

    .line 186
    goto :goto_5c

    .line 188
    :cond_6b
    const/16 v7, 0x2e

    if-ne v6, v7, :cond_5c

    .line 189
    if-ltz v3, :cond_73

    .line 190
    const/4 v2, 0x1

    goto :goto_5c

    :cond_73
    move v3, v4

    .line 192
    goto :goto_5c

    .line 201
    :cond_75
    if-nez v1, :cond_7c

    .line 202
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p1, p2, p3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    .line 205
    :cond_7c
    sub-int v2, v4, p2

    add-int/lit8 v6, v4, 0x1

    sub-int/2addr v6, p2

    invoke-virtual {v1, v2, v6}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 176
    :cond_84
    add-int/lit8 v4, v4, -0x1

    goto :goto_4c

    .line 209
    :cond_87
    if-eqz v1, :cond_8b

    move-object v0, v1

    .line 210
    goto :goto_c

    .line 211
    :cond_8b
    if-nez v0, :cond_c

    .line 214
    const/4 v0, 0x0

    goto/16 :goto_c
.end method

.method public getInputType()I
    .registers 3

    .prologue
    .line 115
    const/4 v0, 0x2

    .line 116
    iget-boolean v1, p0, LDD;->a:Z

    if-eqz v1, :cond_7

    .line 117
    const/16 v0, 0x1002

    .line 119
    :cond_7
    iget-boolean v1, p0, LDD;->b:Z

    if-eqz v1, :cond_d

    .line 120
    or-int/lit16 v0, v0, 0x2000

    .line 122
    :cond_d
    return v0
.end method
