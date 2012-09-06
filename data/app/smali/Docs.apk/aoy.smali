.class public final Laoy;
.super Ljava/lang/Object;
.source "Errors.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final a:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "LaoD",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final a:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final a:Laoy;

.field private final a:Ljava/lang/Object;

.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "LaqF;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Laoy;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 74
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Laoy;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 672
    new-instance v0, LaoA;

    const-class v1, Ljava/lang/Class;

    invoke-direct {v0, v1}, LaoA;-><init>(Ljava/lang/Class;)V

    new-instance v1, LaoB;

    const-class v2, Ljava/lang/reflect/Member;

    invoke-direct {v1, v2}, LaoB;-><init>(Ljava/lang/Class;)V

    new-instance v2, LaoC;

    const-class v3, Lant;

    invoke-direct {v2, v3}, LaoC;-><init>(Ljava/lang/Class;)V

    invoke-static {v0, v1, v2}, LaiA;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)LaiA;

    move-result-object v0

    sput-object v0, Laoy;->a:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p0, p0, Laoy;->a:Laoy;

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Laoy;->b:Laoy;

    .line 113
    sget-object v0, LapW;->a:Ljava/lang/Object;

    iput-object v0, p0, Laoy;->a:Ljava/lang/Object;

    .line 114
    return-void
.end method

.method private constructor <init>(Laoy;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iget-object v0, p1, Laoy;->a:Laoy;

    iput-object v0, p0, Laoy;->a:Laoy;

    .line 124
    iput-object p1, p0, Laoy;->b:Laoy;

    .line 125
    iput-object p2, p0, Laoy;->a:Ljava/lang/Object;

    .line 126
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .parameter

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p0, p0, Laoy;->a:Laoy;

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Laoy;->b:Laoy;

    .line 119
    iput-object p1, p0, Laoy;->a:Ljava/lang/Object;

    .line 120
    return-void
.end method

.method private a(LaqF;)LaqF;
    .registers 6
    .parameter

    .prologue
    .line 484
    invoke-static {}, Lajk;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 485
    invoke-virtual {p0}, Laoy;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 486
    invoke-virtual {p1}, LaqF;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 487
    new-instance v1, LaqF;

    invoke-virtual {p1}, LaqF;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, LaqF;->a()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, LaqF;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 695
    sget-object v0, Laoy;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaoD;

    .line 696
    invoke-virtual {v0, p0}, LaoD;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 697
    invoke-virtual {v0, p0}, LaoD;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 700
    :cond_1c
    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;
    .registers 12
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "LaqF;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 574
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    const-string v1, ":%n%n"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v6

    .line 576
    invoke-static {p1}, Laoy;->a(Ljava/util/Collection;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_59

    move v1, v2

    .line 578
    :goto_1c
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v4, v2

    :goto_21
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_86

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaqF;

    .line 579
    const-string v8, "%s) %s%n"

    const/4 v5, 0x2

    new-array v9, v5, [Ljava/lang/Object;

    add-int/lit8 v5, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v9, v3

    invoke-virtual {v0}, LaqF;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v2

    invoke-virtual {v6, v8, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 581
    invoke-virtual {v0}, LaqF;->a()Ljava/util/List;

    move-result-object v8

    .line 582
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_4d
    if-ltz v4, :cond_5b

    .line 583
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 584
    invoke-static {v6, v9}, Laoy;->a(Ljava/util/Formatter;Ljava/lang/Object;)V

    .line 582
    add-int/lit8 v4, v4, -0x1

    goto :goto_4d

    :cond_59
    move v1, v3

    .line 576
    goto :goto_1c

    .line 587
    :cond_5b
    invoke-virtual {v0}, LaqF;->a()Ljava/lang/Throwable;

    move-result-object v0

    .line 588
    if-eqz v1, :cond_7d

    if-eqz v0, :cond_7d

    .line 589
    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    .line 590
    new-instance v8, Ljava/io/PrintWriter;

    invoke-direct {v8, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v8}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 591
    const-string v0, "Caused by: %s"

    new-array v8, v2, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v4

    aput-object v4, v8, v3

    invoke-virtual {v6, v0, v8}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 594
    :cond_7d
    const-string v0, "%n"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v6, v0, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move v4, v5

    .line 595
    goto :goto_21

    .line 597
    :cond_86
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-ne v0, v2, :cond_98

    .line 598
    const-string v0, "1 error"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v6, v0, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 603
    :goto_93
    invoke-virtual {v6}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 600
    :cond_98
    const-string v0, "%s errors"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v6, v0, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_93
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 551
    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_f

    .line 552
    aget-object v1, p1, v0

    invoke-static {v1}, Laoy;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p1, v0

    .line 551
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 554
    :cond_f
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/RuntimeException;)Ljava/lang/Throwable;
    .registers 3
    .parameter

    .prologue
    .line 424
    instance-of v0, p1, LaoG;

    if-eqz v0, :cond_8

    .line 425
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .line 427
    :cond_8
    return-object p1
.end method

.method public static a(Ljava/util/Collection;)Ljava/lang/Throwable;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "LaqF;",
            ">;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 632
    .line 633
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v2

    :cond_6
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaqF;

    .line 634
    invoke-virtual {v0}, LaqF;->a()Ljava/lang/Throwable;

    move-result-object v0

    .line 635
    if-eqz v0, :cond_6

    .line 639
    if-eqz v1, :cond_1b

    .line 646
    :goto_1a
    return-object v2

    :cond_1b
    move-object v1, v0

    .line 644
    goto :goto_6

    :cond_1d
    move-object v2, v1

    .line 646
    goto :goto_1a
.end method

.method public static a(Ljava/lang/Throwable;)Ljava/util/Collection;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/Collection",
            "<",
            "LaqF;",
            ">;"
        }
    .end annotation

    .prologue
    .line 402
    instance-of v0, p0, LanF;

    if-eqz v0, :cond_b

    .line 403
    check-cast p0, LanF;

    invoke-virtual {p0}, LanF;->a()Ljava/util/Collection;

    move-result-object v0

    .line 409
    :goto_a
    return-object v0

    .line 404
    :cond_b
    instance-of v0, p0, Lani;

    if-eqz v0, :cond_16

    .line 405
    check-cast p0, Lani;

    invoke-virtual {p0}, Lani;->a()Ljava/util/Collection;

    move-result-object v0

    goto :goto_a

    .line 406
    :cond_16
    instance-of v0, p0, Lanj;

    if-eqz v0, :cond_21

    .line 407
    check-cast p0, Lanj;

    invoke-virtual {p0}, Lanj;->a()Ljava/util/Collection;

    move-result-object v0

    goto :goto_a

    .line 409
    :cond_21
    invoke-static {}, LaiE;->a()LaiE;

    move-result-object v0

    goto :goto_a
.end method

.method public static a(Ljava/util/Formatter;Laqk;Laqt;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Formatter;",
            "Laqk",
            "<*>;",
            "Laqt;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 736
    invoke-virtual {p2}, Laqt;->a()Ljava/lang/reflect/Member;

    move-result-object v1

    .line 737
    invoke-static {v1}, LapV;->a(Ljava/lang/reflect/Member;)Ljava/lang/Class;

    move-result-object v0

    .line 739
    const-class v2, Ljava/lang/reflect/Field;

    if-ne v0, v2, :cond_37

    .line 740
    invoke-virtual {p2}, Laqt;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqk;

    .line 741
    const-string v2, "  while locating %s%n"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Laqk;->a()Lant;

    move-result-object v0

    invoke-static {v0}, Laoy;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 742
    const-string v0, "    for field at %s%n"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1}, LapX;->a(Ljava/lang/reflect/Member;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v2, v4

    invoke-virtual {p0, v0, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 752
    :goto_36
    return-void

    .line 744
    :cond_37
    if-eqz p1, :cond_63

    .line 745
    const-string v0, "  while locating %s%n"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Laqk;->a()Lant;

    move-result-object v3

    invoke-static {v3}, Laoy;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 746
    const-string v0, "    for parameter %s at %s%n"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Laqk;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1}, LapX;->a(Ljava/lang/reflect/Member;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v2, v5

    invoke-virtual {p0, v0, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_36

    .line 750
    :cond_63
    invoke-virtual {p2}, Laqt;->a()Ljava/lang/reflect/Member;

    move-result-object v0

    invoke-static {p0, v0}, Laoy;->a(Ljava/util/Formatter;Ljava/lang/Object;)V

    goto :goto_36
.end method

.method public static a(Ljava/util/Formatter;Ljava/lang/Object;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 704
    instance-of v0, p1, Laqk;

    if-eqz v0, :cond_1a

    .line 705
    check-cast p1, Laqk;

    .line 706
    invoke-virtual {p1}, Laqk;->a()Laqt;

    move-result-object v0

    .line 707
    if-eqz v0, :cond_12

    .line 708
    invoke-static {p0, p1, v0}, Laoy;->a(Ljava/util/Formatter;Laqk;Laqt;)V

    .line 732
    :goto_11
    return-void

    .line 710
    :cond_12
    invoke-virtual {p1}, Laqk;->a()Lant;

    move-result-object v0

    invoke-static {p0, v0}, Laoy;->a(Ljava/util/Formatter;Ljava/lang/Object;)V

    goto :goto_11

    .line 713
    :cond_1a
    instance-of v0, p1, Laqt;

    if-eqz v0, :cond_25

    .line 714
    const/4 v0, 0x0

    check-cast p1, Laqt;

    invoke-static {p0, v0, p1}, Laoy;->a(Ljava/util/Formatter;Laqk;Laqt;)V

    goto :goto_11

    .line 716
    :cond_25
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_39

    .line 717
    const-string v0, "  at %s%n"

    new-array v1, v1, [Ljava/lang/Object;

    check-cast p1, Ljava/lang/Class;

    invoke-static {p1}, LapX;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_11

    .line 719
    :cond_39
    instance-of v0, p1, Ljava/lang/reflect/Member;

    if-eqz v0, :cond_4d

    .line 720
    const-string v0, "  at %s%n"

    new-array v1, v1, [Ljava/lang/Object;

    check-cast p1, Ljava/lang/reflect/Member;

    invoke-static {p1}, LapX;->a(Ljava/lang/reflect/Member;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_11

    .line 722
    :cond_4d
    instance-of v0, p1, LanP;

    if-eqz v0, :cond_5b

    .line 723
    const-string v0, "  while locating %s%n"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_11

    .line 725
    :cond_5b
    instance-of v0, p1, Lant;

    if-eqz v0, :cond_6f

    .line 726
    check-cast p1, Lant;

    .line 727
    const-string v0, "  while locating %s%n"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Laoy;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_11

    .line 730
    :cond_6f
    const-string v0, "  at %s%n"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_11
.end method

.method private static a(Laqk;)Z
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laqk",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 78
    const-string v0, "I\'m a bad hack"

    const-string v1, "guice.allow.nulls.bad.bad.bad"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 81
    if-eqz v0, :cond_3e

    sget-object v1, Laoy;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_3e

    .line 82
    const-class v1, Lanp;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Guice injected null into "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; please mark it @Nullable"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 86
    :cond_3e
    return v0
.end method

.method private varargs b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Laoy;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 537
    invoke-static {p2, p3}, Laoy;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 538
    new-instance v1, LaqF;

    invoke-virtual {p0}, Laoy;->a()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2, v0, p1}, LaqF;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Laoy;->a(LaqF;)Laoy;

    .line 539
    return-object p0
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 650
    iget-object v0, p0, Laoy;->a:Laoy;

    iget-object v0, v0, Laoy;->a:Ljava/util/List;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Laoy;->a:Laoy;

    iget-object v0, v0, Laoy;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_7
.end method

.method public a()LaoE;
    .registers 2

    .prologue
    .line 525
    new-instance v0, LaoE;

    invoke-direct {v0, p0}, LaoE;-><init>(Laoy;)V

    return-object v0
.end method

.method public a()Laoy;
    .registers 3

    .prologue
    .line 211
    const-string v0, "@ImplementedBy points to the same class it annotates."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Laoy;->a(Ljava/lang/String;[Ljava/lang/Object;)Laoy;

    move-result-object v0

    return-object v0
.end method

.method public a(LanP;)Laoy;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LanP",
            "<*>;)",
            "Laoy;"
        }
    .end annotation

    .prologue
    .line 394
    const-string v0, "%s cannot be used as a key; It is not fully specified."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Laoy;->a(Ljava/lang/String;[Ljava/lang/Object;)Laoy;

    move-result-object v0

    return-object v0
.end method

.method public a(Lant;)Laoy;
    .registers 5
    .parameter

    .prologue
    .line 151
    const-string v0, "No implementation for %s was bound."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Laoy;->a(Ljava/lang/String;[Ljava/lang/Object;)Laoy;

    move-result-object v0

    return-object v0
.end method

.method public a(Lant;Ljava/util/Set;)Laoy;
    .registers 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lant",
            "<*>;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Laoy;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 332
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    .line 333
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 334
    if-nez v2, :cond_1f

    .line 335
    const-string v2, "%n    (bound by a just-in-time binding)"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_b

    .line 337
    :cond_1f
    const-string v3, "%n    bound at %s"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v2, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_b

    .line 340
    :cond_29
    const-string v1, "Unable to create binding for %s. It was already configured on one or more child injectors or private modules%s%n  If it was in a PrivateModule, did you forget to expose the binding?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-virtual {v0}, Ljava/util/Formatter;->out()Ljava/lang/Appendable;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-virtual {p0, v1, v2}, Laoy;->a(Ljava/lang/String;[Ljava/lang/Object;)Laoy;

    move-result-object v0

    .line 346
    return-object v0
.end method

.method public a(Lany;LanP;Ljava/lang/RuntimeException;)Laoy;
    .registers 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lany",
            "<*>;",
            "LanP",
            "<*>;",
            "Ljava/lang/RuntimeException;",
            ")",
            "Laoy;"
        }
    .end annotation

    .prologue
    .line 379
    const-string v0, "Error injecting %s using %s.%n Reason: %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-virtual {p0, p3, v0, v1}, Laoy;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Laoy;

    move-result-object v0

    return-object v0
.end method

.method public a(Laoy;)Laoy;
    .registers 4
    .parameter

    .prologue
    .line 498
    iget-object v0, p1, Laoy;->a:Laoy;

    iget-object v1, p0, Laoy;->a:Laoy;

    if-eq v0, v1, :cond_c

    iget-object v0, p1, Laoy;->a:Laoy;

    iget-object v0, v0, Laoy;->a:Ljava/util/List;

    if-nez v0, :cond_d

    .line 503
    :cond_c
    :goto_c
    return-object p0

    .line 502
    :cond_d
    iget-object v0, p1, Laoy;->a:Laoy;

    iget-object v0, v0, Laoy;->a:Ljava/util/List;

    invoke-virtual {p0, v0}, Laoy;->a(Ljava/util/Collection;)Laoy;

    goto :goto_c
.end method

.method public a(LaqF;)Laoy;
    .registers 4
    .parameter

    .prologue
    .line 543
    iget-object v0, p0, Laoy;->a:Laoy;

    iget-object v0, v0, Laoy;->a:Ljava/util/List;

    if-nez v0, :cond_e

    .line 544
    iget-object v0, p0, Laoy;->a:Laoy;

    invoke-static {}, Lajk;->a()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Laoy;->a:Ljava/util/List;

    .line 546
    :cond_e
    iget-object v0, p0, Laoy;->a:Laoy;

    iget-object v0, v0, Laoy;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 547
    return-object p0
.end method

.method public a(Laqs;LanP;Ljava/lang/RuntimeException;)Laoy;
    .registers 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laqs",
            "<*>;",
            "LanP",
            "<*>;",
            "Ljava/lang/RuntimeException;",
            ")",
            "Laoy;"
        }
    .end annotation

    .prologue
    .line 385
    const-string v0, "Error notifying InjectionListener %s of %s.%n Reason: %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-virtual {p0, p3, v0, v1}, Laoy;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Laoy;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Class;)Laoy;
    .registers 5
    .parameter

    .prologue
    .line 159
    const-string v0, "Explicit @Inject annotations are required on constructors, but %s has no constructors annotated with @Inject."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Laoy;->a(Ljava/lang/String;[Ljava/lang/Object;)Laoy;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Class;Ljava/lang/Class;)Laoy;
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "LanD",
            "<*>;>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Laoy;"
        }
    .end annotation

    .prologue
    .line 203
    const-string v0, "%s doesn\'t provide instances of %s."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Laoy;->a(Ljava/lang/String;[Ljava/lang/Object;)Laoy;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Laoy;
    .registers 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Laoy;"
        }
    .end annotation

    .prologue
    .line 242
    const-string v0, "%s is annotated with %s, but scope annotations are not supported for abstract types.%n Bound at %s."

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Laoy;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Laoy;->a(Ljava/lang/String;[Ljava/lang/Object;)Laoy;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Laoy;
    .registers 3
    .parameter

    .prologue
    .line 132
    sget-object v0, LapW;->a:Ljava/lang/Object;

    if-ne p1, v0, :cond_5

    :goto_4
    return-object p0

    :cond_5
    new-instance v0, Laoy;

    invoke-direct {v0, p0, p1}, Laoy;-><init>(Laoy;Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_4
.end method

.method public a(Ljava/lang/RuntimeException;)Laoy;
    .registers 6
    .parameter

    .prologue
    .line 373
    invoke-direct {p0, p1}, Laoy;->a(Ljava/lang/RuntimeException;)Ljava/lang/Throwable;

    move-result-object v0

    .line 374
    const-string v1, "Error in custom provider, %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Laoy;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Laoy;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;LanP;LaqT;)Laoy;
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "LanP",
            "<*>;",
            "LaqT;",
            ")",
            "Laoy;"
        }
    .end annotation

    .prologue
    .line 167
    const-string v0, "Received null converting \'%s\' (bound at %s) to %s%n using %s."

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Laoy;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    invoke-virtual {p0, v0, v1}, Laoy;->a(Ljava/lang/String;[Ljava/lang/Object;)Laoy;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;LanP;LaqT;Ljava/lang/Object;)Laoy;
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "LanP",
            "<*>;",
            "LaqT;",
            "Ljava/lang/Object;",
            ")",
            "Laoy;"
        }
    .end annotation

    .prologue
    .line 174
    const-string v0, "Type mismatch converting \'%s\' (bound at %s) to %s%n using %s.%n Converter returned %s."

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Laoy;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    const/4 v2, 0x4

    aput-object p5, v1, v2

    invoke-virtual {p0, v0, v1}, Laoy;->a(Ljava/lang/String;[Ljava/lang/Object;)Laoy;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;LanP;LaqT;Ljava/lang/RuntimeException;)Laoy;
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "LanP",
            "<*>;",
            "LaqT;",
            "Ljava/lang/RuntimeException;",
            ")",
            "Laoy;"
        }
    .end annotation

    .prologue
    .line 182
    const-string v0, "Error converting \'%s\' (bound at %s) to %s%n using %s.%n Reason: %s"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Laoy;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    const/4 v2, 0x4

    aput-object p5, v1, v2

    invoke-virtual {p0, p5, v0, v1}, Laoy;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Laoy;

    move-result-object v0

    return-object v0
.end method

.method public varargs a(Ljava/lang/String;[Ljava/lang/Object;)Laoy;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 533
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Laoy;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Laoy;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Throwable;)Laoy;
    .registers 5
    .parameter

    .prologue
    .line 369
    const-string v0, "Error injecting constructor, %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, p1, v0, v1}, Laoy;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Laoy;

    move-result-object v0

    return-object v0
.end method

.method public varargs a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Laoy;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 414
    invoke-static {p1}, Laoy;->a(Ljava/lang/Throwable;)Ljava/util/Collection;

    move-result-object v0

    .line 416
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f

    .line 417
    invoke-virtual {p0, v0}, Laoy;->a(Ljava/util/Collection;)Laoy;

    move-result-object v0

    .line 419
    :goto_e
    return-object v0

    :cond_f
    invoke-direct {p0, p1, p2, p3}, Laoy;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Laoy;

    move-result-object v0

    goto :goto_e
.end method

.method public a(Ljava/lang/reflect/Constructor;)Laoy;
    .registers 5
    .parameter

    .prologue
    .line 228
    const-string v0, "%s is annotated @Inject(optional=true), but constructors cannot be optional."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Laoy;->a(Ljava/lang/String;[Ljava/lang/Object;)Laoy;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/reflect/Field;)Laoy;
    .registers 5
    .parameter

    .prologue
    .line 299
    const-string v0, "Injected field %s cannot be final."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Laoy;->a(Ljava/lang/String;[Ljava/lang/Object;)Laoy;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/reflect/Member;Ljava/lang/Class;Ljava/lang/Class;)Laoy;
    .registers 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Member;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Laoy;"
        }
    .end annotation

    .prologue
    .line 290
    const-string v0, "%s has more than one annotation annotated with @BindingAnnotation: %s and %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-virtual {p0, v0, v1}, Laoy;->a(Ljava/lang/String;[Ljava/lang/Object;)Laoy;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/reflect/Member;Ljava/lang/annotation/Annotation;)Laoy;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 247
    const-string v0, "%s is annotated with %s, but binding annotations should be applied to its parameters instead."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Laoy;->a(Ljava/lang/String;[Ljava/lang/Object;)Laoy;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/reflect/Method;)Laoy;
    .registers 5
    .parameter

    .prologue
    .line 303
    const-string v0, "Injected method %s cannot be abstract."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Laoy;->a(Ljava/lang/String;[Ljava/lang/Object;)Laoy;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/reflect/Type;)Laoy;
    .registers 5
    .parameter

    .prologue
    .line 440
    const-string v0, "Cannot inject a TypeLiteral of %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Laoy;->a(Ljava/lang/String;[Ljava/lang/Object;)Laoy;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/Collection;)Laoy;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "LaqF;",
            ">;)",
            "Laoy;"
        }
    .end annotation

    .prologue
    .line 491
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaqF;

    .line 492
    invoke-direct {p0, v0}, Laoy;->a(LaqF;)LaqF;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoy;->a(LaqF;)Laoy;

    goto :goto_4

    .line 494
    :cond_18
    return-object p0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;Laqk;)Ljava/lang/Object;
    .registers 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Object;",
            "Laqk",
            "<*>;)TT;"
        }
    .end annotation

    .prologue
    .line 612
    if-nez p1, :cond_e

    invoke-virtual {p3}, Laqk;->a()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {p3}, Laoy;->a(Laqk;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 614
    :cond_e
    return-object p1

    .line 617
    :cond_f
    invoke-virtual {p3}, Laqk;->a()I

    move-result v0

    .line 618
    const/4 v1, -0x1

    if-eq v0, v1, :cond_4d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parameter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 621
    :goto_2f
    const-string v1, "null returned by binding at %s%n but %s%s is not @Nullable"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    invoke-virtual {p3}, Laqk;->a()Laqt;

    move-result-object v3

    invoke-virtual {v3}, Laqt;->a()Ljava/lang/reflect/Member;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p0, v1, v2}, Laoy;->a(Ljava/lang/String;[Ljava/lang/Object;)Laoy;

    .line 624
    invoke-virtual {p0}, Laoy;->a()LaoE;

    move-result-object v0

    throw v0

    .line 618
    :cond_4d
    const-string v0, ""

    goto :goto_2f
.end method

.method public a()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 507
    invoke-static {}, Lajk;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 508
    :goto_4
    if-eqz p0, :cond_15

    .line 509
    iget-object v1, p0, Laoy;->a:Ljava/lang/Object;

    sget-object v2, LapW;->a:Ljava/lang/Object;

    if-eq v1, v2, :cond_12

    .line 510
    const/4 v1, 0x0

    iget-object v2, p0, Laoy;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 508
    :cond_12
    iget-object p0, p0, Laoy;->b:Laoy;

    goto :goto_4

    .line 513
    :cond_15
    return-object v0
.end method

.method public a()V
    .registers 3

    .prologue
    .line 468
    invoke-virtual {p0}, Laoy;->a()Z

    move-result v0

    if-nez v0, :cond_7

    .line 469
    return-void

    .line 472
    :cond_7
    new-instance v0, Lani;

    invoke-virtual {p0}, Laoy;->b()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lani;-><init>(Ljava/lang/Iterable;)V

    throw v0
.end method

.method public a(I)V
    .registers 3
    .parameter

    .prologue
    .line 517
    invoke-virtual {p0}, Laoy;->a()I

    move-result v0

    if-ne v0, p1, :cond_7

    .line 518
    return-void

    .line 521
    :cond_7
    invoke-virtual {p0}, Laoy;->a()LaoE;

    move-result-object v0

    throw v0
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 529
    iget-object v0, p0, Laoy;->a:Laoy;

    iget-object v0, v0, Laoy;->a:Ljava/util/List;

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public b()Laoy;
    .registers 3

    .prologue
    .line 215
    const-string v0, "@ProvidedBy points to the same class it annotates."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Laoy;->a(Ljava/lang/String;[Ljava/lang/Object;)Laoy;

    move-result-object v0

    return-object v0
.end method

.method public b(Lant;)Laoy;
    .registers 5
    .parameter

    .prologue
    .line 155
    const-string v0, "Explicit bindings are required and %s is not explicitly bound."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Laoy;->a(Ljava/lang/String;[Ljava/lang/Object;)Laoy;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/Class;)Laoy;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Laoy;"
        }
    .end annotation

    .prologue
    .line 237
    const-string v0, "No scope is bound to %s."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Laoy;->a(Ljava/lang/String;[Ljava/lang/Object;)Laoy;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/Class;Ljava/lang/Class;)Laoy;
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Laoy;"
        }
    .end annotation

    .prologue
    .line 207
    const-string v0, "%s doesn\'t extend %s."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Laoy;->a(Ljava/lang/String;[Ljava/lang/Object;)Laoy;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/reflect/Method;)Laoy;
    .registers 5
    .parameter

    .prologue
    .line 311
    const-string v0, "Injected method %s cannot declare type parameters of its own."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Laoy;->a(Ljava/lang/String;[Ljava/lang/Object;)Laoy;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "LaqF;",
            ">;"
        }
    .end annotation

    .prologue
    .line 558
    iget-object v0, p0, Laoy;->a:Laoy;

    iget-object v0, v0, Laoy;->a:Ljava/util/List;

    if-nez v0, :cond_b

    .line 559
    invoke-static {}, LaiA;->c()LaiA;

    move-result-object v0

    .line 569
    :goto_a
    return-object v0

    .line 562
    :cond_b
    iget-object v0, p0, Laoy;->a:Laoy;

    iget-object v0, v0, Laoy;->a:Ljava/util/List;

    invoke-static {v0}, Lajk;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 563
    new-instance v1, Laoz;

    invoke-direct {v1, p0}, Laoz;-><init>(Laoy;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_a
.end method

.method public b()V
    .registers 3

    .prologue
    .line 476
    invoke-virtual {p0}, Laoy;->a()Z

    move-result v0

    if-nez v0, :cond_7

    .line 477
    return-void

    .line 480
    :cond_7
    new-instance v0, LanF;

    invoke-virtual {p0}, Laoy;->b()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, LanF;-><init>(Ljava/lang/Iterable;)V

    throw v0
.end method

.method public c()Laoy;
    .registers 3

    .prologue
    .line 432
    const-string v0, "Cannot inject a Provider that has no type parameter"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Laoy;->a(Ljava/lang/String;[Ljava/lang/Object;)Laoy;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/Class;)Laoy;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Laoy;"
        }
    .end annotation

    .prologue
    .line 256
    const-string v0, "Could not find a suitable constructor in %s. Classes must have either one (and only one) constructor annotated with @Inject or a zero-argument constructor that is not private."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Laoy;->a(Ljava/lang/String;[Ljava/lang/Object;)Laoy;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/Class;Ljava/lang/Class;)Laoy;
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Laoy;"
        }
    .end annotation

    .prologue
    .line 316
    const-string v0, "More than one scope annotation was found: %s and %s."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Laoy;->a(Ljava/lang/String;[Ljava/lang/Object;)Laoy;

    move-result-object v0

    return-object v0
.end method

.method public d()Laoy;
    .registers 3

    .prologue
    .line 436
    const-string v0, "Cannot inject a MembersInjector that has no type parameter"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Laoy;->a(Ljava/lang/String;[Ljava/lang/Object;)Laoy;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/Class;)Laoy;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Laoy;"
        }
    .end annotation

    .prologue
    .line 261
    const-string v0, "%s has more than one constructor annotated with @Inject. Classes must have either one (and only one) constructor annotated with @Inject or a zero-argument constructor that is not private."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Laoy;->a(Ljava/lang/String;[Ljava/lang/Object;)Laoy;

    move-result-object v0

    return-object v0
.end method

.method public e()Laoy;
    .registers 3

    .prologue
    .line 444
    const-string v0, "Cannot inject a TypeLiteral that has no type parameter"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Laoy;->a(Ljava/lang/String;[Ljava/lang/Object;)Laoy;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/Class;)Laoy;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Laoy;"
        }
    .end annotation

    .prologue
    .line 284
    const-string v0, "Injecting into inner classes is not supported.  Please use a \'static\' class (top-level or nested) instead of %s."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Laoy;->a(Ljava/lang/String;[Ljava/lang/Object;)Laoy;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/Class;)Laoy;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Laoy;"
        }
    .end annotation

    .prologue
    .line 448
    const-string v0, "Tried proxying %s to support a circular dependency, but it is not an interface."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Laoy;->a(Ljava/lang/String;[Ljava/lang/Object;)Laoy;

    move-result-object v0

    return-object v0
.end method

.method public g(Ljava/lang/Class;)Laoy;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Laoy;"
        }
    .end annotation

    .prologue
    .line 454
    const-string v0, "Tried proxying %s to support a circular dependency, but circular proxies are disabled."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Laoy;->a(Ljava/lang/String;[Ljava/lang/Object;)Laoy;

    move-result-object v0

    return-object v0
.end method
