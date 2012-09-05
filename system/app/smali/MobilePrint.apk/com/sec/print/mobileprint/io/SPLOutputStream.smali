.class public Lcom/sec/print/mobileprint/io/SPLOutputStream;
.super Ljava/lang/Object;
.source "SPLOutputStream.java"


# instance fields
.field private m_Writer:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 2
    .parameter "out"

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/sec/print/mobileprint/io/SPLOutputStream;->m_Writer:Ljava/io/OutputStream;

    .line 17
    return-void
.end method


# virtual methods
.method public write([BII)V
    .registers 7
    .parameter "buf"
    .parameter "offset"
    .parameter "count"

    .prologue
    .line 22
    :try_start_0
    iget-object v2, p0, Lcom/sec/print/mobileprint/io/SPLOutputStream;->m_Writer:Ljava/io/OutputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 23
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    if-ge v1, p3, :cond_18

    .line 24
    aget-byte v2, p1, v1

    invoke-static {v2}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/sec/print/mobileprint/MPLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_14

    .line 23
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 25
    .end local v1           #i:I
    :catch_14
    move-exception v0

    .line 27
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 29
    .end local v0           #e:Ljava/io/IOException;
    :cond_18
    return-void
.end method
