.class public LTZ;
.super Ljava/lang/Object;
.source "GDataParserProducerImpl.java"

# interfaces
.implements LTO;


# instance fields
.field private final a:LRQ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LRQ",
            "<+",
            "Lasm;",
            ">;"
        }
    .end annotation
.end field

.field private final a:LZR;


# direct methods
.method public constructor <init>(LRU;LZR;)V
    .registers 3
    .parameter
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, LTZ;->a:LRQ;

    .line 35
    iput-object p2, p0, LTZ;->a:LZR;

    .line 36
    return-void
.end method


# virtual methods
.method public a(LTX;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;II)LTW;
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTX;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "LUa;",
            ">;II)",
            "LTW;"
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, LTY;

    iget-object v5, p0, LTZ;->a:LZR;

    iget-object v6, p0, LTZ;->a:LRQ;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v0 .. v8}, LTY;-><init>(LTX;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;LZR;LRQ;II)V

    return-object v0
.end method
