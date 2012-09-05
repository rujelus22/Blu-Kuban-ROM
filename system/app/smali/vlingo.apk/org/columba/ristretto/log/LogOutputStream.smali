.class public Lorg/columba/ristretto/log/LogOutputStream;
.super Ljava/io/FilterOutputStream;
.source "LogOutputStream.java"


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
    .line 50
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_10

    sput-object v0, Lorg/columba/ristretto/log/LogOutputStream;->PREFIX_STRING:[B

    .line 55
    sget-object v0, Lorg/columba/ristretto/log/LogOutputStream;->PREFIX_STRING:[B

    array-length v0, v0

    rsub-int/lit8 v0, v0, 0x64

    sput v0, Lorg/columba/ristretto/log/LogOutputStream;->MAX_LENGTH:I

    return-void

    .line 50
    :array_10
    .array-data 0x1
        0x43t
        0x3at
        0x20t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 79
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {p0, p1, v0}, Lorg/columba/ristretto/log/LogOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V
    .registers 3
    .parameter "arg0"
    .parameter "logStream"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 70
    iput-object p2, p0, Lorg/columba/ristretto/log/LogOutputStream;->logOutputStream:Ljava/io/OutputStream;

    .line 71
    return-void
.end method


# virtual methods
.method public write(I)V
    .registers 7
    .parameter "write"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0xa

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 97
    iget v0, p0, Lorg/columba/ristretto/log/LogOutputStream;->state:I

    packed-switch v0, :pswitch_data_4c

    .line 128
    :cond_9
    :goto_9
    if-eq p1, v3, :cond_10

    .line 129
    iget-object v0, p0, Lorg/columba/ristretto/log/LogOutputStream;->logOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 132
    :cond_10
    iget-object v0, p0, Lorg/columba/ristretto/log/LogOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 133
    return-void

    .line 99
    :pswitch_16
    iput v2, p0, Lorg/columba/ristretto/log/LogOutputStream;->line_length:I

    .line 100
    const/4 v0, 0x1

    iput v0, p0, Lorg/columba/ristretto/log/LogOutputStream;->state:I

    .line 103
    if-eq p1, v3, :cond_9

    .line 104
    iget-object v0, p0, Lorg/columba/ristretto/log/LogOutputStream;->logOutputStream:Ljava/io/OutputStream;

    sget-object v1, Lorg/columba/ristretto/log/LogOutputStream;->PREFIX_STRING:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_9

    .line 111
    :pswitch_25
    iget v0, p0, Lorg/columba/ristretto/log/LogOutputStream;->line_length:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/columba/ristretto/log/LogOutputStream;->line_length:I

    .line 114
    if-ne p1, v4, :cond_30

    .line 115
    iput v2, p0, Lorg/columba/ristretto/log/LogOutputStream;->state:I

    goto :goto_9

    .line 116
    :cond_30
    iget v0, p0, Lorg/columba/ristretto/log/LogOutputStream;->line_length:I

    sget v1, Lorg/columba/ristretto/log/LogOutputStream;->MAX_LENGTH:I

    if-ne v0, v1, :cond_9

    .line 118
    iput v2, p0, Lorg/columba/ristretto/log/LogOutputStream;->line_length:I

    .line 119
    iget-object v0, p0, Lorg/columba/ristretto/log/LogOutputStream;->logOutputStream:Ljava/io/OutputStream;

    const/16 v1, 0x5c

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 120
    iget-object v0, p0, Lorg/columba/ristretto/log/LogOutputStream;->logOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write(I)V

    .line 121
    iget-object v0, p0, Lorg/columba/ristretto/log/LogOutputStream;->logOutputStream:Ljava/io/OutputStream;

    sget-object v1, Lorg/columba/ristretto/log/LogOutputStream;->PREFIX_STRING:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_9

    .line 97
    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_16
        :pswitch_25
    .end packed-switch
.end method

.method public write([BII)V
    .registers 6
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    move v0, p2

    .local v0, i:I
    :goto_1
    add-int v1, p3, p2

    if-ge v0, v1, :cond_f

    .line 88
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {p0, v1}, Lorg/columba/ristretto/log/LogOutputStream;->write(I)V

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 90
    :cond_f
    return-void
.end method
