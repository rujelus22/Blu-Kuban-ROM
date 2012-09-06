.class final Lcom/google/common/base/Optional$Absent;
.super Lcom/google/common/base/Optional;
.source "SourceFile"


# static fields
.field private static final INSTANCE:Lcom/google/common/base/Optional$Absent;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 256
    new-instance v0, Lcom/google/common/base/Optional$Absent;

    invoke-direct {v0}, Lcom/google/common/base/Optional$Absent;-><init>()V

    sput-object v0, Lcom/google/common/base/Optional$Absent;->INSTANCE:Lcom/google/common/base/Optional$Absent;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 255
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/base/Optional;-><init>(Lcom/google/common/base/ac;)V

    return-void
.end method

.method static synthetic access$000()Lcom/google/common/base/Optional$Absent;
    .registers 1

    .prologue
    .line 255
    sget-object v0, Lcom/google/common/base/Optional$Absent;->INSTANCE:Lcom/google/common/base/Optional$Absent;

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 301
    sget-object v0, Lcom/google/common/base/Optional$Absent;->INSTANCE:Lcom/google/common/base/Optional$Absent;

    return-object v0
.end method


# virtual methods
.method public final asSet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 285
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 289
    if-ne p1, p0, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public final get()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 263
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "value is absent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 293
    const v0, 0x598df91c

    return v0
.end method

.method public final isPresent()Z
    .registers 2

    .prologue
    .line 259
    const/4 v0, 0x0

    return v0
.end method

.method public final or(Lcom/google/common/base/Optional;)Lcom/google/common/base/Optional;
    .registers 3
    .parameter

    .prologue
    .line 272
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Optional;

    return-object v0
.end method

.method public final or(Lcom/google/common/base/am;)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 276
    invoke-interface {p1}, Lcom/google/common/base/am;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "use orNull() instead of a Supplier that returns null"

    invoke-static {v0, v1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final or(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 267
    const-string v0, "use orNull() instead of or(null)"

    invoke-static {p1, v0}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final orNull()Ljava/lang/Object;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 281
    const/4 v0, 0x0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 297
    const-string v0, "Optional.absent()"

    return-object v0
.end method
