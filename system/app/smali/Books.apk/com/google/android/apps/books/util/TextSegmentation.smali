.class public Lcom/google/android/apps/books/util/TextSegmentation;
.super Ljava/lang/Object;
.source "TextSegmentation.java"


# instance fields
.field public final offsets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final text:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .registers 3
    .parameter "text"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p2, offsets:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/google/android/apps/books/util/TextSegmentation;->text:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/google/android/apps/books/util/TextSegmentation;->offsets:Ljava/util/List;

    .line 24
    return-void
.end method

.method public static findWords(Ljava/lang/String;)Lcom/google/android/apps/books/util/TextSegmentation;
    .registers 5
    .parameter "text"

    .prologue
    .line 36
    invoke-static {}, Ljava/text/BreakIterator;->getWordInstance()Ljava/text/BreakIterator;

    move-result-object v0

    .line 37
    .local v0, boundary:Ljava/text/BreakIterator;
    invoke-virtual {v0, p0}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v1, offsets:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_c
    invoke-virtual {v0}, Ljava/text/BreakIterator;->current()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-virtual {v0}, Ljava/text/BreakIterator;->next()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_c

    .line 45
    new-instance v2, Lcom/google/android/apps/books/util/TextSegmentation;

    invoke-direct {v2, p0, v1}, Lcom/google/android/apps/books/util/TextSegmentation;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v2
.end method
