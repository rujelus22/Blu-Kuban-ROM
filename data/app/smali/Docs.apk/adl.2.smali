.class public final Ladl;
.super Ljava/lang/Object;
.source "HttpResponse.java"


# instance fields
.field private final a:I

.field private final a:Ladc;

.field private final a:Lade;

.field private final a:Ladh;

.field private final a:Lado;

.field a:Lads;

.field private a:Ljava/io/InputStream;

.field private final a:Ljava/lang/String;

.field private a:Z

.field private b:I

.field private final b:Ljava/lang/String;

.field private b:Z

.field private final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ladh;Lads;)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p1, p0, Ladl;->a:Ladh;

    .line 126
    invoke-virtual {p1}, Ladh;->a()Lado;

    move-result-object v0

    iput-object v0, p0, Ladl;->a:Lado;

    .line 127
    invoke-virtual {p1}, Ladh;->b()Ladc;

    move-result-object v0

    iput-object v0, p0, Ladl;->a:Ladc;

    .line 128
    invoke-virtual {p1}, Ladh;->a()I

    move-result v0

    iput v0, p0, Ladl;->b:I

    .line 129
    invoke-virtual {p1}, Ladh;->a()Z

    move-result v0

    iput-boolean v0, p0, Ladl;->a:Z

    .line 130
    iput-object p2, p0, Ladl;->a:Lads;

    .line 131
    invoke-virtual {p2}, Lads;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ladl;->a:Ljava/lang/String;

    .line 132
    invoke-virtual {p2}, Lads;->a()I

    move-result v2

    .line 133
    iput v2, p0, Ladl;->a:I

    .line 134
    invoke-virtual {p2}, Lads;->d()Ljava/lang/String;

    move-result-object v4

    .line 135
    iput-object v4, p0, Ladl;->c:Ljava/lang/String;

    .line 136
    sget-object v5, Lado;->a:Ljava/util/logging/Logger;

    .line 137
    iget-boolean v0, p0, Ladl;->a:Z

    if-eqz v0, :cond_86

    sget-object v0, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v5, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_86

    const/4 v0, 0x1

    move v3, v0

    .line 139
    :goto_42
    if-eqz v3, :cond_a0

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    const-string v6, "-------------- RESPONSE --------------"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Laey;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {p2}, Lads;->c()Ljava/lang/String;

    move-result-object v6

    .line 143
    if-eqz v6, :cond_89

    .line 144
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    :cond_5d
    :goto_5d
    sget-object v2, Laey;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    :goto_62
    iget-object v4, p0, Ladl;->a:Ladc;

    if-eqz v3, :cond_98

    move-object v2, v0

    :goto_67
    invoke-virtual {v4, p2, v2}, Ladc;->a(Lads;Ljava/lang/StringBuilder;)V

    .line 159
    invoke-virtual {p2}, Lads;->b()Ljava/lang/String;

    move-result-object v2

    .line 160
    if-nez v2, :cond_76

    .line 161
    iget-object v2, p0, Ladl;->a:Ladc;

    invoke-virtual {v2}, Ladc;->a()Ljava/lang/String;

    move-result-object v2

    .line 163
    :cond_76
    iput-object v2, p0, Ladl;->b:Ljava/lang/String;

    .line 164
    if-nez v2, :cond_9a

    :goto_7a
    iput-object v1, p0, Ladl;->a:Lade;

    .line 167
    if-eqz v3, :cond_85

    .line 168
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 170
    :cond_85
    return-void

    .line 137
    :cond_86
    const/4 v0, 0x0

    move v3, v0

    goto :goto_42

    .line 146
    :cond_89
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    if-eqz v4, :cond_5d

    .line 148
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5d

    :cond_98
    move-object v2, v1

    .line 155
    goto :goto_67

    .line 164
    :cond_9a
    new-instance v1, Lade;

    invoke-direct {v1, v2}, Lade;-><init>(Ljava/lang/String;)V

    goto :goto_7a

    :cond_a0
    move-object v0, v1

    goto :goto_62
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 317
    iget v0, p0, Ladl;->a:I

    return v0
.end method

.method public a()Ladc;
    .registers 2

    .prologue
    .line 298
    iget-object v0, p0, Ladl;->a:Ladc;

    return-object v0
.end method

.method public a()Ladg;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 472
    iget-object v0, p0, Ladl;->a:Ladh;

    iget-object v1, p0, Ladl;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ladh;->a(Ljava/lang/String;)Ladg;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/io/InputStream;
    .registers 6

    .prologue
    .line 370
    iget-boolean v0, p0, Ladl;->b:Z

    if-nez v0, :cond_3b

    .line 371
    iget-object v0, p0, Ladl;->a:Lads;

    invoke-virtual {v0}, Lads;->a()Ljava/io/InputStream;

    move-result-object v1

    .line 372
    if-eqz v1, :cond_38

    .line 378
    :try_start_c
    iget-object v0, p0, Ladl;->a:Ljava/lang/String;

    .line 379
    if-eqz v0, :cond_1e

    const-string v2, "gzip"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 380
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v0

    .line 383
    :cond_1e
    sget-object v2, Lado;->a:Ljava/util/logging/Logger;

    .line 384
    iget-boolean v0, p0, Ladl;->a:Z

    if-eqz v0, :cond_36

    sget-object v0, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v2, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 385
    new-instance v0, Laeu;

    sget-object v3, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    iget v4, p0, Ladl;->b:I

    invoke-direct {v0, v1, v2, v3, v4}, Laeu;-><init>(Ljava/io/InputStream;Ljava/util/logging/Logger;Ljava/util/logging/Level;I)V

    move-object v1, v0

    .line 388
    :cond_36
    iput-object v1, p0, Ladl;->a:Ljava/io/InputStream;
    :try_end_38
    .catchall {:try_start_c .. :try_end_38} :catchall_3e

    .line 396
    :cond_38
    const/4 v0, 0x1

    iput-boolean v0, p0, Ladl;->b:Z

    .line 398
    :cond_3b
    iget-object v0, p0, Ladl;->a:Ljava/io/InputStream;

    return-object v0

    .line 391
    :catchall_3e
    move-exception v0

    .line 392
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0
.end method

.method public a(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 487
    iget-object v0, p0, Ladl;->a:Ladh;

    invoke-virtual {v0}, Ladh;->a()Laex;

    move-result-object v0

    .line 488
    if-eqz v0, :cond_15

    .line 489
    invoke-virtual {p0}, Ladl;->a()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p0}, Ladl;->a()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Laex;->a(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 499
    :goto_14
    return-object v0

    .line 493
    :cond_15
    invoke-virtual {p0}, Ladl;->a()Ladg;

    move-result-object v0

    .line 494
    if-nez v0, :cond_45

    .line 495
    invoke-virtual {p0}, Ladl;->a()V

    .line 496
    iget-object v0, p0, Ladl;->b:Ljava/lang/String;

    if-eqz v0, :cond_43

    const/4 v0, 0x1

    :goto_23
    const-string v1, "Missing Content-Type header in response"

    invoke-static {v0, v1}, LafQ;->a(ZLjava/lang/Object;)V

    .line 497
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No parser defined for Content-Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ladl;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 496
    :cond_43
    const/4 v0, 0x0

    goto :goto_23

    .line 499
    :cond_45
    invoke-interface {v0, p0, p1}, Ladg;->a(Ladl;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_14
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 279
    iget-object v0, p0, Ladl;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a()Ljava/nio/charset/Charset;
    .registers 2

    .prologue
    .line 553
    iget-object v0, p0, Ladl;->a:Lade;

    if-eqz v0, :cond_c

    iget-object v0, p0, Ladl;->a:Lade;

    invoke-virtual {v0}, Lade;->a()Ljava/nio/charset/Charset;

    move-result-object v0

    if-nez v0, :cond_f

    :cond_c
    sget-object v0, LafC;->b:Ljava/nio/charset/Charset;

    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Ladl;->a:Lade;

    invoke-virtual {v0}, Lade;->a()Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_e
.end method

.method public a()V
    .registers 2

    .prologue
    .line 442
    invoke-virtual {p0}, Ladl;->a()Ljava/io/InputStream;

    move-result-object v0

    .line 443
    if-eqz v0, :cond_9

    .line 444
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 446
    :cond_9
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 308
    iget v0, p0, Ladl;->a:I

    invoke-static {v0}, Ladn;->a(I)Z

    move-result v0

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 326
    iget-object v0, p0, Ladl;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b()V
    .registers 2

    .prologue
    .line 459
    invoke-virtual {p0}, Ladl;->a()V

    .line 460
    iget-object v0, p0, Ladl;->a:Lads;

    invoke-virtual {v0}, Lads;->a()V

    .line 461
    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 3

    .prologue
    .line 537
    invoke-virtual {p0}, Ladl;->a()Ljava/io/InputStream;

    move-result-object v0

    .line 538
    if-nez v0, :cond_9

    .line 539
    const-string v0, ""

    .line 543
    :goto_8
    return-object v0

    .line 541
    :cond_9
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 542
    invoke-static {v0, v1}, LacU;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 543
    invoke-virtual {p0}, Ladl;->a()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method
