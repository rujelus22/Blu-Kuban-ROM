.class public LA/h;
.super LA/a;


# static fields
.field private static final e:LA/e;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, LA/i;

    const/16 v1, 0x64

    const-string v2, "ShortChunkArrayManager"

    invoke-direct {v0, v1, v2}, LA/i;-><init>(ILjava/lang/String;)V

    sput-object v0, LA/h;->e:LA/e;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    const/16 v0, 0xb

    sget-object v1, LA/h;->e:LA/e;

    invoke-direct {p0, p1, v0, v1}, LA/a;-><init>(IILA/e;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/nio/ShortBuffer;)V
    .registers 6

    const/4 v2, 0x0

    move v1, v2

    :goto_2
    iget v0, p0, LA/h;->b:I

    if-ge v1, v0, :cond_17

    iget-object v0, p0, LA/h;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    const/16 v3, 0x800

    invoke-virtual {p1, v0, v2, v3}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_17
    iget v0, p0, LA/h;->b:I

    iget-object v1, p0, LA/h;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-eq v0, v1, :cond_2a

    iget-object v0, p0, LA/h;->c:Ljava/lang/Object;

    check-cast v0, [S

    iget v1, p0, LA/h;->d:I

    invoke-virtual {p1, v0, v2, v1}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    :cond_2a
    return-void
.end method
