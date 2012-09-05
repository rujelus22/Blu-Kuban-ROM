.class Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter;
.super Ljava/lang/Object;
.source "FIFEUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/phone/FIFEUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Splitter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator;,
        Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$SplittingIterator;,
        Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$Strategy;
    }
.end annotation


# instance fields
.field private final omitEmptyStrings:Z

.field private final strategy:Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$Strategy;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$Strategy;)V
    .registers 3
    .parameter "strategy"

    .prologue
    .line 427
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter;-><init>(Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$Strategy;Z)V

    .line 428
    return-void
.end method

.method private constructor <init>(Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$Strategy;Z)V
    .registers 3
    .parameter "strategy"
    .parameter "omitEmptyStrings"

    .prologue
    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 431
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter;->strategy:Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$Strategy;

    .line 432
    iput-boolean p2, p0, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter;->omitEmptyStrings:Z

    .line 433
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter;)Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$Strategy;
    .registers 2
    .parameter "x0"

    .prologue
    .line 422
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter;->strategy:Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$Strategy;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 422
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter;->omitEmptyStrings:Z

    return v0
.end method

.method public static on(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter;
    .registers 3
    .parameter "separator"

    .prologue
    .line 436
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_10

    .line 437
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "separator may not be empty or null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 440
    :cond_10
    new-instance v0, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter;

    new-instance v1, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$1;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter;-><init>(Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$Strategy;)V

    return-object v0
.end method


# virtual methods
.method public omitEmptyStrings()Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter;
    .registers 4

    .prologue
    .line 472
    new-instance v0, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter;->strategy:Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$Strategy;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter;-><init>(Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$Strategy;Z)V

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
    .line 476
    new-instance v0, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$2;-><init>(Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter;Ljava/lang/CharSequence;)V

    return-object v0
.end method
