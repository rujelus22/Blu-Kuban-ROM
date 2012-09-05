.class public Lcom/sec/android/socialhub/contacts/sort/ChinaContactSort;
.super Ljava/lang/Object;
.source "ChinaContactSort.java"

# interfaces
.implements Lcom/sec/android/socialhub/feature/FeatureFactory$ContactSort;


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 12
    sget-object v1, Lcom/sec/android/socialhub/contacts/ContactWrapper;->PROJECTION:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lcom/sec/android/socialhub/contacts/sort/ChinaContactSort;->PROJECTION:[Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    .local v0, index:I
    :goto_a
    sget-object v1, Lcom/sec/android/socialhub/contacts/ContactWrapper;->PROJECTION:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1a

    .line 18
    sget-object v1, Lcom/sec/android/socialhub/contacts/sort/ChinaContactSort;->PROJECTION:[Ljava/lang/String;

    sget-object v2, Lcom/sec/android/socialhub/contacts/ContactWrapper;->PROJECTION:[Ljava/lang/String;

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    .line 16
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 20
    :cond_1a
    sget-object v1, Lcom/sec/android/socialhub/contacts/sort/ChinaContactSort;->PROJECTION:[Ljava/lang/String;

    sget-object v2, Lcom/sec/android/socialhub/contacts/ContactWrapper;->PROJECTION:[Ljava/lang/String;

    array-length v2, v2

    const-string v3, "sort_key"

    aput-object v3, v1, v2

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getColumnForSortIndex()I
    .registers 2

    .prologue
    .line 41
    sget-object v0, Lcom/sec/android/socialhub/contacts/sort/ChinaContactSort;->PROJECTION:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getIndexCharacter(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "context"
    .parameter "name"

    .prologue
    const v5, 0xac00

    .line 47
    const-string v3, ""

    .line 49
    .local v3, ret:Ljava/lang/String;
    if-eqz p2, :cond_2c

    .line 51
    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 54
    .local v1, ch:C
    if-lt v1, v5, :cond_2d

    const v4, 0xd7a3

    if-gt v1, v4, :cond_2d

    .line 56
    sub-int v0, v1, v5

    .line 57
    .local v0, base:I
    div-int/lit16 v2, v0, 0x24c

    .line 58
    .local v2, index:I
    sget-object v4, Lcom/sec/android/socialhub/contacts/sort/ChinaContactSort;->INITIAL:[C

    aget-char v1, v4, v2

    .line 74
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

    .line 77
    .end local v1           #ch:C
    :cond_2c
    return-object v3

    .line 61
    .restart local v1       #ch:C
    :cond_2d
    const/16 v4, 0x61

    if-lt v1, v4, :cond_39

    const/16 v4, 0x7a

    if-gt v1, v4, :cond_39

    .line 63
    add-int/lit8 v4, v1, -0x20

    int-to-char v1, v4

    goto :goto_1b

    .line 65
    :cond_39
    const/16 v4, 0x41

    if-lt v1, v4, :cond_41

    const/16 v4, 0x5a

    if-le v1, v4, :cond_1b

    .line 71
    :cond_41
    const/16 v1, 0x23

    goto :goto_1b
.end method

.method public getOrderBy()Ljava/lang/String;
    .registers 2

    .prologue
    .line 83
    const-string v0, "UPPER(sort_key) COLLATE LOCALIZED ASC"

    return-object v0
.end method

.method public getProjection()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 89
    sget-object v0, Lcom/sec/android/socialhub/contacts/sort/ChinaContactSort;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method public getSearchCondition(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "str"

    .prologue
    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/android/socialhub/contacts/sort/ChinaContactSort;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " like \'%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%\' or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/socialhub/contacts/sort/ChinaContactSort;->PROJECTION:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/socialhub/contacts/sort/ChinaContactSort;->getColumnForSortIndex()I

    move-result v3

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

    .line 28
    .local v0, condition:Ljava/lang/String;
    return-object v0
.end method
