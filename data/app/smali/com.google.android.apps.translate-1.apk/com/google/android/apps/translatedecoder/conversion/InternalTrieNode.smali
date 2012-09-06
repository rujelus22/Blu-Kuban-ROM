.class public Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;
.super Ljava/lang/Object;
.source "InternalTrieNode.java"


# instance fields
.field private children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;",
            ">;"
        }
    .end annotation
.end field

.field private value:Ljava/lang/String;

.field private wordId:I


# direct methods
.method public constructor <init>(ILjava/util/List;Ljava/lang/String;)V
    .registers 4
    .parameter "wordId"
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    .local p2, children:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;->wordId:I

    .line 26
    iput-object p3, p0, Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;->value:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;->children:Ljava/util/List;

    .line 28
    return-void
.end method


# virtual methods
.method public children()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;->children:Ljava/util/List;

    return-object v0
.end method

.method public setChildren(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, children:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;>;"
    iput-object p1, p0, Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;->children:Ljava/util/List;

    .line 44
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;->value:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setWordId(I)V
    .registers 2
    .parameter "wordId"

    .prologue
    .line 35
    iput p1, p0, Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;->wordId:I

    .line 36
    return-void
.end method

.method public value()Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;->value:Ljava/lang/String;

    return-object v0
.end method

.method public wordId()I
    .registers 2

    .prologue
    .line 31
    iget v0, p0, Lcom/google/android/apps/translatedecoder/conversion/InternalTrieNode;->wordId:I

    return v0
.end method
