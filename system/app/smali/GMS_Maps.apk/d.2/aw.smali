.class public Ld/aw;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Ld/aw;->a:I

    iput v0, p0, Ld/aw;->b:I

    iput v0, p0, Ld/aw;->c:I

    iput v0, p0, Ld/aw;->d:I

    return-void
.end method


# virtual methods
.method a(Ld/aw;)V
    .registers 4

    iget v0, p0, Ld/aw;->a:I

    iget v1, p1, Ld/aw;->a:I

    add-int/2addr v0, v1

    iput v0, p0, Ld/aw;->a:I

    iget v0, p0, Ld/aw;->b:I

    iget v1, p1, Ld/aw;->b:I

    add-int/2addr v0, v1

    iput v0, p0, Ld/aw;->b:I

    iget v0, p0, Ld/aw;->c:I

    iget v1, p1, Ld/aw;->c:I

    add-int/2addr v0, v1

    iput v0, p0, Ld/aw;->c:I

    iget v0, p0, Ld/aw;->d:I

    iget v1, p1, Ld/aw;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Ld/aw;->d:I

    return-void
.end method
