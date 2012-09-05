.class public Le/z;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Le/z;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Le/z;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Le/x;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Le/z;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Le/z;->e:Ljava/lang/String;

    iget v0, p1, Le/x;->a:I

    iput v0, p0, Le/z;->a:I

    iget v0, p1, Le/x;->b:I

    iput v0, p0, Le/z;->b:I

    iget v0, p1, Le/x;->c:I

    iput v0, p0, Le/z;->c:I

    iget v0, p1, Le/x;->d:I

    iput v0, p0, Le/z;->d:I

    return-void
.end method


# virtual methods
.method public a()Le/x;
    .registers 7

    new-instance v0, Le/x;

    iget v1, p0, Le/z;->a:I

    iget v2, p0, Le/z;->b:I

    iget v3, p0, Le/z;->c:I

    iget v4, p0, Le/z;->d:I

    iget-object v5, p0, Le/z;->e:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Le/x;-><init>(IIIILjava/lang/String;)V

    return-object v0
.end method

.method public a(II)Le/z;
    .registers 3

    iput p1, p0, Le/z;->a:I

    iput p2, p0, Le/z;->b:I

    return-object p0
.end method

.method public a(Le/f;)Le/z;
    .registers 4

    iget v0, p1, Le/f;->a:I

    iget v1, p1, Le/f;->b:I

    invoke-virtual {p0, v0, v1}, Le/z;->a(II)Le/z;

    move-result-object v0

    return-object v0
.end method
