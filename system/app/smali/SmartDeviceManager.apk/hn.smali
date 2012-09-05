.class public final Lhn;
.super Lfh;
.source "a"


# static fields
.field protected static final a:Lha;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lha",
            "<+",
            "Lgz;",
            ">;"
        }
    .end annotation
.end field

.field protected static final b:Lgy;

.field protected static final c:Lka;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lka",
            "<*>;"
        }
    .end annotation
.end field

.field private static final n:Lnd;


# instance fields
.field protected final d:Lex;

.field protected e:Lke;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lke",
            "<*>;"
        }
    .end annotation
.end field

.field protected f:Lka;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lka",
            "<*>;"
        }
    .end annotation
.end field

.field protected g:Lkc;

.field protected h:Lhq;

.field protected i:Lhs;

.field protected j:Lhr;

.field protected k:Lhb;

.field protected l:Lhe;

.field protected final m:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lnd;",
            "Lhf",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 179
    const-class v0, Lfb;

    invoke-static {v0}, Lmb;->a(Ljava/lang/reflect/Type;)Lnd;

    move-result-object v0

    sput-object v0, Lhn;->n:Lnd;

    .line 184
    sget-object v0, Ljv;->a:Ljv;

    sput-object v0, Lhn;->a:Lha;

    .line 187
    new-instance v0, Ljw;

    invoke-direct {v0}, Ljw;-><init>()V

    sput-object v0, Lhn;->b:Lgy;

    .line 190
    invoke-static {}, Lka$a;->a()Lka$a;

    move-result-object v0

    sput-object v0, Lhn;->c:Lka;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 342
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lhn;-><init>(Lex;C)V

    .line 343
    return-void
.end method

.method private constructor <init>(Lex;)V
    .registers 6
    .parameter

    .prologue
    .line 388
    invoke-direct {p0}, Lfh;-><init>()V

    .line 319
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x40

    const v2, 0x3f19999a

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lhn;->m:Ljava/util/concurrent/ConcurrentHashMap;

    .line 395
    if-nez p1, :cond_4a

    new-instance v0, Lhm;

    invoke-direct {v0, p0}, Lhm;-><init>(Lhn;)V

    :goto_17
    iput-object v0, p0, Lhn;->d:Lex;

    .line 397
    sget-object v0, Lhn;->c:Lka;

    iput-object v0, p0, Lhn;->f:Lka;

    .line 398
    new-instance v0, Lhq;

    sget-object v1, Lhn;->a:Lha;

    sget-object v2, Lhn;->b:Lgy;

    iget-object v3, p0, Lhn;->f:Lka;

    invoke-direct {v0, v1, v2, v3}, Lhq;-><init>(Lha;Lgy;Lka;)V

    iput-object v0, p0, Lhn;->h:Lhq;

    .line 400
    new-instance v0, Lhb;

    sget-object v1, Lhn;->a:Lha;

    sget-object v2, Lhn;->b:Lgy;

    iget-object v3, p0, Lhn;->f:Lka;

    invoke-direct {v0, v1, v2, v3}, Lhb;-><init>(Lha;Lgy;Lka;)V

    iput-object v0, p0, Lhn;->k:Lhb;

    .line 402
    new-instance v0, Llp;

    invoke-direct {v0}, Llp;-><init>()V

    iput-object v0, p0, Lhn;->i:Lhs;

    .line 403
    new-instance v0, Ljb;

    invoke-direct {v0}, Ljb;-><init>()V

    iput-object v0, p0, Lhn;->l:Lhe;

    .line 406
    sget-object v0, Lky;->e:Lky;

    iput-object v0, p0, Lhn;->j:Lhr;

    .line 407
    return-void

    :cond_4a
    move-object v0, p1

    .line 395
    goto :goto_17
.end method

.method public constructor <init>(Lex;B)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 352
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lhn;-><init>(Lex;C)V

    .line 353
    return-void
.end method

.method private constructor <init>(Lex;C)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 372
    invoke-direct {p0, p1}, Lhn;-><init>(Lex;)V

    .line 373
    return-void
.end method

.method private a(Lfd;Lnd;)Ljava/lang/Object;
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;,
            Lhg;
        }
    .end annotation

    .prologue
    .line 1974
    :try_start_0
    invoke-virtual {p1}, Lfd;->d()Lfg;

    move-result-object v0

    if-nez v0, :cond_19

    invoke-virtual {p1}, Lfd;->b()Lfg;

    move-result-object v0

    if-nez v0, :cond_19

    new-instance v0, Ljava/io/EOFException;

    const-string v1, "No content to map to Object due to end of input"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_14

    .line 1986
    :catchall_14
    move-exception v0

    .line 1987
    :try_start_15
    invoke-virtual {p1}, Lfd;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_78

    .line 1988
    :goto_18
    throw v0

    .line 1975
    :cond_19
    :try_start_19
    sget-object v1, Lfg;->VALUE_NULL:Lfg;

    if-eq v0, v1, :cond_25

    sget-object v1, Lfg;->END_ARRAY:Lfg;

    if-eq v0, v1, :cond_25

    sget-object v1, Lfg;->END_OBJECT:Lfg;

    if-ne v0, v1, :cond_2d

    .line 1976
    :cond_25
    const/4 v0, 0x0

    .line 1983
    :goto_26
    invoke-virtual {p1}, Lfd;->e()V
    :try_end_29
    .catchall {:try_start_19 .. :try_end_29} :catchall_14

    .line 1987
    :try_start_29
    invoke-virtual {p1}, Lfd;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_76

    .line 1988
    :goto_2c
    return-object v0

    .line 1978
    :cond_2d
    :try_start_2d
    iget-object v0, p0, Lhn;->k:Lhb;

    iget-object v1, p0, Lhn;->e:Lke;

    iget-object v2, p0, Lhn;->f:Lka;

    iget-object v3, p0, Lhn;->g:Lkc;

    invoke-virtual {v0, v1, v2, v3}, Lhb;->a(Lke;Lka;Lkc;)Lhb;

    move-result-object v1

    .line 1979
    new-instance v2, Liz;

    iget-object v0, p0, Lhn;->l:Lhe;

    invoke-direct {v2, v1, p1, v0}, Liz;-><init>(Lhb;Lfd;Lhe;)V

    .line 1980
    iget-object v0, p0, Lhn;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhf;

    if-eqz v0, :cond_4f

    :goto_4a
    invoke-virtual {v0, p1, v2}, Lhf;->a(Lfd;Lhc;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_26

    :cond_4f
    iget-object v0, p0, Lhn;->l:Lhe;

    invoke-virtual {v0, v1, p2}, Lhe;->b(Lhb;Lnd;)Lhf;

    move-result-object v0

    if-nez v0, :cond_70

    new-instance v0, Lhg;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not find a deserializer for type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lhg;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_70
    iget-object v1, p0, Lhn;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_75
    .catchall {:try_start_2d .. :try_end_75} :catchall_14

    goto :goto_4a

    :catch_76
    move-exception v1

    goto :goto_2c

    :catch_78
    move-exception v1

    goto :goto_18
.end method

.method private b()Lhq;
    .registers 5

    .prologue
    .line 572
    iget-object v0, p0, Lhn;->h:Lhq;

    iget-object v1, p0, Lhn;->e:Lke;

    iget-object v2, p0, Lhn;->f:Lka;

    iget-object v3, p0, Lhn;->g:Lkc;

    invoke-virtual {v0, v1, v2, v3}, Lhq;->a(Lke;Lka;Lkc;)Lhq;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Lhq;
    .registers 2

    .prologue
    .line 555
    iget-object v0, p0, Lhn;->h:Lhq;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;,
            Lhg;
        }
    .end annotation

    .prologue
    .line 1271
    iget-object v0, p0, Lhn;->d:Lex;

    invoke-virtual {v0, p1}, Lex;->a(Ljava/lang/String;)Lfd;

    move-result-object v0

    invoke-static {p2}, Lmb;->a(Ljava/lang/reflect/Type;)Lnd;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lhn;->a(Lfd;Lnd;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)Ljava/lang/String;
    .registers 11
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;,
            Lhg;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1472
    new-instance v2, Lgw;

    invoke-static {}, Lex;->a()Lne;

    move-result-object v1

    invoke-direct {v2, v1}, Lgw;-><init>(Lne;)V

    .line 1473
    iget-object v1, p0, Lhn;->d:Lex;

    invoke-virtual {v1, v2}, Lex;->a(Ljava/io/Writer;)Lez;

    move-result-object v3

    invoke-direct {p0}, Lhn;->b()Lhq;

    move-result-object v4

    sget-object v1, Lhq$a;->INDENT_OUTPUT:Lhq$a;

    invoke-virtual {v4, v1}, Lhq;->a(Lhq$a;)Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual {v3}, Lez;->a()Lez;

    :cond_1f
    sget-object v1, Lhq$a;->CLOSE_CLOSEABLE:Lhq$a;

    invoke-virtual {v4, v1}, Lhq;->a(Lhq$a;)Z

    move-result v1

    if-eqz v1, :cond_50

    instance-of v1, p1, Ljava/io/Closeable;

    if-eqz v1, :cond_50

    move-object v0, p1

    check-cast v0, Ljava/io/Closeable;

    move-object v1, v0

    :try_start_2f
    iget-object v5, p0, Lhn;->i:Lhs;

    iget-object v6, p0, Lhn;->j:Lhr;

    invoke-virtual {v5, v4, v3, p1, v6}, Lhs;->a(Lhq;Lez;Ljava/lang/Object;Lhr;)V
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_41

    :try_start_36
    invoke-virtual {v3}, Lez;->close()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_6d

    :try_start_39
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_73

    .line 1474
    :goto_3c
    invoke-virtual {v2}, Lgw;->a()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1473
    :catchall_41
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    :goto_45
    if-eqz v3, :cond_4a

    :try_start_47
    invoke-virtual {v3}, Lez;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_67

    :cond_4a
    :goto_4a
    if-eqz v2, :cond_4f

    :try_start_4c
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_69

    :cond_4f
    :goto_4f
    throw v1

    :cond_50
    const/4 v1, 0x0

    :try_start_51
    iget-object v5, p0, Lhn;->i:Lhs;

    iget-object v6, p0, Lhn;->j:Lhr;

    invoke-virtual {v5, v4, v3, p1, v6}, Lhs;->a(Lhq;Lez;Ljava/lang/Object;Lhr;)V

    const/4 v1, 0x1

    invoke-virtual {v3}, Lez;->close()V
    :try_end_5c
    .catchall {:try_start_51 .. :try_end_5c} :catchall_5d

    goto :goto_3c

    :catchall_5d
    move-exception v2

    move-object v8, v2

    move v2, v1

    move-object v1, v8

    if-nez v2, :cond_66

    :try_start_63
    invoke-virtual {v3}, Lez;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_6b

    :cond_66
    :goto_66
    throw v1

    :catch_67
    move-exception v3

    goto :goto_4a

    :catch_69
    move-exception v2

    goto :goto_4f

    :catch_6b
    move-exception v2

    goto :goto_66

    :catchall_6d
    move-exception v2

    move-object v3, v7

    move-object v8, v1

    move-object v1, v2

    move-object v2, v8

    goto :goto_45

    :catchall_73
    move-exception v1

    move-object v2, v7

    move-object v3, v7

    goto :goto_45
.end method

.method public final a(Lez;Ljava/lang/Object;)V
    .registers 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;,
            Lhg;
        }
    .end annotation

    .prologue
    .line 1026
    invoke-direct {p0}, Lhn;->b()Lhq;

    move-result-object v2

    .line 1027
    sget-object v1, Lhq$a;->CLOSE_CLOSEABLE:Lhq$a;

    invoke-virtual {v2, v1}, Lhq;->a(Lhq$a;)Z

    move-result v1

    if-eqz v1, :cond_2d

    instance-of v1, p2, Ljava/io/Closeable;

    if-eqz v1, :cond_2d

    .line 1028
    move-object v0, p2

    check-cast v0, Ljava/io/Closeable;

    move-object v1, v0

    :try_start_14
    iget-object v3, p0, Lhn;->i:Lhs;

    iget-object v4, p0, Lhn;->j:Lhr;

    invoke-virtual {v3, v2, p1, p2, v4}, Lhs;->a(Lhq;Lez;Ljava/lang/Object;Lhr;)V

    invoke-virtual {p1}, Lez;->g()V
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_23

    const/4 v2, 0x0

    :try_start_1f
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_3a

    .line 1033
    :goto_22
    return-void

    .line 1028
    :catchall_23
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    :goto_27
    if-eqz v2, :cond_2c

    :try_start_29
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_38

    :cond_2c
    :goto_2c
    throw v1

    .line 1030
    :cond_2d
    iget-object v1, p0, Lhn;->i:Lhs;

    iget-object v3, p0, Lhn;->j:Lhr;

    invoke-virtual {v1, v2, p1, p2, v3}, Lhs;->a(Lhq;Lez;Ljava/lang/Object;Lhr;)V

    .line 1031
    invoke-virtual {p1}, Lez;->g()V

    goto :goto_22

    :catch_38
    move-exception v2

    goto :goto_2c

    .line 1028
    :catchall_3a
    move-exception v1

    goto :goto_27
.end method
