.class public final Lalw;
.super Ljava/lang/Object;
.source "EmailAddress.java"


# static fields
.field private static final a:Lafl;

.field private static final b:Lafl;


# instance fields
.field protected a:Ljava/lang/String;

.field protected a:Z

.field protected b:Ljava/lang/String;

.field protected b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 14
    const-string v0, " \t\n\r\u000c\u000b\u0085\u2028\u2029\u200d\uffef\ufffd\ufffe\uffff"

    invoke-static {v0}, Lafl;->a(Ljava/lang/CharSequence;)Lafl;

    move-result-object v0

    sput-object v0, Lalw;->a:Lafl;

    .line 16
    const/4 v0, 0x0

    const/16 v1, 0x1f

    invoke-static {v0, v1}, Lafl;->a(CC)Lafl;

    move-result-object v0

    const/16 v1, 0x7f

    invoke-static {v1}, Lafl;->a(C)Lafl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lafl;->a(Lafl;)Lafl;

    move-result-object v0

    const-string v1, " @,:<>"

    invoke-static {v1}, Lafl;->a(Ljava/lang/CharSequence;)Lafl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lafl;->a(Lafl;)Lafl;

    move-result-object v0

    invoke-virtual {v0}, Lafl;->a()Lafl;

    move-result-object v0

    sput-object v0, Lalw;->b:Lafl;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    iput-boolean v0, p0, Lalw;->a:Z

    .line 250
    iput-object v1, p0, Lalw;->a:Ljava/lang/String;

    .line 251
    iput-object v1, p0, Lalw;->b:Ljava/lang/String;

    .line 252
    iput-boolean v0, p0, Lalw;->b:Z

    .line 43
    iput-boolean p2, p0, Lalw;->b:Z

    .line 44
    invoke-virtual {p0, p1}, Lalw;->a(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lalw;->a:Z

    .line 45
    return-void
.end method

.method private b()Z
    .registers 7

    .prologue
    const/4 v5, -0x1

    const/16 v4, 0x2e

    const/4 v0, 0x0

    .line 105
    iget-object v1, p0, Lalw;->a:Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lalw;->b:Ljava/lang/String;

    if-nez v1, :cond_d

    .line 177
    :cond_c
    :goto_c
    return v0

    .line 109
    :cond_d
    iget-object v1, p0, Lalw;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lalw;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_c

    .line 114
    sget-object v1, Lalw;->a:Lafl;

    iget-object v2, p0, Lalw;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lafl;->a(Ljava/lang/CharSequence;)I

    move-result v1

    if-gez v1, :cond_c

    .line 119
    iget-object v1, p0, Lalw;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_c

    .line 123
    iget-object v1, p0, Lalw;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 126
    if-eq v1, v5, :cond_c

    .line 131
    iget-object v2, p0, Lalw;->b:Ljava/lang/String;

    const-string v3, ".."

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_c

    .line 136
    iget-object v2, p0, Lalw;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v4, :cond_c

    .line 140
    iget-object v2, p0, Lalw;->b:Ljava/lang/String;

    const-string v3, "."

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 143
    iget-object v2, p0, Lalw;->b:Ljava/lang/String;

    iget-object v3, p0, Lalw;->b:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_66

    if-eq v1, v5, :cond_c

    .line 150
    :cond_66
    sget-object v1, Lalw;->b:Lafl;

    iget-object v2, p0, Lalw;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lafl;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-boolean v1, p0, Lalw;->b:Z

    if-nez v1, :cond_7e

    sget-object v1, Lafl;->c:Lafl;

    iget-object v2, p0, Lalw;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lafl;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 155
    :cond_7e
    iget-object v1, p0, Lalw;->a:Ljava/lang/String;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_91

    .line 156
    invoke-direct {p0}, Lalw;->c()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 177
    :cond_8e
    const/4 v0, 0x1

    goto/16 :goto_c

    .line 161
    :cond_91
    sget-object v1, Lalw;->a:Lafl;

    iget-object v2, p0, Lalw;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lafl;->a(Ljava/lang/CharSequence;)I

    move-result v1

    if-gez v1, :cond_c

    .line 166
    iget-object v1, p0, Lalw;->a:Ljava/lang/String;

    const-string v2, ".."

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_c

    .line 172
    sget-object v1, Lalw;->b:Lafl;

    iget-object v2, p0, Lalw;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lafl;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-boolean v1, p0, Lalw;->b:Z

    if-nez v1, :cond_8e

    sget-object v1, Lafl;->c:Lafl;

    iget-object v2, p0, Lalw;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lafl;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8e

    goto/16 :goto_c
.end method

.method private c()Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 181
    iget-object v0, p0, Lalw;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    .line 182
    if-lt v3, v2, :cond_16

    iget-object v0, p0, Lalw;->a:Ljava/lang/String;

    const-string v4, "\""

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    :cond_16
    move v0, v1

    .line 206
    :goto_17
    return v0

    :cond_18
    move v0, v2

    .line 188
    :goto_19
    if-ge v0, v3, :cond_4e

    .line 189
    iget-object v4, p0, Lalw;->a:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 190
    const/16 v5, 0x22

    if-eq v4, v5, :cond_3d

    const/16 v5, 0x7f

    if-eq v4, v5, :cond_3d

    const/16 v5, 0x20

    if-ge v4, v5, :cond_35

    sget-object v5, Lalw;->a:Lafl;

    invoke-virtual {v5, v4}, Lafl;->a(C)Z

    move-result v5

    if-eqz v5, :cond_3d

    :cond_35
    const/16 v5, 0x80

    if-lt v4, v5, :cond_3f

    iget-boolean v5, p0, Lalw;->b:Z

    if-nez v5, :cond_3f

    :cond_3d
    move v0, v1

    .line 195
    goto :goto_17

    .line 196
    :cond_3f
    const/16 v5, 0x5c

    if-ne v4, v5, :cond_49

    .line 197
    add-int/lit8 v4, v0, 0x1

    if-ge v4, v3, :cond_4c

    .line 198
    add-int/lit8 v0, v0, 0x1

    .line 188
    :cond_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_4c
    move v0, v1

    .line 201
    goto :goto_17

    :cond_4e
    move v0, v2

    .line 206
    goto :goto_17
.end method


# virtual methods
.method public a()Z
    .registers 2

    .prologue
    .line 227
    iget-boolean v0, p0, Lalw;->a:Z

    return v0
.end method

.method protected a(Ljava/lang/String;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 75
    if-nez p1, :cond_4

    .line 91
    :cond_3
    :goto_3
    return v0

    .line 81
    :cond_4
    const/16 v1, 0x40

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 82
    if-lez v1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_3

    .line 88
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lalw;->a:Ljava/lang/String;

    .line 89
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lalw;->b:Ljava/lang/String;

    .line 91
    invoke-direct {p0}, Lalw;->b()Z

    move-result v0

    goto :goto_3
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 211
    if-ne p0, p1, :cond_4

    .line 212
    const/4 v0, 0x1

    .line 218
    :goto_3
    return v0

    .line 214
    :cond_4
    instance-of v0, p1, Lalw;

    if-eqz v0, :cond_17

    .line 215
    check-cast p1, Lalw;

    .line 216
    invoke-virtual {p0}, Lalw;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lalw;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    .line 218
    :cond_17
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 223
    invoke-virtual {p0}, Lalw;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lalw;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lalw;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
