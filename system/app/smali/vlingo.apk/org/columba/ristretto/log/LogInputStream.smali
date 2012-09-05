.class public Lorg/columba/ristretto/log/LogInputStream;
.super Ljava/io/FilterInputStream;
.source "LogInputStream.java"


# static fields
.field private static final IN_LINE:I = 0x1

.field private static final LINEEND:I

.field private static final MAX_LENGTH:I

.field private static final PREFIX_STRING:[B


# instance fields
.field private line_length:I

.field private logOutputStream:Ljava/io/OutputStream;

.field private state:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_10

    sput-object v0, Lorg/columba/ristretto/log/LogInputStream;->PREFIX_STRING:[B

    .line 56
    sget-object v0, Lorg/columba/ristretto/log/LogInputStream;->PREFIX_STRING:[B

    array-length v0, v0

    rsub-int/lit8 v0, v0, 0x64

    sput v0, Lorg/columba/ristretto/log/LogInputStream;->MAX_LENGTH:I

    return-void

    .line 51
    :array_10
    .array-data 0x1
        0x53t
        0x3at
        0x20t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 86
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {p0, p1, v0}, Lorg/columba/ristretto/log/LogInputStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 4
    .parameter "arg0"
    .parameter "log"

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 72
    iput-object p2, p0, Lorg/columba/ristretto/log/LogInputStream;->logOutputStream:Ljava/io/OutputStream;

    .line 74
    iput v0, p0, Lorg/columba/ristretto/log/LogInputStream;->state:I

    .line 76
    iput v0, p0, Lorg/columba/ristretto/log/LogInputStream;->line_length:I

    .line 77
    return-void
.end method


# virtual methods
.method public getLogOutputStream()Ljava/io/OutputStream;
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Lorg/columba/ristretto/log/LogInputStream;->logOutputStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method public read()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0xa

    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 93
    iget-object v2, p0, Lorg/columba/ristretto/log/LogInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 95
    .local v0, read:I
    if-ne v0, v1, :cond_e

    move v0, v1

    .line 130
    .end local v0           #read:I
    :goto_d
    return v0

    .line 97
    .restart local v0       #read:I
    :cond_e
    iget v1, p0, Lorg/columba/ristretto/log/LogInputStream;->state:I

    packed-switch v1, :pswitch_data_4e

    .line 128
    :cond_13
    :goto_13
    iget-object v1, p0, Lorg/columba/ristretto/log/LogInputStream;->logOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_d

    .line 100
    :pswitch_19
    iput v3, p0, Lorg/columba/ristretto/log/LogInputStream;->line_length:I

    .line 101
    const/4 v1, 0x1

    iput v1, p0, Lorg/columba/ristretto/log/LogInputStream;->state:I

    .line 104
    iget-object v1, p0, Lorg/columba/ristretto/log/LogInputStream;->logOutputStream:Ljava/io/OutputStream;

    sget-object v2, Lorg/columba/ristretto/log/LogInputStream;->PREFIX_STRING:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_13

    .line 111
    :pswitch_26
    iget v1, p0, Lorg/columba/ristretto/log/LogInputStream;->line_length:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/columba/ristretto/log/LogInputStream;->line_length:I

    .line 114
    if-ne v0, v4, :cond_31

    .line 115
    iput v3, p0, Lorg/columba/ristretto/log/LogInputStream;->state:I

    goto :goto_13

    .line 116
    :cond_31
    iget v1, p0, Lorg/columba/ristretto/log/LogInputStream;->line_length:I

    sget v2, Lorg/columba/ristretto/log/LogInputStream;->MAX_LENGTH:I

    if-ne v1, v2, :cond_13

    .line 118
    iput v3, p0, Lorg/columba/ristretto/log/LogInputStream;->line_length:I

    .line 119
    iget-object v1, p0, Lorg/columba/ristretto/log/LogInputStream;->logOutputStream:Ljava/io/OutputStream;

    const/16 v2, 0x5c

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 120
    iget-object v1, p0, Lorg/columba/ristretto/log/LogInputStream;->logOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v1, v4}, Ljava/io/OutputStream;->write(I)V

    .line 121
    iget-object v1, p0, Lorg/columba/ristretto/log/LogInputStream;->logOutputStream:Ljava/io/OutputStream;

    sget-object v2, Lorg/columba/ristretto/log/LogInputStream;->PREFIX_STRING:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_13

    .line 97
    nop

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_19
        :pswitch_26
    .end packed-switch
.end method

.method public read([BII)I
    .registers 9
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 138
    const/4 v0, 0x0

    .line 140
    .local v0, i:I
    :goto_2
    if-ge v0, p3, :cond_a

    .line 141
    invoke-virtual {p0}, Lorg/columba/ristretto/log/LogInputStream;->read()I

    move-result v1

    .line 142
    .local v1, next:I
    if-ne v1, v2, :cond_e

    .line 148
    .end local v1           #next:I
    :cond_a
    if-nez v0, :cond_d

    move v0, v2

    .line 149
    .end local v0           #i:I
    :cond_d
    return v0

    .line 145
    .restart local v0       #i:I
    .restart local v1       #next:I
    :cond_e
    add-int v3, p2, v0

    int-to-byte v4, v1

    aput-byte v4, p1, v3

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public setLogOutputStream(Ljava/io/OutputStream;)V
    .registers 2
    .parameter "logOutputStream"

    .prologue
    .line 164
    iput-object p1, p0, Lorg/columba/ristretto/log/LogInputStream;->logOutputStream:Ljava/io/OutputStream;

    .line 165
    return-void
.end method
