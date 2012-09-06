.class LDS;
.super Ljava/lang/Object;
.source "ReplacementTransformationMethod.java"

# interfaces
.implements Landroid/text/GetChars;
.implements Ljava/lang/CharSequence;


# instance fields
.field private final a:Ljava/lang/CharSequence;

.field private final a:[C

.field private final b:[C


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;[C[C)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, LDS;->a:Ljava/lang/CharSequence;

    .line 117
    iput-object p2, p0, LDS;->a:[C

    .line 118
    iput-object p3, p0, LDS;->b:[C

    .line 119
    return-void
.end method


# virtual methods
.method public charAt(I)C
    .registers 7
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, LDS;->a:Ljava/lang/CharSequence;

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 130
    iget-object v0, p0, LDS;->a:[C

    array-length v2, v0

    .line 131
    const/4 v0, 0x0

    move v4, v0

    move v0, v1

    move v1, v4

    :goto_d
    if-ge v1, v2, :cond_1c

    .line 132
    iget-object v3, p0, LDS;->a:[C

    aget-char v3, v3, v1

    if-ne v0, v3, :cond_19

    .line 133
    iget-object v0, p0, LDS;->b:[C

    aget-char v0, v0, v1

    .line 131
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 137
    :cond_1c
    return v0
.end method

.method public getChars(II[CI)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 158
    iget-object v0, p0, LDS;->a:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 159
    sub-int v0, p2, p1

    add-int v1, v0, p4

    .line 160
    iget-object v0, p0, LDS;->a:[C

    array-length v2, v0

    .line 162
    :goto_c
    if-ge p4, v1, :cond_25

    .line 163
    aget-char v3, p3, p4

    .line 165
    const/4 v0, 0x0

    :goto_11
    if-ge v0, v2, :cond_22

    .line 166
    iget-object v4, p0, LDS;->a:[C

    aget-char v4, v4, v0

    if-ne v3, v4, :cond_1f

    .line 167
    iget-object v4, p0, LDS;->b:[C

    aget-char v4, v4, v0

    aput-char v4, p3, p4

    .line 165
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 162
    :cond_22
    add-int/lit8 p4, p4, 0x1

    goto :goto_c

    .line 171
    :cond_25
    return-void
.end method

.method public length()I
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, LDS;->a:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 142
    sub-int v0, p2, p1

    new-array v0, v0, [C

    .line 144
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, LDS;->getChars(II[CI)V

    .line 145
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 150
    invoke-virtual {p0}, LDS;->length()I

    move-result v0

    new-array v0, v0, [C

    .line 152
    invoke-virtual {p0}, LDS;->length()I

    move-result v1

    invoke-virtual {p0, v2, v1, v0, v2}, LDS;->getChars(II[CI)V

    .line 153
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method
