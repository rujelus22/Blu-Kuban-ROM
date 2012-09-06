.class Laiy;
.super Laiv;
.source "ImmutableCollection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laiv",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 192
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Laiy;->a:[Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 173
    invoke-direct {p0}, Laiv;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Laiw;)V
    .registers 2
    .parameter

    .prologue
    .line 173
    invoke-direct {p0}, Laiy;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lalu;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lalu",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    sget-object v0, LaiY;->a:Lalu;

    return-object v0
.end method

.method a()Z
    .registers 2

    .prologue
    .line 210
    const/4 v0, 0x0

    return v0
.end method

.method b()LaiA;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LaiA",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    invoke-static {}, LaiA;->c()LaiA;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 181
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 173
    invoke-virtual {p0}, Laiy;->a()Lalu;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 195
    sget-object v0, Laiy;->a:[Ljava/lang/Object;

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 199
    array-length v0, p1

    if-lez v0, :cond_7

    .line 200
    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 202
    :cond_7
    return-object p1
.end method
