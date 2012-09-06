.class final Lcom/google/common/collect/DiscreteDomains$LongDomain;
.super Lcom/google/common/collect/cr;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final INSTANCE:Lcom/google/common/collect/DiscreteDomains$LongDomain;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 85
    new-instance v0, Lcom/google/common/collect/DiscreteDomains$LongDomain;

    invoke-direct {v0}, Lcom/google/common/collect/DiscreteDomains$LongDomain;-><init>()V

    sput-object v0, Lcom/google/common/collect/DiscreteDomains$LongDomain;->INSTANCE:Lcom/google/common/collect/DiscreteDomains$LongDomain;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/google/common/collect/cr;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/google/common/collect/DiscreteDomains$LongDomain;
    .registers 1

    .prologue
    .line 83
    sget-object v0, Lcom/google/common/collect/DiscreteDomains$LongDomain;->INSTANCE:Lcom/google/common/collect/DiscreteDomains$LongDomain;

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 117
    sget-object v0, Lcom/google/common/collect/DiscreteDomains$LongDomain;->INSTANCE:Lcom/google/common/collect/DiscreteDomains$LongDomain;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic distance(Ljava/lang/Comparable;Ljava/lang/Comparable;)J
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 83
    check-cast p1, Ljava/lang/Long;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/DiscreteDomains$LongDomain;->distance(Ljava/lang/Long;Ljava/lang/Long;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final distance(Ljava/lang/Long;Ljava/lang/Long;)J
    .registers 11
    .parameter
    .parameter

    .prologue
    const-wide/16 v6, 0x0

    .line 98
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 99
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_21

    cmp-long v2, v0, v6

    if-gez v2, :cond_21

    .line 100
    const-wide v0, 0x7fffffffffffffffL

    .line 105
    :cond_20
    :goto_20
    return-wide v0

    .line 102
    :cond_21
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_20

    cmp-long v2, v0, v6

    if-lez v2, :cond_20

    .line 103
    const-wide/high16 v0, -0x8000

    goto :goto_20
.end method

.method public final bridge synthetic maxValue()Ljava/lang/Comparable;
    .registers 2

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/google/common/collect/DiscreteDomains$LongDomain;->maxValue()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final maxValue()Ljava/lang/Long;
    .registers 3

    .prologue
    .line 113
    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic minValue()Ljava/lang/Comparable;
    .registers 2

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/google/common/collect/DiscreteDomains$LongDomain;->minValue()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final minValue()Ljava/lang/Long;
    .registers 3

    .prologue
    .line 109
    const-wide/high16 v0, -0x8000

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic next(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .registers 3
    .parameter

    .prologue
    .line 83
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/DiscreteDomains$LongDomain;->next(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final next(Ljava/lang/Long;)Ljava/lang/Long;
    .registers 6
    .parameter

    .prologue
    .line 88
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 89
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v0, v2

    if-nez v2, :cond_f

    const/4 v0, 0x0

    :goto_e
    return-object v0

    :cond_f
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_e
.end method

.method public final bridge synthetic previous(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .registers 3
    .parameter

    .prologue
    .line 83
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/DiscreteDomains$LongDomain;->previous(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final previous(Ljava/lang/Long;)Ljava/lang/Long;
    .registers 6
    .parameter

    .prologue
    .line 93
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 94
    const-wide/high16 v2, -0x8000

    cmp-long v2, v0, v2

    if-nez v2, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_b
.end method
