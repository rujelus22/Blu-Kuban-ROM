.class public LsI;
.super LsB;
.source "FoldersThenTitleGrouper.java"


# static fields
.field private static final a:LsM;


# instance fields
.field private final a:Landroid/content/Context;

.field private a:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<[",
            "LnC;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final a:LdQ;

.field private final a:Ljava/text/Collator;

.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    sget-object v0, LsU;->a:LsU;

    sput-object v0, LsI;->a:LsM;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;LdQ;Ljava/lang/String;Ljava/util/Locale;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    sget-object v0, LMk;->a:LMk;

    invoke-virtual {v0}, LMk;->a()LLV;

    move-result-object v0

    invoke-virtual {v0}, LLV;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, LsC;->a:LsC;

    invoke-direct {p0, v0, v1}, LsB;-><init>(Ljava/lang/String;LsC;)V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, LsI;->c:Ljava/lang/String;

    .line 78
    iput-object p1, p0, LsI;->a:Landroid/content/Context;

    .line 79
    iput-object p3, p0, LsI;->b:Ljava/lang/String;

    .line 82
    invoke-static {p4}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, LsI;->a:Ljava/text/Collator;

    .line 83
    iget-object v0, p0, LsI;->a:Ljava/text/Collator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 84
    iput-object p2, p0, LsI;->a:LdQ;

    .line 85
    return-void
.end method

.method constructor <init>(Lcom/google/android/apps/docs/RoboFragmentActivity;)V
    .registers 5
    .parameter

    .prologue
    .line 64
    const-class v0, LdQ;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/apps/docs/RoboFragmentActivity;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LdQ;

    sget v1, LcY;->alphabet_set:I

    invoke-virtual {p1, v1}, Lcom/google/android/apps/docs/RoboFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, LsI;-><init>(Landroid/content/Context;LdQ;Ljava/lang/String;Ljava/util/Locale;)V

    .line 66
    return-void
.end method

.method private a(Landroid/database/Cursor;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 197
    invoke-static {p1}, LMj;->a(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-static {v0}, LkT;->a(Ljava/lang/String;)LkU;

    move-result-object v0

    .line 199
    sget-object v1, LkU;->h:LkU;

    if-ne v0, v1, :cond_11

    .line 200
    invoke-direct {p0}, LsI;->d()Ljava/lang/String;

    move-result-object v0

    .line 203
    :goto_10
    return-object v0

    .line 202
    :cond_11
    invoke-virtual {p0}, LsI;->c()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 203
    invoke-virtual {p0, v0}, LsI;->a(Ljava/lang/String;)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_10
.end method

.method private d()Ljava/lang/String;
    .registers 4

    .prologue
    .line 207
    iget-object v0, p0, LsI;->c:Ljava/lang/String;

    if-nez v0, :cond_14

    .line 208
    iget-object v0, p0, LsI;->a:Landroid/content/Context;

    iget-object v1, p0, LsI;->a:LdQ;

    sget v2, LcY;->fast_scroll_title_grouper_collections:I

    invoke-virtual {v1, v2}, LdQ;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LsI;->c:Ljava/lang/String;

    .line 211
    :cond_14
    iget-object v0, p0, LsI;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method a(Ljava/lang/String;)C
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 142
    invoke-virtual {p0}, LsI;->a()Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, LsI;->a:Ljava/text/Collator;

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v1

    .line 146
    if-ltz v1, :cond_1c

    .line 147
    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 154
    :goto_1b
    return v0

    .line 150
    :cond_1c
    const/4 v2, -0x1

    if-ne v1, v2, :cond_22

    .line 151
    const/16 v0, 0x20

    goto :goto_1b

    .line 154
    :cond_22
    add-int/lit8 v1, v1, 0x1

    neg-int v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_1b
.end method

.method public a()I
    .registers 2

    .prologue
    .line 222
    const/16 v0, 0x1a

    return v0
.end method

.method a()Landroid/util/Pair;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<[",
            "LnC;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 89
    iget-object v0, p0, LsI;->a:Landroid/util/Pair;

    if-nez v0, :cond_7c

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, LsI;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 94
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v4, v1, v0}, Ljava/lang/String;->codePointCount(II)I

    move-result v0

    new-array v5, v0, [Ljava/lang/String;

    move v0, v1

    move v3, v1

    .line 97
    :goto_26
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v3, v2, :cond_43

    .line 98
    invoke-virtual {v4, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    .line 99
    add-int/lit8 v2, v0, 0x1

    add-int v7, v3, v6

    invoke-virtual {v4, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v0

    .line 100
    add-int v0, v3, v6

    move v3, v0

    move v0, v2

    .line 101
    goto :goto_26

    .line 103
    :cond_43
    iget-object v0, p0, LsI;->a:Ljava/text/Collator;

    invoke-static {v5, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 107
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 108
    new-instance v0, LnC;

    invoke-direct {p0}, LsI;->d()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const-string v6, ""

    invoke-direct {v0, v3, v4, v6}, LnC;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    array-length v3, v5

    move v0, v1

    :goto_5e
    if-ge v0, v3, :cond_6d

    aget-object v4, v5, v0

    .line 110
    new-instance v6, LnC;

    invoke-direct {v6, v4, v1, v4}, LnC;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_5e

    .line 112
    :cond_6d
    new-array v0, v1, [LnC;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LnC;

    .line 117
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v0, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, LsI;->a:Landroid/util/Pair;

    .line 119
    :cond_7c
    iget-object v0, p0, LsI;->a:Landroid/util/Pair;

    return-object v0
.end method

.method public a()Landroid/widget/SectionIndexer;
    .registers 6

    .prologue
    .line 216
    new-instance v1, LnA;

    iget-object v2, p0, LsI;->a:Landroid/database/Cursor;

    iget-object v3, p0, LsI;->a:Ljava/text/Collator;

    invoke-virtual {p0}, LsI;->c()I

    move-result v4

    invoke-virtual {p0}, LsI;->a()Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, [LnC;

    invoke-direct {v1, v2, v3, v4, v0}, LnA;-><init>(Landroid/database/Cursor;Ljava/text/Collator;I[LnC;)V

    return-object v1
.end method

.method public a()LsM;
    .registers 4

    .prologue
    .line 161
    const/4 v0, 0x0

    .line 162
    iget-object v1, p0, LsI;->a:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 163
    iget-object v0, p0, LsI;->a:Landroid/database/Cursor;

    invoke-direct {p0, v0}, LsI;->a(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    .line 164
    iget-object v1, p0, LsI;->a:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 171
    :goto_14
    iget-object v1, p0, LsI;->a:Landroid/database/Cursor;

    invoke-direct {p0, v1}, LsI;->a(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    .line 174
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 175
    sget-object v0, LsI;->a:LsM;

    .line 178
    :goto_22
    return-object v0

    .line 166
    :cond_23
    iget-object v1, p0, LsI;->a:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto :goto_14

    .line 178
    :cond_2a
    new-instance v0, LsJ;

    invoke-direct {v0, p0, v1}, LsJ;-><init>(LsI;Ljava/lang/String;)V

    goto :goto_22
.end method

.method public b()I
    .registers 2

    .prologue
    .line 227
    const/16 v0, 0x12c

    return v0
.end method

.method protected b()Ljava/lang/String;
    .registers 3

    .prologue
    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, LMk;->p:LMk;

    invoke-virtual {v1}, LMk;->a()LLV;

    move-result-object v1

    invoke-virtual {v1}, LLV;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " <> \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, LkU;->h:LkU;

    invoke-virtual {v1}, LkU;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "upper(trim("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LsI;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")) COLLATE LOCALIZED,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " trim("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LsI;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") COLLATE LOCALIZED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
