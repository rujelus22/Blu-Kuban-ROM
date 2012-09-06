.class final Lcom/google/android/apps/translate/history/BaseDb$1;
.super Ljava/lang/Object;
.source "BaseDb.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/translate/history/BaseDb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/android/apps/translate/history/Entry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/android/apps/translate/history/Entry;Lcom/google/android/apps/translate/history/Entry;)I
    .registers 9
    .parameter "entry1"
    .parameter "entry2"

    .prologue
    .line 58
    if-ne p1, p2, :cond_4

    .line 59
    const/4 v3, 0x0

    .line 80
    :cond_3
    :goto_3
    return v3

    .line 61
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/apps/translate/history/Entry;->getInputText()Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, input1:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/google/android/apps/translate/history/Entry;->getInputText()Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, input2:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    .line 64
    .local v3, result:I
    if-eqz v3, :cond_1b

    .line 67
    sget-object v4, Lcom/google/android/apps/translate/history/BaseDb;->COLLATOR:Ljava/text/Collator;

    invoke-virtual {v4, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 68
    .local v0, collatorResult:I
    if-eqz v0, :cond_1b

    .line 69
    move v3, v0

    .line 72
    .end local v0           #collatorResult:I
    :cond_1b
    if-nez v3, :cond_29

    .line 73
    invoke-virtual {p1}, Lcom/google/android/apps/translate/history/Entry;->getFromLanguageShortName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/google/android/apps/translate/history/Entry;->getFromLanguageShortName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    .line 76
    :cond_29
    if-nez v3, :cond_3

    .line 77
    invoke-virtual {p1}, Lcom/google/android/apps/translate/history/Entry;->getToLanguageShortName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/google/android/apps/translate/history/Entry;->getToLanguageShortName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    goto :goto_3
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    check-cast p1, Lcom/google/android/apps/translate/history/Entry;

    .end local p1
    check-cast p2, Lcom/google/android/apps/translate/history/Entry;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/translate/history/BaseDb$1;->compare(Lcom/google/android/apps/translate/history/Entry;Lcom/google/android/apps/translate/history/Entry;)I

    move-result v0

    return v0
.end method
