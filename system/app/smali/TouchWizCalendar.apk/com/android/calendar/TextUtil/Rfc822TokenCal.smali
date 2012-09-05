.class public Lcom/android/calendar/TextUtil/Rfc822TokenCal;
.super Ljava/lang/Object;
.source "Rfc822TokenCal.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mComment:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mPhoneNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const-string v0, "Rfc822TokenCal"

    sput-object v0, Lcom/android/calendar/TextUtil/Rfc822TokenCal;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "name"
    .parameter "address"
    .parameter "comment"
    .parameter "phone"

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/calendar/TextUtil/Rfc822TokenCal;->mName:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/android/calendar/TextUtil/Rfc822TokenCal;->mAddress:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/android/calendar/TextUtil/Rfc822TokenCal;->mComment:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lcom/android/calendar/TextUtil/Rfc822TokenCal;->mPhoneNumber:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public static quoteComment(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "comment"

    .prologue
    const/16 v5, 0x5c

    .line 186
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 187
    .local v2, len:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .local v3, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    if-ge v1, v2, :cond_25

    .line 190
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 192
    .local v0, c:C
    const/16 v4, 0x28

    if-eq v0, v4, :cond_1c

    const/16 v4, 0x29

    if-eq v0, v4, :cond_1c

    if-ne v0, v5, :cond_1f

    .line 193
    :cond_1c
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 196
    :cond_1f
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 189
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 199
    .end local v0           #c:C
    :cond_25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static quoteName(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "name"

    .prologue
    const/16 v5, 0x5c

    .line 164
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .local v3, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 167
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    if-ge v1, v2, :cond_21

    .line 168
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 170
    .local v0, c:C
    if-eq v0, v5, :cond_18

    const/16 v4, 0x22

    if-ne v0, v4, :cond_1b

    .line 171
    :cond_18
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 174
    :cond_1b
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 167
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 177
    .end local v0           #c:C
    :cond_21
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static quoteNameIfNecessary(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "name"

    .prologue
    const/16 v5, 0x22

    .line 145
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 147
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v2, :cond_42

    .line 148
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 150
    .local v0, c:C
    const/16 v3, 0x41

    if-lt v0, v3, :cond_15

    const/16 v3, 0x5a

    if-le v0, v3, :cond_43

    :cond_15
    const/16 v3, 0x61

    if-lt v0, v3, :cond_1d

    const/16 v3, 0x7a

    if-le v0, v3, :cond_43

    :cond_1d
    const/16 v3, 0x20

    if-eq v0, v3, :cond_43

    const/16 v3, 0x30

    if-lt v0, v3, :cond_29

    const/16 v3, 0x39

    if-le v0, v3, :cond_43

    .line 151
    :cond_29
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Lcom/android/calendar/TextUtil/Rfc822TokenCal;->quoteName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 155
    .end local v0           #c:C
    .end local p0
    :cond_42
    return-object p0

    .line 147
    .restart local v0       #c:C
    .restart local p0
    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_7
.end method

.method private static stringEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .parameter "a"
    .parameter "b"

    .prologue
    .line 216
    if-nez p0, :cond_8

    .line 217
    if-nez p1, :cond_6

    const/4 v0, 0x1

    .line 219
    :goto_5
    return v0

    .line 217
    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    .line 219
    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 224
    instance-of v2, p1, Lcom/android/calendar/TextUtil/Rfc822TokenCal;

    if-nez v2, :cond_6

    .line 228
    :cond_5
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 227
    check-cast v0, Lcom/android/calendar/TextUtil/Rfc822TokenCal;

    .line 228
    .local v0, other:Lcom/android/calendar/TextUtil/Rfc822TokenCal;
    iget-object v2, p0, Lcom/android/calendar/TextUtil/Rfc822TokenCal;->mName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/calendar/TextUtil/Rfc822TokenCal;->mName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/calendar/TextUtil/Rfc822TokenCal;->stringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/calendar/TextUtil/Rfc822TokenCal;->mAddress:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/calendar/TextUtil/Rfc822TokenCal;->mAddress:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/calendar/TextUtil/Rfc822TokenCal;->stringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/calendar/TextUtil/Rfc822TokenCal;->mComment:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/calendar/TextUtil/Rfc822TokenCal;->mComment:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/calendar/TextUtil/Rfc822TokenCal;->stringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/calendar/TextUtil/Rfc822TokenCal;->mPhoneNumber:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/calendar/TextUtil/Rfc822TokenCal;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/calendar/TextUtil/Rfc822TokenCal;->stringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x1

    goto :goto_5
.end method

.method public getAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/calendar/TextUtil/Rfc822TokenCal;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplay()Ljava/lang/String;
    .registers 3

    .prologue
    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, display:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/calendar/TextUtil/Rfc822TokenCal;->mName:Ljava/lang/String;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/calendar/TextUtil/Rfc822TokenCal;->mName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_10

    .line 73
    iget-object v0, p0, Lcom/android/calendar/TextUtil/Rfc822TokenCal;->mName:Ljava/lang/String;

    .line 79
    :cond_f
    :goto_f
    return-object v0

    .line 74
    :cond_10
    iget-object v1, p0, Lcom/android/calendar/TextUtil/Rfc822TokenCal;->mAddress:Ljava/lang/String;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/android/calendar/TextUtil/Rfc822TokenCal;->mAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1f

    .line 75
    iget-object v0, p0, Lcom/android/calendar/TextUtil/Rfc822TokenCal;->mAddress:Ljava/lang/String;

    goto :goto_f

    .line 76
    :cond_1f
    iget-object v1, p0, Lcom/android/calendar/TextUtil/Rfc822TokenCal;->mPhoneNumber:Ljava/lang/String;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/calendar/TextUtil/Rfc822TokenCal;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_f

    .line 77
    iget-object v0, p0, Lcom/android/calendar/TextUtil/Rfc822TokenCal;->mPhoneNumber:Ljava/lang/String;

    goto :goto_f
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/calendar/TextUtil/Rfc822TokenCal;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 203
    const/16 v0, 0x11

    .line 204
    .local v0, result:I
    iget-object v1, p0, Lcom/android/calendar/TextUtil/Rfc822TokenCal;->mName:Ljava/lang/String;

    if-eqz v1, :cond_e

    .line 205
    iget-object v1, p0, Lcom/android/calendar/TextUtil/Rfc822TokenCal;->mName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 206
    :cond_e
    iget-object v1, p0, Lcom/android/calendar/TextUtil/Rfc822TokenCal;->mAddress:Ljava/lang/String;

    if-eqz v1, :cond_1c

    .line 207
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/calendar/TextUtil/Rfc822TokenCal;->mAddress:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 208
    :cond_1c
    iget-object v1, p0, Lcom/android/calendar/TextUtil/Rfc822TokenCal;->mComment:Ljava/lang/String;

    if-eqz v1, :cond_2a

    .line 209
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/calendar/TextUtil/Rfc822TokenCal;->mComment:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 210
    :cond_2a
    iget-object v1, p0, Lcom/android/calendar/TextUtil/Rfc822TokenCal;->mPhoneNumber:Ljava/lang/String;

    if-eqz v1, :cond_38

    .line 211
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/calendar/TextUtil/Rfc822TokenCal;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 212
    :cond_38
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .local v0, sb:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/calendar/TextUtil/Rfc822TokenCal;->mName:Ljava/lang/String;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/android/calendar/TextUtil/Rfc822TokenCal;->mName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1f

    .line 116
    iget-object v1, p0, Lcom/android/calendar/TextUtil/Rfc822TokenCal;->mName:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/calendar/TextUtil/Rfc822TokenCal;->quoteNameIfNecessary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 120
    :cond_1f
    iget-object v1, p0, Lcom/android/calendar/TextUtil/Rfc822TokenCal;->mComment:Ljava/lang/String;

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lcom/android/calendar/TextUtil/Rfc822TokenCal;->mComment:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3e

    .line 121
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 122
    iget-object v1, p0, Lcom/android/calendar/TextUtil/Rfc822TokenCal;->mComment:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/calendar/TextUtil/Rfc822TokenCal;->quoteComment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    :cond_3e
    iget-object v1, p0, Lcom/android/calendar/TextUtil/Rfc822TokenCal;->mAddress:Ljava/lang/String;

    if-eqz v1, :cond_4f

    iget-object v1, p0, Lcom/android/calendar/TextUtil/Rfc822TokenCal;->mAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4f

    .line 128
    iget-object v1, p0, Lcom/android/calendar/TextUtil/Rfc822TokenCal;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    :cond_4f
    iget-object v1, p0, Lcom/android/calendar/TextUtil/Rfc822TokenCal;->mPhoneNumber:Ljava/lang/String;

    if-eqz v1, :cond_60

    iget-object v1, p0, Lcom/android/calendar/TextUtil/Rfc822TokenCal;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_60

    .line 133
    iget-object v1, p0, Lcom/android/calendar/TextUtil/Rfc822TokenCal;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    :cond_60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
