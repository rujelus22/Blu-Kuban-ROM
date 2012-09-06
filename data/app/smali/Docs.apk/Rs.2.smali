.class LRs;
.super Ljava/lang/Object;
.source "InMemoryFileSource.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final a:[B


# direct methods
.method private constructor <init>([BLjava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, LRs;->a:[B

    .line 29
    invoke-static {p2}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, LRs;->a:Ljava/lang/String;

    .line 30
    return-void
.end method

.method synthetic constructor <init>([BLjava/lang/String;LRr;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, LRs;-><init>([BLjava/lang/String;)V

    return-void
.end method

.method static synthetic a(LRs;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, LRs;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(LRs;)[B
    .registers 2
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, LRs;->a:[B

    return-object v0
.end method
