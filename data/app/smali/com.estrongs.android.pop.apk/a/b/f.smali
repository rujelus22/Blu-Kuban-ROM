.class public La/b/f;
.super Ljava/lang/Object;


# instance fields
.field private a:J


# direct methods
.method protected constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, La/b/f;->a:J

    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/c;)I
    .registers 4

    const/16 v0, 0xa0

    return v0
.end method

.method public a(La/b/c;La/b/c;ZZ)I
    .registers 6

    const/16 v0, 0xd1

    return v0
.end method

.method public a(La/b/d;)I
    .registers 3

    const/16 v0, 0xd1

    return v0
.end method

.method public a([B)V
    .registers 2

    return-void
.end method

.method public b(La/b/d;)I
    .registers 3

    const/16 v0, 0xd1

    return v0
.end method

.method public final b()La/b/c;
    .registers 2

    invoke-static {}, Lcom/a/a/a/h;->d()La/b/c;

    move-result-object v0

    return-object v0
.end method

.method public b(La/b/c;La/b/c;)V
    .registers 3

    return-void
.end method

.method public c(La/b/c;La/b/c;)I
    .registers 4

    const/16 v0, 0xd1

    return v0
.end method
