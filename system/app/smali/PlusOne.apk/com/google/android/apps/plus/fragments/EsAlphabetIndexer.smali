.class public Lcom/google/android/apps/plus/fragments/EsAlphabetIndexer;
.super Landroid/widget/AlphabetIndexer;
.source "EsAlphabetIndexer.java"


# direct methods
.method public constructor <init>(Landroid/database/Cursor;I)V
    .registers 4
    .parameter "cursor"
    .parameter "sortedColumnIndex"

    .prologue
    .line 21
    invoke-static {p1, p2}, Lcom/google/android/apps/plus/fragments/EsAlphabetIndexer;->computeAlphabet(Landroid/database/Cursor;I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    .line 22
    return-void
.end method

.method private static computeAlphabet(Landroid/database/Cursor;I)Ljava/lang/CharSequence;
    .registers 7
    .parameter "cursor"
    .parameter "sortedColumnIndex"

    .prologue
    .line 29
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .local v3, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 31
    .local v0, current:C
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 33
    :cond_c
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 34
    .local v2, name:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/apps/plus/util/StringUtils;->firstLetter(Ljava/lang/String;)C

    move-result v1

    .line 35
    .local v1, firstLetter:C
    if-eq v1, v0, :cond_1a

    .line 36
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    move v0, v1

    .line 40
    :cond_1a
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_c

    .line 42
    .end local v1           #firstLetter:C
    .end local v2           #name:Ljava/lang/String;
    :cond_20
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
