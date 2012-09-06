.class public final Lorg/codehaus/jackson/util/ByteArrayBuilder;
.super Ljava/lang/Object;
.source "ByteArrayBuilder.java"


# static fields
.field private static final NO_BYTES:[B


# instance fields
.field private _currBlock:[B

.field private _pastBlocks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->NO_BYTES:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 56
    const/16 v0, 0x1f4

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "firstBlockSize"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_pastBlocks:Ljava/util/LinkedList;

    .line 59
    new-array v0, p1, [B

    iput-object v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    .line 60
    return-void
.end method
