.class public Lorg/apache/commons/io/output/NullWriter;
.super Ljava/io/Writer;
.source "NullWriter.java"


# static fields
.field public static final NULL_WRITER:Lorg/apache/commons/io/output/NullWriter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    new-instance v0, Lorg/apache/commons/io/output/NullWriter;

    invoke-direct {v0}, Lorg/apache/commons/io/output/NullWriter;-><init>()V

    sput-object v0, Lorg/apache/commons/io/output/NullWriter;->NULL_WRITER:Lorg/apache/commons/io/output/NullWriter;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 40
    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    .prologue
    .line 94
    return-void
.end method

.method public flush()V
    .registers 1

    .prologue
    .line 89
    return-void
.end method

.method public write(I)V
    .registers 2
    .parameter "idx"

    .prologue
    .line 48
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .registers 2
    .parameter "str"

    .prologue
    .line 74
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .registers 4
    .parameter "str"
    .parameter "st"
    .parameter "end"

    .prologue
    .line 84
    return-void
.end method

.method public write([C)V
    .registers 2
    .parameter "chr"

    .prologue
    .line 56
    return-void
.end method

.method public write([CII)V
    .registers 4
    .parameter "chr"
    .parameter "st"
    .parameter "end"

    .prologue
    .line 66
    return-void
.end method
