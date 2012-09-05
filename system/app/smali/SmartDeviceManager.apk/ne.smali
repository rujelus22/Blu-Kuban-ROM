.class public final Lne;
.super Ljava/lang/Object;
.source "a"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lne$b;,
        Lne$a;
    }
.end annotation


# instance fields
.field protected final a:[[B

.field protected final b:[[C


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {}, Lne$a;->values()[Lne$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [[B

    iput-object v0, p0, Lne;->a:[[B

    .line 48
    invoke-static {}, Lne$b;->values()[Lne$b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [[C

    iput-object v0, p0, Lne;->b:[[C

    .line 50
    return-void
.end method


# virtual methods
.method public final a(Lne$b;[C)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lne;->b:[[C

    invoke-virtual {p1}, Lne$b;->ordinal()I

    move-result v1

    aput-object p2, v0, v1

    .line 92
    return-void
.end method

.method public final a(Lne$b;)[C
    .registers 3
    .parameter

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lne;->a(Lne$b;I)[C

    move-result-object v0

    return-object v0
.end method

.method public final a(Lne$b;I)[C
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 76
    #getter for: Lne$b;->size:I
    invoke-static {p1}, Lne$b;->access$100(Lne$b;)I

    move-result v0

    if-le v0, p2, :cond_21

    .line 77
    #getter for: Lne$b;->size:I
    invoke-static {p1}, Lne$b;->access$100(Lne$b;)I

    move-result v0

    .line 79
    :goto_a
    invoke-virtual {p1}, Lne$b;->ordinal()I

    move-result v1

    .line 80
    iget-object v2, p0, Lne;->b:[[C

    aget-object v2, v2, v1

    .line 81
    if-eqz v2, :cond_17

    array-length v3, v2

    if-ge v3, v0, :cond_1a

    .line 82
    :cond_17
    new-array v0, v0, [C

    .line 86
    :goto_19
    return-object v0

    .line 84
    :cond_1a
    iget-object v0, p0, Lne;->b:[[C

    const/4 v3, 0x0

    aput-object v3, v0, v1

    move-object v0, v2

    goto :goto_19

    :cond_21
    move v0, p2

    goto :goto_a
.end method
