.class public Lv/h;
.super Lv/a;
.source "SourceFile"


# static fields
.field private static final e:Lv/e;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 29
    new-instance v0, Lv/i;

    const/16 v1, 0x64

    const-string v2, "ShortChunkArrayManager"

    invoke-direct {v0, v1, v2}, Lv/i;-><init>(ILjava/lang/String;)V

    sput-object v0, Lv/h;->e:Lv/e;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .parameter

    .prologue
    .line 40
    const/16 v0, 0xb

    sget-object v1, Lv/h;->e:Lv/e;

    invoke-direct {p0, p1, v0, v1}, Lv/a;-><init>(IILv/e;)V

    .line 41
    return-void
.end method


# virtual methods
.method public a(Ljava/nio/ShortBuffer;)V
    .registers 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 44
    move v1, v2

    :goto_2
    iget v0, p0, Lv/h;->b:I

    if-ge v1, v0, :cond_17

    .line 45
    iget-object v0, p0, Lv/h;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    const/16 v3, 0x800

    invoke-virtual {p1, v0, v2, v3}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    .line 44
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 47
    :cond_17
    iget v0, p0, Lv/h;->b:I

    iget-object v1, p0, Lv/h;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-eq v0, v1, :cond_2a

    .line 48
    iget-object v0, p0, Lv/h;->c:Ljava/lang/Object;

    check-cast v0, [S

    iget v1, p0, Lv/h;->d:I

    invoke-virtual {p1, v0, v2, v1}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    .line 50
    :cond_2a
    return-void
.end method
