.class public Lcom/android/inputmethod/latin/LatinIME$TypedWordAlternatives;
.super Lcom/android/inputmethod/latin/LatinIME$WordAlternatives;
.source "LatinIME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/LatinIME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TypedWordAlternatives"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/LatinIME;

.field private word:Lcom/android/inputmethod/latin/WordComposer;


# direct methods
.method public constructor <init>(Lcom/android/inputmethod/latin/LatinIME;)V
    .registers 2
    .parameter

    .prologue
    .line 2535
    iput-object p1, p0, Lcom/android/inputmethod/latin/LatinIME$TypedWordAlternatives;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    .line 2533
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME$WordAlternatives;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/inputmethod/latin/LatinIME;Ljava/lang/CharSequence;Lcom/android/inputmethod/latin/WordComposer;)V
    .registers 4
    .parameter
    .parameter "chosenWord"
    .parameter "wordComposer"

    .prologue
    .line 2541
    iput-object p1, p0, Lcom/android/inputmethod/latin/LatinIME$TypedWordAlternatives;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    .line 2539
    invoke-direct {p0, p2}, Lcom/android/inputmethod/latin/LatinIME$WordAlternatives;-><init>(Ljava/lang/CharSequence;)V

    .line 2540
    iput-object p3, p0, Lcom/android/inputmethod/latin/LatinIME$TypedWordAlternatives;->word:Lcom/android/inputmethod/latin/WordComposer;

    return-void
.end method

.method static synthetic access$0(Lcom/android/inputmethod/latin/LatinIME$TypedWordAlternatives;)Lcom/android/inputmethod/latin/WordComposer;
    .registers 2
    .parameter

    .prologue
    .line 2531
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME$TypedWordAlternatives;->word:Lcom/android/inputmethod/latin/WordComposer;

    return-object v0
.end method


# virtual methods
.method public getAlternatives()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2550
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME$TypedWordAlternatives;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME$TypedWordAlternatives;->word:Lcom/android/inputmethod/latin/WordComposer;

    #calls: Lcom/android/inputmethod/latin/LatinIME;->getTypedSuggestions(Lcom/android/inputmethod/latin/WordComposer;)Ljava/util/List;
    invoke-static {v0, v1}, Lcom/android/inputmethod/latin/LatinIME;->access$10(Lcom/android/inputmethod/latin/LatinIME;Lcom/android/inputmethod/latin/WordComposer;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalWord()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 2545
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME$TypedWordAlternatives;->word:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/WordComposer;->getTypedWord()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
