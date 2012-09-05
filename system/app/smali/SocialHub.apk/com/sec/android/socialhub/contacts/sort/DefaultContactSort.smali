.class public Lcom/sec/android/socialhub/contacts/sort/DefaultContactSort;
.super Ljava/lang/Object;
.source "DefaultContactSort.java"

# interfaces
.implements Lcom/sec/android/socialhub/feature/FeatureFactory$ContactSort;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getColumnForSortIndex()I
    .registers 2

    .prologue
    .line 48
    const/4 v0, 0x3

    return v0
.end method

.method public getIndexCharacter(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "context"
    .parameter "name"

    .prologue
    const v5, 0xac00

    .line 54
    const-string v3, ""

    .line 56
    .local v3, ret:Ljava/lang/String;
    if-eqz p2, :cond_2c

    .line 58
    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 60
    .local v1, ch:C
    if-lt v1, v5, :cond_2d

    const v4, 0xd7a3

    if-gt v1, v4, :cond_2d

    .line 62
    sub-int v0, v1, v5

    .line 63
    .local v0, base:I
    div-int/lit16 v2, v0, 0x24c

    .line 64
    .local v2, index:I
    sget-object v4, Lcom/sec/android/socialhub/contacts/sort/DefaultContactSort;->INITIAL:[C

    aget-char v1, v4, v2

    .line 79
    .end local v0           #base:I
    .end local v2           #index:I
    :cond_1b
    :goto_1b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 82
    .end local v1           #ch:C
    :cond_2c
    return-object v3

    .line 66
    .restart local v1       #ch:C
    :cond_2d
    const/16 v4, 0x61

    if-lt v1, v4, :cond_39

    const/16 v4, 0x7a

    if-gt v1, v4, :cond_39

    .line 68
    add-int/lit8 v4, v1, -0x20

    int-to-char v1, v4

    goto :goto_1b

    .line 70
    :cond_39
    const/16 v4, 0x41

    if-lt v1, v4, :cond_41

    const/16 v4, 0x5a

    if-le v1, v4, :cond_1b

    .line 76
    :cond_41
    const/16 v1, 0x23

    goto :goto_1b
.end method

.method public getOrderBy()Ljava/lang/String;
    .registers 4

    .prologue
    .line 88
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 89
    .local v0, lc:Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, mLocale:Ljava/lang/String;
    const-string v2, "ko"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    const-string v2, "ja"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    const-string v2, "zh"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 92
    :cond_20
    const-string v2, "UPPER(display_name) COLLATE LOCALIZED ASC"

    .line 94
    :goto_22
    return-object v2

    :cond_23
    const-string v2, "UPPER(display_name) ASC"

    goto :goto_22
.end method

.method public getProjection()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 100
    sget-object v0, Lcom/sec/android/socialhub/contacts/ContactWrapper;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method public getSearchCondition(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "str"

    .prologue
    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/android/socialhub/contacts/ContactWrapper;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " like \'%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, condition:Ljava/lang/String;
    return-object v0
.end method
