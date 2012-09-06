.class public Lanb;
.super Ljava/lang/Object;
.source "JsonWriter.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final a:Ljava/io/Writer;

.field private a:Ljava/lang/String;

.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "LamZ;",
            ">;"
        }
    .end annotation
.end field

.field private a:Z

.field private b:Ljava/lang/String;

.field private b:Z

.field private c:Ljava/lang/String;

.field private c:Z


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .registers 4
    .parameter

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lanb;->a:Ljava/util/List;

    .line 130
    iget-object v0, p0, Lanb;->a:Ljava/util/List;

    sget-object v1, LamZ;->f:LamZ;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    const-string v0, ":"

    iput-object v0, p0, Lanb;->b:Ljava/lang/String;

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lanb;->c:Z

    .line 158
    if-nez p1, :cond_22

    .line 159
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_22
    iput-object p1, p0, Lanb;->a:Ljava/io/Writer;

    .line 162
    return-void
.end method

.method private a()LamZ;
    .registers 3

    .prologue
    .line 317
    iget-object v0, p0, Lanb;->a:Ljava/util/List;

    iget-object v1, p0, Lanb;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LamZ;

    return-object v0
.end method

.method private a(LamZ;LamZ;Ljava/lang/String;)Lanb;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 297
    invoke-direct {p0}, Lanb;->a()LamZ;

    move-result-object v0

    .line 298
    if-eq v0, p2, :cond_23

    if-eq v0, p1, :cond_23

    .line 299
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Nesting problem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lanb;->a:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :cond_23
    iget-object v1, p0, Lanb;->c:Ljava/lang/String;

    if-eqz v1, :cond_42

    .line 302
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dangling name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lanb;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_42
    iget-object v1, p0, Lanb;->a:Ljava/util/List;

    iget-object v2, p0, Lanb;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 306
    if-ne v0, p2, :cond_54

    .line 307
    invoke-direct {p0}, Lanb;->c()V

    .line 309
    :cond_54
    iget-object v0, p0, Lanb;->a:Ljava/io/Writer;

    invoke-virtual {v0, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 310
    return-object p0
.end method

.method private a(LamZ;Ljava/lang/String;)Lanb;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 285
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lanb;->b(Z)V

    .line 286
    iget-object v0, p0, Lanb;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    iget-object v0, p0, Lanb;->a:Ljava/io/Writer;

    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 288
    return-object p0
.end method

.method private a(LamZ;)V
    .registers 4
    .parameter

    .prologue
    .line 324
    iget-object v0, p0, Lanb;->a:Ljava/util/List;

    iget-object v1, p0, Lanb;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 325
    return-void
.end method

.method private b()V
    .registers 2

    .prologue
    .line 345
    iget-object v0, p0, Lanb;->c:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 346
    invoke-direct {p0}, Lanb;->d()V

    .line 347
    iget-object v0, p0, Lanb;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lanb;->b(Ljava/lang/String;)V

    .line 348
    const/4 v0, 0x0

    iput-object v0, p0, Lanb;->c:Ljava/lang/String;

    .line 350
    :cond_f
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 473
    iget-object v0, p0, Lanb;->a:Ljava/io/Writer;

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 474
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    move v0, v1

    :goto_e
    if-ge v0, v2, :cond_9e

    .line 475
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 487
    sparse-switch v3, :sswitch_data_a6

    .line 532
    const/16 v4, 0x1f

    if-gt v3, v4, :cond_98

    .line 533
    iget-object v4, p0, Lanb;->a:Ljava/io/Writer;

    const-string v5, "\\u%04x"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 474
    :goto_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 490
    :sswitch_31
    iget-object v4, p0, Lanb;->a:Ljava/io/Writer;

    const/16 v5, 0x5c

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(I)V

    .line 491
    iget-object v4, p0, Lanb;->a:Ljava/io/Writer;

    invoke-virtual {v4, v3}, Ljava/io/Writer;->write(I)V

    goto :goto_2e

    .line 495
    :sswitch_3e
    iget-object v3, p0, Lanb;->a:Ljava/io/Writer;

    const-string v4, "\\t"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2e

    .line 499
    :sswitch_46
    iget-object v3, p0, Lanb;->a:Ljava/io/Writer;

    const-string v4, "\\b"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2e

    .line 503
    :sswitch_4e
    iget-object v3, p0, Lanb;->a:Ljava/io/Writer;

    const-string v4, "\\n"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2e

    .line 507
    :sswitch_56
    iget-object v3, p0, Lanb;->a:Ljava/io/Writer;

    const-string v4, "\\r"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2e

    .line 511
    :sswitch_5e
    iget-object v3, p0, Lanb;->a:Ljava/io/Writer;

    const-string v4, "\\f"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2e

    .line 519
    :sswitch_66
    iget-boolean v4, p0, Lanb;->b:Z

    if-eqz v4, :cond_7e

    .line 520
    iget-object v4, p0, Lanb;->a:Ljava/io/Writer;

    const-string v5, "\\u%04x"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2e

    .line 522
    :cond_7e
    iget-object v4, p0, Lanb;->a:Ljava/io/Writer;

    invoke-virtual {v4, v3}, Ljava/io/Writer;->write(I)V

    goto :goto_2e

    .line 528
    :sswitch_84
    iget-object v4, p0, Lanb;->a:Ljava/io/Writer;

    const-string v5, "\\u%04x"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2e

    .line 535
    :cond_98
    iget-object v4, p0, Lanb;->a:Ljava/io/Writer;

    invoke-virtual {v4, v3}, Ljava/io/Writer;->write(I)V

    goto :goto_2e

    .line 540
    :cond_9e
    iget-object v0, p0, Lanb;->a:Ljava/io/Writer;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 541
    return-void

    .line 487
    :sswitch_data_a6
    .sparse-switch
        0x8 -> :sswitch_46
        0x9 -> :sswitch_3e
        0xa -> :sswitch_4e
        0xc -> :sswitch_5e
        0xd -> :sswitch_56
        0x22 -> :sswitch_31
        0x26 -> :sswitch_66
        0x27 -> :sswitch_66
        0x3c -> :sswitch_66
        0x3d -> :sswitch_66
        0x3e -> :sswitch_66
        0x5c -> :sswitch_31
        0x2028 -> :sswitch_84
        0x2029 -> :sswitch_84
    .end sparse-switch
.end method

.method private b(Z)V
    .registers 5
    .parameter

    .prologue
    .line 578
    sget-object v0, Lanc;->a:[I

    invoke-direct {p0}, Lanb;->a()LamZ;

    move-result-object v1

    invoke-virtual {v1}, LamZ;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_68

    .line 607
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Nesting problem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lanb;->a:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 580
    :pswitch_2a
    iget-boolean v0, p0, Lanb;->a:Z

    if-nez v0, :cond_38

    if-nez p1, :cond_38

    .line 581
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JSON must start with an array or an object."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 584
    :cond_38
    sget-object v0, LamZ;->g:LamZ;

    invoke-direct {p0, v0}, Lanb;->a(LamZ;)V

    .line 609
    :goto_3d
    return-void

    .line 588
    :pswitch_3e
    sget-object v0, LamZ;->b:LamZ;

    invoke-direct {p0, v0}, Lanb;->a(LamZ;)V

    .line 589
    invoke-direct {p0}, Lanb;->c()V

    goto :goto_3d

    .line 593
    :pswitch_47
    iget-object v0, p0, Lanb;->a:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 594
    invoke-direct {p0}, Lanb;->c()V

    goto :goto_3d

    .line 598
    :pswitch_52
    iget-object v0, p0, Lanb;->a:Ljava/io/Writer;

    iget-object v1, p0, Lanb;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 599
    sget-object v0, LamZ;->e:LamZ;

    invoke-direct {p0, v0}, Lanb;->a(LamZ;)V

    goto :goto_3d

    .line 603
    :pswitch_5f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JSON must have only one top-level value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 578
    nop

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_3e
        :pswitch_47
        :pswitch_52
        :pswitch_5f
    .end packed-switch
.end method

.method private c()V
    .registers 4

    .prologue
    .line 544
    iget-object v0, p0, Lanb;->a:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 552
    :cond_4
    return-void

    .line 548
    :cond_5
    iget-object v0, p0, Lanb;->a:Ljava/io/Writer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 549
    const/4 v0, 0x1

    :goto_d
    iget-object v1, p0, Lanb;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 550
    iget-object v1, p0, Lanb;->a:Ljava/io/Writer;

    iget-object v2, p0, Lanb;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 549
    add-int/lit8 v0, v0, 0x1

    goto :goto_d
.end method

.method private d()V
    .registers 4

    .prologue
    .line 559
    invoke-direct {p0}, Lanb;->a()LamZ;

    move-result-object v0

    .line 560
    sget-object v1, LamZ;->e:LamZ;

    if-ne v0, v1, :cond_18

    .line 561
    iget-object v0, p0, Lanb;->a:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 565
    :cond_f
    invoke-direct {p0}, Lanb;->c()V

    .line 566
    sget-object v0, LamZ;->d:LamZ;

    invoke-direct {p0, v0}, Lanb;->a(LamZ;)V

    .line 567
    return-void

    .line 562
    :cond_18
    sget-object v1, LamZ;->c:LamZ;

    if-eq v0, v1, :cond_f

    .line 563
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Nesting problem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lanb;->a:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()Lanb;
    .registers 3

    .prologue
    .line 247
    invoke-direct {p0}, Lanb;->b()V

    .line 248
    sget-object v0, LamZ;->a:LamZ;

    const-string v1, "["

    invoke-direct {p0, v0, v1}, Lanb;->a(LamZ;Ljava/lang/String;)Lanb;

    move-result-object v0

    return-object v0
.end method

.method public a(D)Lanb;
    .registers 6
    .parameter

    .prologue
    .line 407
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 408
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Numeric values must be finite, but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 410
    :cond_25
    invoke-direct {p0}, Lanb;->b()V

    .line 411
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lanb;->b(Z)V

    .line 412
    iget-object v0, p0, Lanb;->a:Ljava/io/Writer;

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 413
    return-object p0
.end method

.method public a(J)Lanb;
    .registers 5
    .parameter

    .prologue
    .line 422
    invoke-direct {p0}, Lanb;->b()V

    .line 423
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lanb;->b(Z)V

    .line 424
    iget-object v0, p0, Lanb;->a:Ljava/io/Writer;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 425
    return-object p0
.end method

.method public a(Ljava/lang/Number;)Lanb;
    .registers 5
    .parameter

    .prologue
    .line 436
    if-nez p1, :cond_7

    .line 437
    invoke-virtual {p0}, Lanb;->e()Lanb;

    move-result-object p0

    .line 448
    :goto_6
    return-object p0

    .line 440
    :cond_7
    invoke-direct {p0}, Lanb;->b()V

    .line 441
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 442
    iget-boolean v1, p0, Lanb;->a:Z

    if-nez v1, :cond_43

    const-string v1, "-Infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    const-string v1, "Infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    const-string v1, "NaN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 444
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Numeric values must be finite, but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 446
    :cond_43
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lanb;->b(Z)V

    .line 447
    iget-object v1, p0, Lanb;->a:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto :goto_6
.end method

.method public a(Ljava/lang/String;)Lanb;
    .registers 4
    .parameter

    .prologue
    .line 334
    if-nez p1, :cond_a

    .line 335
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :cond_a
    iget-object v0, p0, Lanb;->c:Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 338
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 340
    :cond_14
    iput-object p1, p0, Lanb;->c:Ljava/lang/String;

    .line 341
    return-object p0
.end method

.method public a(Z)Lanb;
    .registers 4
    .parameter

    .prologue
    .line 393
    invoke-direct {p0}, Lanb;->b()V

    .line 394
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lanb;->b(Z)V

    .line 395
    iget-object v1, p0, Lanb;->a:Ljava/io/Writer;

    if-eqz p1, :cond_11

    const-string v0, "true"

    :goto_d
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 396
    return-object p0

    .line 395
    :cond_11
    const-string v0, "false"

    goto :goto_d
.end method

.method public a()V
    .registers 2

    .prologue
    .line 456
    iget-object v0, p0, Lanb;->a:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 457
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 173
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lanb;->a:Ljava/lang/String;

    .line 175
    const-string v0, ":"

    iput-object v0, p0, Lanb;->b:Ljava/lang/String;

    .line 180
    :goto_d
    return-void

    .line 177
    :cond_e
    iput-object p1, p0, Lanb;->a:Ljava/lang/String;

    .line 178
    const-string v0, ": "

    iput-object v0, p0, Lanb;->b:Ljava/lang/String;

    goto :goto_d
.end method

.method public final a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 195
    iput-boolean p1, p0, Lanb;->a:Z

    .line 196
    return-void
.end method

.method public b()Lanb;
    .registers 4

    .prologue
    .line 257
    sget-object v0, LamZ;->a:LamZ;

    sget-object v1, LamZ;->b:LamZ;

    const-string v2, "]"

    invoke-direct {p0, v0, v1, v2}, Lanb;->a(LamZ;LamZ;Ljava/lang/String;)Lanb;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lanb;
    .registers 3
    .parameter

    .prologue
    .line 359
    if-nez p1, :cond_7

    .line 360
    invoke-virtual {p0}, Lanb;->e()Lanb;

    move-result-object p0

    .line 365
    :goto_6
    return-object p0

    .line 362
    :cond_7
    invoke-direct {p0}, Lanb;->b()V

    .line 363
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lanb;->b(Z)V

    .line 364
    invoke-direct {p0, p1}, Lanb;->b(Ljava/lang/String;)V

    goto :goto_6
.end method

.method public c()Lanb;
    .registers 3

    .prologue
    .line 267
    invoke-direct {p0}, Lanb;->b()V

    .line 268
    sget-object v0, LamZ;->c:LamZ;

    const-string v1, "{"

    invoke-direct {p0, v0, v1}, Lanb;->a(LamZ;Ljava/lang/String;)Lanb;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .registers 3

    .prologue
    .line 465
    iget-object v0, p0, Lanb;->a:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 467
    invoke-direct {p0}, Lanb;->a()LamZ;

    move-result-object v0

    sget-object v1, LamZ;->g:LamZ;

    if-eq v0, v1, :cond_15

    .line 468
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Incomplete document"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 470
    :cond_15
    return-void
.end method

.method public d()Lanb;
    .registers 4

    .prologue
    .line 277
    sget-object v0, LamZ;->c:LamZ;

    sget-object v1, LamZ;->e:LamZ;

    const-string v2, "}"

    invoke-direct {p0, v0, v1, v2}, Lanb;->a(LamZ;LamZ;Ljava/lang/String;)Lanb;

    move-result-object v0

    return-object v0
.end method

.method public e()Lanb;
    .registers 3

    .prologue
    .line 374
    iget-object v0, p0, Lanb;->c:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 375
    iget-boolean v0, p0, Lanb;->c:Z

    if-eqz v0, :cond_17

    .line 376
    invoke-direct {p0}, Lanb;->b()V

    .line 382
    :cond_b
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lanb;->b(Z)V

    .line 383
    iget-object v0, p0, Lanb;->a:Ljava/io/Writer;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 384
    :goto_16
    return-object p0

    .line 378
    :cond_17
    const/4 v0, 0x0

    iput-object v0, p0, Lanb;->c:Ljava/lang/String;

    goto :goto_16
.end method
