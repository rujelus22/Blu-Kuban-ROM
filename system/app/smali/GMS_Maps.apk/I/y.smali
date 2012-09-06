.class Li/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput p1, p0, Li/y;->a:I

    .line 100
    iput p2, p0, Li/y;->b:I

    .line 101
    iput-object p3, p0, Li/y;->c:Ljava/lang/String;

    .line 102
    return-void
.end method


# virtual methods
.method public a(Li/y;)I
    .registers 4
    .parameter

    .prologue
    .line 106
    iget v0, p0, Li/y;->b:I

    iget v1, p1, Li/y;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Li/y;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)Z
    .registers 3
    .parameter

    .prologue
    .line 114
    iget v0, p0, Li/y;->a:I

    if-gt v0, p1, :cond_a

    iget v0, p0, Li/y;->b:I

    if-gt p1, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 92
    check-cast p1, Li/y;

    invoke-virtual {p0, p1}, Li/y;->a(Li/y;)I

    move-result v0

    return v0
.end method
