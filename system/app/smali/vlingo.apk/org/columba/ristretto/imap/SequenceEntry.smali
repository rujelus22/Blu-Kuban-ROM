.class public Lorg/columba/ristretto/imap/SequenceEntry;
.super Ljava/lang/Object;
.source "SequenceEntry.java"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final ALL:I = 0x3

.field public static final OPEN_RANGE:I = 0x2

.field public static final RANGE:I = 0x1

.field public static final SINGLE:I = 0x0

.field public static final STAR:I = -0x1


# instance fields
.field private a:I

.field private b:I

.field private type:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .parameter "a"

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput p1, p0, Lorg/columba/ristretto/imap/SequenceEntry;->a:I

    .line 79
    iput p1, p0, Lorg/columba/ristretto/imap/SequenceEntry;->b:I

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lorg/columba/ristretto/imap/SequenceEntry;->type:I

    .line 81
    return-void
.end method

.method public constructor <init>(II)V
    .registers 5
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    if-ne p1, p2, :cond_f

    .line 91
    iput p1, p0, Lorg/columba/ristretto/imap/SequenceEntry;->a:I

    .line 92
    iput p1, p0, Lorg/columba/ristretto/imap/SequenceEntry;->b:I

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lorg/columba/ristretto/imap/SequenceEntry;->type:I

    .line 112
    :cond_e
    :goto_e
    return-void

    .line 98
    :cond_f
    if-eq p1, v0, :cond_13

    if-ne p2, v0, :cond_28

    .line 99
    :cond_13
    const/4 v0, 0x2

    iput v0, p0, Lorg/columba/ristretto/imap/SequenceEntry;->type:I

    .line 100
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/columba/ristretto/imap/SequenceEntry;->a:I

    .line 101
    iget v0, p0, Lorg/columba/ristretto/imap/SequenceEntry;->a:I

    iput v0, p0, Lorg/columba/ristretto/imap/SequenceEntry;->b:I

    .line 103
    iget v0, p0, Lorg/columba/ristretto/imap/SequenceEntry;->a:I

    if-ne v0, v1, :cond_e

    .line 104
    const/4 v0, 0x3

    iput v0, p0, Lorg/columba/ristretto/imap/SequenceEntry;->type:I

    goto :goto_e

    .line 107
    :cond_28
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/columba/ristretto/imap/SequenceEntry;->a:I

    .line 108
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/columba/ristretto/imap/SequenceEntry;->b:I

    .line 110
    iput v1, p0, Lorg/columba/ristretto/imap/SequenceEntry;->type:I

    goto :goto_e
.end method


# virtual methods
.method public canMergeWith(Lorg/columba/ristretto/imap/SequenceEntry;)Z
    .registers 8
    .parameter "s"

    .prologue
    const/4 v3, 0x3

    const/4 v5, 0x2

    const/4 v0, 0x0

    const/4 v4, -0x1

    const/4 v1, 0x1

    .line 121
    iget v2, p1, Lorg/columba/ristretto/imap/SequenceEntry;->type:I

    if-eq v2, v3, :cond_d

    iget v2, p0, Lorg/columba/ristretto/imap/SequenceEntry;->type:I

    if-ne v2, v3, :cond_e

    .line 137
    :cond_d
    :goto_d
    return v1

    .line 124
    :cond_e
    iget v2, p0, Lorg/columba/ristretto/imap/SequenceEntry;->type:I

    if-ne v2, v5, :cond_1c

    iget v2, p1, Lorg/columba/ristretto/imap/SequenceEntry;->b:I

    iget v3, p0, Lorg/columba/ristretto/imap/SequenceEntry;->b:I

    if-ge v2, v3, :cond_d

    iget v2, p1, Lorg/columba/ristretto/imap/SequenceEntry;->b:I

    if-eq v2, v4, :cond_d

    .line 125
    :cond_1c
    iget v2, p1, Lorg/columba/ristretto/imap/SequenceEntry;->type:I

    if-ne v2, v5, :cond_2a

    iget v2, p0, Lorg/columba/ristretto/imap/SequenceEntry;->b:I

    iget v3, p1, Lorg/columba/ristretto/imap/SequenceEntry;->b:I

    if-ge v2, v3, :cond_d

    iget v2, p0, Lorg/columba/ristretto/imap/SequenceEntry;->b:I

    if-eq v2, v4, :cond_d

    .line 129
    :cond_2a
    iget v2, p1, Lorg/columba/ristretto/imap/SequenceEntry;->b:I

    if-eq v2, v4, :cond_32

    iget v2, p0, Lorg/columba/ristretto/imap/SequenceEntry;->b:I

    if-ne v2, v4, :cond_34

    :cond_32
    move v1, v0

    goto :goto_d

    .line 132
    :cond_34
    iget v2, p0, Lorg/columba/ristretto/imap/SequenceEntry;->type:I

    if-ne v2, v1, :cond_46

    iget v2, p0, Lorg/columba/ristretto/imap/SequenceEntry;->a:I

    iget v3, p1, Lorg/columba/ristretto/imap/SequenceEntry;->a:I

    if-gt v2, v3, :cond_46

    iget v2, p0, Lorg/columba/ristretto/imap/SequenceEntry;->b:I

    iget v3, p1, Lorg/columba/ristretto/imap/SequenceEntry;->a:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_d

    .line 133
    :cond_46
    iget v2, p0, Lorg/columba/ristretto/imap/SequenceEntry;->type:I

    if-ne v2, v1, :cond_58

    iget v2, p0, Lorg/columba/ristretto/imap/SequenceEntry;->a:I

    iget v3, p1, Lorg/columba/ristretto/imap/SequenceEntry;->b:I

    add-int/lit8 v3, v3, -0x1

    if-gt v2, v3, :cond_58

    iget v2, p0, Lorg/columba/ristretto/imap/SequenceEntry;->b:I

    iget v3, p1, Lorg/columba/ristretto/imap/SequenceEntry;->b:I

    if-ge v2, v3, :cond_d

    .line 134
    :cond_58
    iget v2, p1, Lorg/columba/ristretto/imap/SequenceEntry;->type:I

    if-ne v2, v1, :cond_6a

    iget v2, p1, Lorg/columba/ristretto/imap/SequenceEntry;->a:I

    iget v3, p0, Lorg/columba/ristretto/imap/SequenceEntry;->a:I

    if-gt v2, v3, :cond_6a

    iget v2, p1, Lorg/columba/ristretto/imap/SequenceEntry;->b:I

    iget v3, p0, Lorg/columba/ristretto/imap/SequenceEntry;->a:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_d

    .line 135
    :cond_6a
    iget v2, p1, Lorg/columba/ristretto/imap/SequenceEntry;->type:I

    if-ne v2, v1, :cond_7c

    iget v2, p1, Lorg/columba/ristretto/imap/SequenceEntry;->a:I

    iget v3, p0, Lorg/columba/ristretto/imap/SequenceEntry;->b:I

    add-int/lit8 v3, v3, -0x1

    if-gt v2, v3, :cond_7c

    iget v2, p1, Lorg/columba/ristretto/imap/SequenceEntry;->b:I

    iget v3, p0, Lorg/columba/ristretto/imap/SequenceEntry;->b:I

    if-ge v2, v3, :cond_d

    .line 137
    :cond_7c
    iget v2, p0, Lorg/columba/ristretto/imap/SequenceEntry;->a:I

    iget v3, p1, Lorg/columba/ristretto/imap/SequenceEntry;->a:I

    sub-int/2addr v2, v3

    iget v3, p0, Lorg/columba/ristretto/imap/SequenceEntry;->a:I

    iget v4, p1, Lorg/columba/ristretto/imap/SequenceEntry;->a:I

    sub-int/2addr v3, v4

    mul-int/2addr v2, v3

    if-le v2, v1, :cond_96

    iget v2, p0, Lorg/columba/ristretto/imap/SequenceEntry;->b:I

    iget v3, p1, Lorg/columba/ristretto/imap/SequenceEntry;->b:I

    sub-int/2addr v2, v3

    iget v3, p0, Lorg/columba/ristretto/imap/SequenceEntry;->b:I

    iget v4, p1, Lorg/columba/ristretto/imap/SequenceEntry;->b:I

    sub-int/2addr v3, v4

    mul-int/2addr v2, v3

    if-gt v2, v1, :cond_97

    :cond_96
    move v0, v1

    :cond_97
    move v1, v0

    goto/16 :goto_d
.end method

.method public compareTo(Ljava/lang/Object;)I
    .registers 7
    .parameter "o"

    .prologue
    const/4 v4, 0x3

    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 188
    move-object v0, p1

    check-cast v0, Lorg/columba/ristretto/imap/SequenceEntry;

    .line 192
    .local v0, s:Lorg/columba/ristretto/imap/SequenceEntry;
    iget v3, p0, Lorg/columba/ristretto/imap/SequenceEntry;->type:I

    if-ne v3, v4, :cond_b

    .line 206
    :cond_a
    :goto_a
    return v1

    .line 193
    :cond_b
    iget v3, v0, Lorg/columba/ristretto/imap/SequenceEntry;->type:I

    if-ne v3, v4, :cond_11

    move v1, v2

    goto :goto_a

    .line 201
    :cond_11
    iget v3, v0, Lorg/columba/ristretto/imap/SequenceEntry;->a:I

    if-eq v3, v1, :cond_a

    .line 202
    iget v3, p0, Lorg/columba/ristretto/imap/SequenceEntry;->a:I

    if-ne v3, v1, :cond_1b

    move v1, v2

    goto :goto_a

    .line 206
    :cond_1b
    iget v3, p0, Lorg/columba/ristretto/imap/SequenceEntry;->a:I

    iget v4, v0, Lorg/columba/ristretto/imap/SequenceEntry;->a:I

    if-lt v3, v4, :cond_a

    move v1, v2

    goto :goto_a
.end method

.method public getA()I
    .registers 2

    .prologue
    .line 234
    iget v0, p0, Lorg/columba/ristretto/imap/SequenceEntry;->a:I

    return v0
.end method

.method public getB()I
    .registers 2

    .prologue
    .line 240
    iget v0, p0, Lorg/columba/ristretto/imap/SequenceEntry;->b:I

    return v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 246
    iget v0, p0, Lorg/columba/ristretto/imap/SequenceEntry;->type:I

    return v0
.end method

.method public merge(Lorg/columba/ristretto/imap/SequenceEntry;)V
    .registers 7
    .parameter "s"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 148
    iget v0, p1, Lorg/columba/ristretto/imap/SequenceEntry;->type:I

    if-eq v0, v3, :cond_b

    iget v0, p0, Lorg/columba/ristretto/imap/SequenceEntry;->type:I

    if-ne v0, v3, :cond_e

    .line 149
    :cond_b
    iput v3, p0, Lorg/columba/ristretto/imap/SequenceEntry;->type:I

    .line 182
    :cond_d
    :goto_d
    return-void

    .line 153
    :cond_e
    iget v0, p0, Lorg/columba/ristretto/imap/SequenceEntry;->type:I

    if-ne v0, v4, :cond_2e

    iget v0, p1, Lorg/columba/ristretto/imap/SequenceEntry;->b:I

    iget v1, p0, Lorg/columba/ristretto/imap/SequenceEntry;->a:I

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_2e

    .line 154
    iput v4, p0, Lorg/columba/ristretto/imap/SequenceEntry;->type:I

    .line 155
    iget v0, p1, Lorg/columba/ristretto/imap/SequenceEntry;->a:I

    iget v1, p0, Lorg/columba/ristretto/imap/SequenceEntry;->a:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/columba/ristretto/imap/SequenceEntry;->b:I

    iput v0, p0, Lorg/columba/ristretto/imap/SequenceEntry;->a:I

    .line 156
    iget v0, p0, Lorg/columba/ristretto/imap/SequenceEntry;->a:I

    if-ne v0, v2, :cond_2e

    iput v3, p0, Lorg/columba/ristretto/imap/SequenceEntry;->type:I

    .line 159
    :cond_2e
    iget v0, p1, Lorg/columba/ristretto/imap/SequenceEntry;->type:I

    if-ne v0, v4, :cond_4f

    iget v0, p0, Lorg/columba/ristretto/imap/SequenceEntry;->b:I

    iget v1, p1, Lorg/columba/ristretto/imap/SequenceEntry;->a:I

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_4f

    .line 160
    iput v4, p0, Lorg/columba/ristretto/imap/SequenceEntry;->type:I

    .line 161
    iget v0, p1, Lorg/columba/ristretto/imap/SequenceEntry;->a:I

    iget v1, p0, Lorg/columba/ristretto/imap/SequenceEntry;->a:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/columba/ristretto/imap/SequenceEntry;->b:I

    iput v0, p0, Lorg/columba/ristretto/imap/SequenceEntry;->a:I

    .line 162
    iget v0, p0, Lorg/columba/ristretto/imap/SequenceEntry;->a:I

    if-ne v0, v2, :cond_d

    iput v3, p0, Lorg/columba/ristretto/imap/SequenceEntry;->type:I

    goto :goto_d

    .line 166
    :cond_4f
    iget v0, p0, Lorg/columba/ristretto/imap/SequenceEntry;->type:I

    if-ne v0, v2, :cond_7a

    iget v0, p0, Lorg/columba/ristretto/imap/SequenceEntry;->a:I

    iget v1, p1, Lorg/columba/ristretto/imap/SequenceEntry;->a:I

    if-le v0, v1, :cond_5f

    iget v0, p0, Lorg/columba/ristretto/imap/SequenceEntry;->b:I

    iget v1, p1, Lorg/columba/ristretto/imap/SequenceEntry;->b:I

    if-lt v0, v1, :cond_7a

    .line 167
    :cond_5f
    iget v0, p1, Lorg/columba/ristretto/imap/SequenceEntry;->a:I

    iget v1, p0, Lorg/columba/ristretto/imap/SequenceEntry;->a:I

    if-ge v0, v1, :cond_74

    iget v0, p1, Lorg/columba/ristretto/imap/SequenceEntry;->a:I

    :goto_67
    iput v0, p0, Lorg/columba/ristretto/imap/SequenceEntry;->a:I

    .line 168
    iget v0, p1, Lorg/columba/ristretto/imap/SequenceEntry;->b:I

    iget v1, p0, Lorg/columba/ristretto/imap/SequenceEntry;->b:I

    if-le v0, v1, :cond_77

    iget v0, p1, Lorg/columba/ristretto/imap/SequenceEntry;->b:I

    :goto_71
    iput v0, p0, Lorg/columba/ristretto/imap/SequenceEntry;->b:I

    goto :goto_d

    .line 167
    :cond_74
    iget v0, p0, Lorg/columba/ristretto/imap/SequenceEntry;->a:I

    goto :goto_67

    .line 168
    :cond_77
    iget v0, p0, Lorg/columba/ristretto/imap/SequenceEntry;->b:I

    goto :goto_71

    .line 172
    :cond_7a
    iget v0, p1, Lorg/columba/ristretto/imap/SequenceEntry;->type:I

    if-ne v0, v2, :cond_a8

    iget v0, p1, Lorg/columba/ristretto/imap/SequenceEntry;->a:I

    iget v1, p0, Lorg/columba/ristretto/imap/SequenceEntry;->a:I

    if-le v0, v1, :cond_8a

    iget v0, p1, Lorg/columba/ristretto/imap/SequenceEntry;->b:I

    iget v1, p0, Lorg/columba/ristretto/imap/SequenceEntry;->b:I

    if-lt v0, v1, :cond_a8

    .line 173
    :cond_8a
    iput v2, p0, Lorg/columba/ristretto/imap/SequenceEntry;->type:I

    .line 174
    iget v0, p1, Lorg/columba/ristretto/imap/SequenceEntry;->a:I

    iget v1, p0, Lorg/columba/ristretto/imap/SequenceEntry;->a:I

    if-ge v0, v1, :cond_a2

    iget v0, p1, Lorg/columba/ristretto/imap/SequenceEntry;->a:I

    :goto_94
    iput v0, p0, Lorg/columba/ristretto/imap/SequenceEntry;->a:I

    .line 175
    iget v0, p1, Lorg/columba/ristretto/imap/SequenceEntry;->b:I

    iget v1, p0, Lorg/columba/ristretto/imap/SequenceEntry;->b:I

    if-le v0, v1, :cond_a5

    iget v0, p1, Lorg/columba/ristretto/imap/SequenceEntry;->b:I

    :goto_9e
    iput v0, p0, Lorg/columba/ristretto/imap/SequenceEntry;->b:I

    goto/16 :goto_d

    .line 174
    :cond_a2
    iget v0, p0, Lorg/columba/ristretto/imap/SequenceEntry;->a:I

    goto :goto_94

    .line 175
    :cond_a5
    iget v0, p0, Lorg/columba/ristretto/imap/SequenceEntry;->b:I

    goto :goto_9e

    .line 179
    :cond_a8
    iput v2, p0, Lorg/columba/ristretto/imap/SequenceEntry;->type:I

    .line 180
    iget v0, p1, Lorg/columba/ristretto/imap/SequenceEntry;->a:I

    iget v1, p0, Lorg/columba/ristretto/imap/SequenceEntry;->a:I

    if-ge v0, v1, :cond_c0

    iget v0, p1, Lorg/columba/ristretto/imap/SequenceEntry;->a:I

    :goto_b2
    iput v0, p0, Lorg/columba/ristretto/imap/SequenceEntry;->a:I

    .line 181
    iget v0, p1, Lorg/columba/ristretto/imap/SequenceEntry;->b:I

    iget v1, p0, Lorg/columba/ristretto/imap/SequenceEntry;->b:I

    if-le v0, v1, :cond_c3

    iget v0, p1, Lorg/columba/ristretto/imap/SequenceEntry;->b:I

    :goto_bc
    iput v0, p0, Lorg/columba/ristretto/imap/SequenceEntry;->b:I

    goto/16 :goto_d

    .line 180
    :cond_c0
    iget v0, p0, Lorg/columba/ristretto/imap/SequenceEntry;->a:I

    goto :goto_b2

    .line 181
    :cond_c3
    iget v0, p0, Lorg/columba/ristretto/imap/SequenceEntry;->b:I

    goto :goto_bc
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 212
    iget v0, p0, Lorg/columba/ristretto/imap/SequenceEntry;->type:I

    packed-switch v0, :pswitch_data_58

    .line 228
    const/4 v0, 0x0

    :goto_6
    return-object v0

    .line 213
    :pswitch_7
    const-string v0, "1:*"

    goto :goto_6

    .line 216
    :pswitch_a
    iget v0, p0, Lorg/columba/ristretto/imap/SequenceEntry;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_12

    .line 217
    const-string v0, "*"

    goto :goto_6

    .line 219
    :cond_12
    iget v0, p0, Lorg/columba/ristretto/imap/SequenceEntry;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 223
    :pswitch_19
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lorg/columba/ristretto/imap/SequenceEntry;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/columba/ristretto/imap/SequenceEntry;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 225
    :pswitch_3d
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lorg/columba/ristretto/imap/SequenceEntry;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ":*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 212
    nop

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_a
        :pswitch_19
        :pswitch_3d
        :pswitch_7
    .end packed-switch
.end method
