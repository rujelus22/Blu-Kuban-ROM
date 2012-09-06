.class public Lv/b;
.super Lv/a;
.source "SourceFile"


# static fields
.field private static final e:Lv/e;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 25
    new-instance v0, Lv/c;

    const/16 v1, 0x64

    const-string v2, "ByteChunkArrayManager"

    invoke-direct {v0, v1, v2}, Lv/c;-><init>(ILjava/lang/String;)V

    sput-object v0, Lv/b;->e:Lv/e;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .parameter

    .prologue
    .line 36
    const/16 v0, 0xc

    sget-object v1, Lv/b;->e:Lv/e;

    invoke-direct {p0, p1, v0, v1}, Lv/a;-><init>(IILv/e;)V

    .line 37
    return-void
.end method


# virtual methods
.method public a(Lv/d;)V
    .registers 5
    .parameter

    .prologue
    .line 61
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget v0, p0, Lv/b;->b:I

    if-ge v1, v0, :cond_17

    .line 62
    iget-object v0, p0, Lv/b;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const/16 v2, 0x1000

    invoke-interface {p1, v0, v2}, Lv/d;->a([BI)V

    .line 61
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 64
    :cond_17
    iget v0, p0, Lv/b;->b:I

    iget-object v1, p0, Lv/b;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-eq v0, v1, :cond_2a

    .line 65
    iget-object v0, p0, Lv/b;->c:Ljava/lang/Object;

    check-cast v0, [B

    iget v1, p0, Lv/b;->d:I

    invoke-interface {p1, v0, v1}, Lv/d;->a([BI)V

    .line 67
    :cond_2a
    return-void
.end method
