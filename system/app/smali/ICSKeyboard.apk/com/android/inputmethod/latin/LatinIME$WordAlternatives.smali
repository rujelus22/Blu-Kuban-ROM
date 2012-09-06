.class public abstract Lcom/android/inputmethod/latin/LatinIME$WordAlternatives;
.super Ljava/lang/Object;
.source "LatinIME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/LatinIME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "WordAlternatives"
.end annotation


# instance fields
.field protected mChosenWord:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 2508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2510
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "chosenWord"

    .prologue
    .line 2512
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2513
    iput-object p1, p0, Lcom/android/inputmethod/latin/LatinIME$WordAlternatives;->mChosenWord:Ljava/lang/CharSequence;

    .line 2514
    return-void
.end method


# virtual methods
.method public abstract getAlternatives()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end method

.method public getChosenWord()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 2524
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME$WordAlternatives;->mChosenWord:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public abstract getOriginalWord()Ljava/lang/CharSequence;
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 2518
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME$WordAlternatives;->mChosenWord:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
