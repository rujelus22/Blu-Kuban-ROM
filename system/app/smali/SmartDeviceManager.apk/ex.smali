.class public Lex;
.super Ljava/lang/Object;
.source "a"


# static fields
.field static final a:I

.field static final b:I

.field protected static final c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lne;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field protected d:Lnb;

.field protected e:Lna;

.field protected f:Lfh;

.field protected g:I

.field protected h:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 58
    invoke-static {}, Lfd$a;->collectDefaults()I

    move-result v0

    sput v0, Lex;->a:I

    .line 64
    invoke-static {}, Lez$a;->collectDefaults()I

    move-result v0

    sput v0, Lex;->b:I

    .line 77
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lex;->c:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lex;-><init>(Lfh;)V

    return-void
.end method

.method public constructor <init>(Lfh;)V
    .registers 3
    .parameter

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-static {}, Lnb;->a()Lnb;

    move-result-object v0

    iput-object v0, p0, Lex;->d:Lnb;

    .line 94
    new-instance v0, Lna;

    invoke-direct {v0}, Lna;-><init>()V

    iput-object v0, p0, Lex;->e:Lna;

    .line 111
    sget v0, Lex;->a:I

    iput v0, p0, Lex;->g:I

    .line 113
    sget v0, Lex;->b:I

    iput v0, p0, Lex;->h:I

    .line 127
    iput-object p1, p0, Lex;->f:Lfh;

    return-void
.end method

.method private static a(Ljava/lang/Object;Z)Lgt;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 532
    new-instance v0, Lgt;

    invoke-static {}, Lex;->a()Lne;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lgt;-><init>(Lne;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public static a()Lne;
    .registers 3

    .prologue
    .line 597
    sget-object v0, Lex;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 598
    if-nez v0, :cond_1d

    const/4 v0, 0x0

    .line 600
    :goto_b
    if-nez v0, :cond_1c

    .line 601
    new-instance v0, Lne;

    invoke-direct {v0}, Lne;-><init>()V

    .line 602
    sget-object v1, Lex;->c:Ljava/lang/ThreadLocal;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 604
    :cond_1c
    return-object v0

    .line 598
    :cond_1d
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lne;

    goto :goto_b
.end method

.method private a(Lfd$a;)Z
    .registers 4
    .parameter

    .prologue
    .line 191
    iget v0, p0, Lex;->g:I

    invoke-virtual {p1}, Lfd$a;->getMask()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method


# virtual methods
.method public final a(Lfh;)Lex;
    .registers 2
    .parameter

    .prologue
    .line 322
    iput-object p1, p0, Lex;->f:Lfh;

    .line 323
    return-object p0
.end method

.method public final a(Ljava/io/Writer;)Lez;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 489
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lex;->a(Ljava/lang/Object;Z)Lgt;

    move-result-object v0

    .line 490
    new-instance v1, Lgs;

    iget v2, p0, Lex;->h:I

    iget-object v3, p0, Lex;->f:Lfh;

    invoke-direct {v1, v0, v2, v3, p1}, Lgs;-><init>(Lgt;ILfh;Ljava/io/Writer;)V

    return-object v1
.end method

.method public final a(Ljava/lang/String;)Lfd;
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation

    .prologue
    .line 427
    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 428
    const/4 v0, 0x1

    invoke-static {v3, v0}, Lex;->a(Ljava/lang/Object;Z)Lgt;

    move-result-object v1

    new-instance v0, Lgp;

    iget v2, p0, Lex;->g:I

    iget-object v4, p0, Lex;->f:Lfh;

    iget-object v5, p0, Lex;->d:Lnb;

    sget-object v6, Lfd$a;->CANONICALIZE_FIELD_NAMES:Lfd$a;

    invoke-direct {p0, v6}, Lex;->a(Lfd$a;)Z

    move-result v6

    sget-object v7, Lfd$a;->INTERN_FIELD_NAMES:Lfd$a;

    invoke-direct {p0, v7}, Lex;->a(Lfd$a;)Z

    move-result v7

    invoke-virtual {v5, v6, v7}, Lnb;->a(ZZ)Lnb;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lgp;-><init>(Lgt;ILjava/io/Reader;Lfh;Lnb;)V

    return-object v0
.end method
