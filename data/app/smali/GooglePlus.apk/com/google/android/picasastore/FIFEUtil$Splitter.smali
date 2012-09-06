.class Lcom/google/android/picasastore/FIFEUtil$Splitter;
.super Ljava/lang/Object;
.source "FIFEUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/picasastore/FIFEUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Splitter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator;,
        Lcom/google/android/picasastore/FIFEUtil$Splitter$SplittingIterator;,
        Lcom/google/android/picasastore/FIFEUtil$Splitter$Strategy;
    }
.end annotation


# instance fields
.field private final omitEmptyStrings:Z

.field private final strategy:Lcom/google/android/picasastore/FIFEUtil$Splitter$Strategy;


# direct methods
.method private constructor <init>(Lcom/google/android/picasastore/FIFEUtil$Splitter$Strategy;)V
    .registers 3
    .parameter "strategy"

    .prologue
    .line 379
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/picasastore/FIFEUtil$Splitter;-><init>(Lcom/google/android/picasastore/FIFEUtil$Splitter$Strategy;Z)V

    .line 380
    return-void
.end method

.method private constructor <init>(Lcom/google/android/picasastore/FIFEUtil$Splitter$Strategy;Z)V
    .registers 3
    .parameter "strategy"
    .parameter "omitEmptyStrings"

    .prologue
    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    iput-object p1, p0, Lcom/google/android/picasastore/FIFEUtil$Splitter;->strategy:Lcom/google/android/picasastore/FIFEUtil$Splitter$Strategy;

    .line 384
    iput-boolean p2, p0, Lcom/google/android/picasastore/FIFEUtil$Splitter;->omitEmptyStrings:Z

    .line 385
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/picasastore/FIFEUtil$Splitter;)Lcom/google/android/picasastore/FIFEUtil$Splitter$Strategy;
    .registers 2
    .parameter "x0"

    .prologue
    .line 374
    iget-object v0, p0, Lcom/google/android/picasastore/FIFEUtil$Splitter;->strategy:Lcom/google/android/picasastore/FIFEUtil$Splitter$Strategy;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/picasastore/FIFEUtil$Splitter;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 374
    iget-boolean v0, p0, Lcom/google/android/picasastore/FIFEUtil$Splitter;->omitEmptyStrings:Z

    return v0
.end method

.method public static on(Ljava/lang/String;)Lcom/google/android/picasastore/FIFEUtil$Splitter;
    .registers 3
    .parameter "separator"

    .prologue
    .line 388
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_10

    .line 389
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "separator may not be empty or null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 392
    :cond_10
    new-instance v0, Lcom/google/android/picasastore/FIFEUtil$Splitter;

    new-instance v1, Lcom/google/android/picasastore/FIFEUtil$Splitter$1;

    invoke-direct {v1, p0}, Lcom/google/android/picasastore/FIFEUtil$Splitter$1;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/picasastore/FIFEUtil$Splitter;-><init>(Lcom/google/android/picasastore/FIFEUtil$Splitter$Strategy;)V

    return-object v0
.end method


# virtual methods
.method public omitEmptyStrings()Lcom/google/android/picasastore/FIFEUtil$Splitter;
    .registers 4

    .prologue
    .line 424
    new-instance v0, Lcom/google/android/picasastore/FIFEUtil$Splitter;

    iget-object v1, p0, Lcom/google/android/picasastore/FIFEUtil$Splitter;->strategy:Lcom/google/android/picasastore/FIFEUtil$Splitter$Strategy;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/picasastore/FIFEUtil$Splitter;-><init>(Lcom/google/android/picasastore/FIFEUtil$Splitter$Strategy;Z)V

    return-object v0
.end method

.method public split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;
    .registers 3
    .parameter "sequence"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 428
    new-instance v0, Lcom/google/android/picasastore/FIFEUtil$Splitter$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/picasastore/FIFEUtil$Splitter$2;-><init>(Lcom/google/android/picasastore/FIFEUtil$Splitter;Ljava/lang/CharSequence;)V

    return-object v0
.end method
