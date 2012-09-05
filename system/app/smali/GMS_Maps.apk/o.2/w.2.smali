.class Lo/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lo/w;->a:I

    iput p2, p0, Lo/w;->b:I

    iput-object p3, p0, Lo/w;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lo/w;)I
    .registers 4

    iget v0, p0, Lo/w;->b:I

    iget v1, p1, Lo/w;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lo/w;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)Z
    .registers 3

    iget v0, p0, Lo/w;->a:I

    if-gt v0, p1, :cond_a

    iget v0, p0, Lo/w;->b:I

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

    check-cast p1, Lo/w;

    invoke-virtual {p0, p1}, Lo/w;->a(Lo/w;)I

    move-result v0

    return v0
.end method
