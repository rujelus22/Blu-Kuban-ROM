.class Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;
.super Ljava/lang/Object;
.source "ExpandableDictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/ExpandableDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NextWord"
.end annotation


# instance fields
.field private mFrequency:I

.field public final mWord:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;


# direct methods
.method public constructor <init>(Lcom/android/inputmethod/latin/ExpandableDictionary$Node;I)V
    .registers 3
    .parameter "word"
    .parameter "frequency"

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;->mWord:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;

    .line 90
    iput p2, p0, Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;->mFrequency:I

    .line 91
    return-void
.end method


# virtual methods
.method public addFrequency(I)I
    .registers 4
    .parameter "add"

    .prologue
    const/16 v1, 0xff

    .line 103
    iget v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;->mFrequency:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;->mFrequency:I

    .line 104
    iget v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;->mFrequency:I

    if-le v0, v1, :cond_d

    iput v1, p0, Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;->mFrequency:I

    .line 105
    :cond_d
    iget v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;->mFrequency:I

    return v0
.end method

.method public getFrequency()I
    .registers 2

    .prologue
    .line 94
    iget v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;->mFrequency:I

    return v0
.end method

.method public setFrequency(I)I
    .registers 3
    .parameter "freq"

    .prologue
    .line 98
    iput p1, p0, Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;->mFrequency:I

    .line 99
    iget v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;->mFrequency:I

    return v0
.end method
