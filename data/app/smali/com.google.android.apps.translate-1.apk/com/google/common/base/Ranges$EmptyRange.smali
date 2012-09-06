.class Lcom/google/common/base/Ranges$EmptyRange;
.super Ljava/lang/Object;
.source "Ranges.java"

# interfaces
.implements Lcom/google/common/base/Range;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Ranges;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EmptyRange"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Ljava/lang/Comparable",
        "<-TV;>;>",
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Range",
        "<TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/common/base/Ranges$EmptyRange;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Ranges$EmptyRange",
            "<",
            "Ljava/lang/Comparable",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 248
    new-instance v0, Lcom/google/common/base/Ranges$EmptyRange;

    invoke-direct {v0}, Lcom/google/common/base/Ranges$EmptyRange;-><init>()V

    sput-object v0, Lcom/google/common/base/Ranges$EmptyRange;->INSTANCE:Lcom/google/common/base/Ranges$EmptyRange;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 251
    .local p0, this:Lcom/google/common/base/Ranges$EmptyRange;,"Lcom/google/common/base/Ranges$EmptyRange<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/common/base/Ranges$EmptyRange;
    .registers 1

    .prologue
    .line 245
    sget-object v0, Lcom/google/common/base/Ranges$EmptyRange;->INSTANCE:Lcom/google/common/base/Ranges$EmptyRange;

    return-object v0
.end method


# virtual methods
.method public contains(Ljava/lang/Comparable;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 255
    .local p0, this:Lcom/google/common/base/Ranges$EmptyRange;,"Lcom/google/common/base/Ranges$EmptyRange<TV;>;"
    .local p1, value:Ljava/lang/Comparable;,"TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public enclose(Ljava/lang/Comparable;)Lcom/google/common/base/Range;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Lcom/google/common/base/Range",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 260
    .local p0, this:Lcom/google/common/base/Ranges$EmptyRange;,"Lcom/google/common/base/Ranges$EmptyRange<TV;>;"
    .local p1, value:Ljava/lang/Comparable;,"TV;"
    invoke-static {p1, p1}, Lcom/google/common/base/Ranges;->newRange(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/base/Range;

    move-result-object v0

    return-object v0
.end method

.method public enclosure(Lcom/google/common/base/Range;)Lcom/google/common/base/Range;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Range",
            "<TV;>;)",
            "Lcom/google/common/base/Range",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 265
    .local p0, this:Lcom/google/common/base/Ranges$EmptyRange;,"Lcom/google/common/base/Ranges$EmptyRange<TV;>;"
    .local p1, range:Lcom/google/common/base/Range;,"Lcom/google/common/base/Range<TV;>;"
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter "o"

    .prologue
    .line 274
    .local p0, this:Lcom/google/common/base/Ranges$EmptyRange;,"Lcom/google/common/base/Ranges$EmptyRange<TV;>;"
    instance-of v0, p1, Lcom/google/common/base/Range;

    if-eqz v0, :cond_e

    check-cast p1, Lcom/google/common/base/Range;

    .end local p1
    invoke-interface {p1}, Lcom/google/common/base/Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 278
    .local p0, this:Lcom/google/common/base/Ranges$EmptyRange;,"Lcom/google/common/base/Ranges$EmptyRange<TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public intersection(Lcom/google/common/base/Range;)Lcom/google/common/base/Range;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Range",
            "<TV;>;)",
            "Lcom/google/common/base/Range",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 283
    .local p0, this:Lcom/google/common/base/Ranges$EmptyRange;,"Lcom/google/common/base/Ranges$EmptyRange<TV;>;"
    .local p1, range:Lcom/google/common/base/Range;,"Lcom/google/common/base/Range<TV;>;"
    return-object p0
.end method

.method public intersects(Lcom/google/common/base/Range;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Range",
            "<TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 288
    .local p0, this:Lcom/google/common/base/Ranges$EmptyRange;,"Lcom/google/common/base/Ranges$EmptyRange<TV;>;"
    .local p1, range:Lcom/google/common/base/Range;,"Lcom/google/common/base/Range<TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 293
    .local p0, this:Lcom/google/common/base/Ranges$EmptyRange;,"Lcom/google/common/base/Ranges$EmptyRange<TV;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public max()Ljava/lang/Comparable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 270
    .local p0, this:Lcom/google/common/base/Ranges$EmptyRange;,"Lcom/google/common/base/Ranges$EmptyRange<TV;>;"
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public min()Ljava/lang/Comparable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 298
    .local p0, this:Lcom/google/common/base/Ranges$EmptyRange;,"Lcom/google/common/base/Ranges$EmptyRange<TV;>;"
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 302
    .local p0, this:Lcom/google/common/base/Ranges$EmptyRange;,"Lcom/google/common/base/Ranges$EmptyRange<TV;>;"
    const-string v0, "[Empty Range]"

    return-object v0
.end method
