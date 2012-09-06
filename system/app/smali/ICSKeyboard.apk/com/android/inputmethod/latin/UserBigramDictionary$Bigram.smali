.class Lcom/android/inputmethod/latin/UserBigramDictionary$Bigram;
.super Ljava/lang/Object;
.source "UserBigramDictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/UserBigramDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Bigram"
.end annotation


# instance fields
.field public final mFrequency:I

.field public final mWord1:Ljava/lang/String;

.field public final mWord2:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .parameter "word1"
    .parameter "word2"
    .parameter "frequency"

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/android/inputmethod/latin/UserBigramDictionary$Bigram;->mWord1:Ljava/lang/String;

    .line 112
    iput-object p2, p0, Lcom/android/inputmethod/latin/UserBigramDictionary$Bigram;->mWord2:Ljava/lang/String;

    .line 113
    iput p3, p0, Lcom/android/inputmethod/latin/UserBigramDictionary$Bigram;->mFrequency:I

    .line 114
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter "bigram"

    .prologue
    .line 118
    move-object v0, p1

    check-cast v0, Lcom/android/inputmethod/latin/UserBigramDictionary$Bigram;

    .line 119
    .local v0, bigram2:Lcom/android/inputmethod/latin/UserBigramDictionary$Bigram;
    iget-object v1, p0, Lcom/android/inputmethod/latin/UserBigramDictionary$Bigram;->mWord1:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/inputmethod/latin/UserBigramDictionary$Bigram;->mWord1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/android/inputmethod/latin/UserBigramDictionary$Bigram;->mWord2:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/inputmethod/latin/UserBigramDictionary$Bigram;->mWord2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v1, 0x1

    :goto_18
    return v1

    :cond_19
    const/4 v1, 0x0

    goto :goto_18
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/inputmethod/latin/UserBigramDictionary$Bigram;->mWord1:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/inputmethod/latin/UserBigramDictionary$Bigram;->mWord2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
