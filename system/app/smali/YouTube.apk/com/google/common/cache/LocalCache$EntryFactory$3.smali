.class final enum Lcom/google/common/cache/LocalCache$EntryFactory$3;
.super Lcom/google/common/cache/LocalCache$EntryFactory;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 460
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/cache/LocalCache$EntryFactory;-><init>(Ljava/lang/String;ILcom/google/common/cache/k;)V

    return-void
.end method


# virtual methods
.method final copyEntry(Lcom/google/common/cache/LocalCache$Segment;Lcom/google/common/cache/x;Lcom/google/common/cache/x;)Lcom/google/common/cache/x;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 470
    invoke-super {p0, p1, p2, p3}, Lcom/google/common/cache/LocalCache$EntryFactory;->copyEntry(Lcom/google/common/cache/LocalCache$Segment;Lcom/google/common/cache/x;Lcom/google/common/cache/x;)Lcom/google/common/cache/x;

    move-result-object v0

    .line 471
    invoke-virtual {p0, p2, v0}, Lcom/google/common/cache/LocalCache$EntryFactory$3;->copyWriteEntry(Lcom/google/common/cache/x;Lcom/google/common/cache/x;)V

    .line 472
    return-object v0
.end method

.method final newEntry(Lcom/google/common/cache/LocalCache$Segment;Ljava/lang/Object;ILcom/google/common/cache/x;)Lcom/google/common/cache/x;
    .registers 6
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 464
    new-instance v0, Lcom/google/common/cache/ae;

    invoke-direct {v0, p2, p3, p4}, Lcom/google/common/cache/ae;-><init>(Ljava/lang/Object;ILcom/google/common/cache/x;)V

    return-object v0
.end method
