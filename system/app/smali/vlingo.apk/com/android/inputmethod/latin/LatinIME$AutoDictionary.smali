.class Lcom/android/inputmethod/latin/LatinIME$AutoDictionary;
.super Lcom/android/inputmethod/latin/ExpandableDictionary;
.source "LatinIME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/LatinIME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AutoDictionary"
.end annotation


# static fields
.field private static final PROMOTION_THRESHOLD:I = 0xf

.field private static final VALIDITY_THRESHOLD:I = 0x6


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/LatinIME;


# direct methods
.method public constructor <init>(Lcom/android/inputmethod/latin/LatinIME;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter "context"

    .prologue
    .line 1202
    iput-object p1, p0, Lcom/android/inputmethod/latin/LatinIME$AutoDictionary;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    .line 1203
    invoke-direct {p0, p2}, Lcom/android/inputmethod/latin/ExpandableDictionary;-><init>(Landroid/content/Context;)V

    .line 1204
    return-void
.end method


# virtual methods
.method public addWord(Ljava/lang/String;I)V
    .registers 7
    .parameter "word"
    .parameter "addFrequency"

    .prologue
    .line 1214
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1216
    .local v1, length:I
    const/4 v2, 0x2

    if-lt v1, v2, :cond_d

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME$AutoDictionary;->getMaxWordLength()I

    move-result v2

    if-le v1, v2, :cond_e

    .line 1222
    :cond_d
    :goto_d
    return-void

    .line 1217
    :cond_e
    invoke-super {p0, p1, p2}, Lcom/android/inputmethod/latin/ExpandableDictionary;->addWord(Ljava/lang/String;I)V

    .line 1218
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/LatinIME$AutoDictionary;->getWordFrequency(Ljava/lang/CharSequence;)I

    move-result v0

    .line 1219
    .local v0, freq:I
    const/16 v2, 0xf

    if-le v0, v2, :cond_d

    .line 1220
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME$AutoDictionary;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    const/16 v3, 0xfa

    invoke-virtual {v2, p1, v3}, Lcom/android/inputmethod/latin/LatinIME;->promoteToUserDictionary(Ljava/lang/String;I)V

    goto :goto_d
.end method

.method public isValidWord(Ljava/lang/CharSequence;)Z
    .registers 4
    .parameter "word"

    .prologue
    .line 1208
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/LatinIME$AutoDictionary;->getWordFrequency(Ljava/lang/CharSequence;)I

    move-result v0

    .line 1209
    .local v0, frequency:I
    const/4 v1, 0x6

    if-le v0, v1, :cond_9

    const/4 v1, 0x1

    :goto_8
    return v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method
