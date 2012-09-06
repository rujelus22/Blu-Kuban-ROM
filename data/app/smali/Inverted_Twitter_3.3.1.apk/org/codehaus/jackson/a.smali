.class public final Lorg/codehaus/jackson/a;
.super Ljava/lang/Object;


# static fields
.field static final a:I

.field static final b:I

.field protected static final c:Ljava/lang/ThreadLocal;


# instance fields
.field protected d:Lag;

.field protected e:Lae;

.field protected f:Lorg/codehaus/jackson/c;

.field protected g:I

.field protected h:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lorg/codehaus/jackson/JsonParser$Feature;->a()I

    move-result v0

    sput v0, Lorg/codehaus/jackson/a;->a:I

    invoke-static {}, Lorg/codehaus/jackson/JsonGenerator$Feature;->a()I

    move-result v0

    sput v0, Lorg/codehaus/jackson/a;->b:I

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/a;->c:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/a;-><init>(Lorg/codehaus/jackson/c;)V

    return-void
.end method

.method private constructor <init>(Lorg/codehaus/jackson/c;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lag;->a()Lag;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a;->d:Lag;

    invoke-static {}, Lae;->a()Lae;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a;->e:Lae;

    sget v0, Lorg/codehaus/jackson/a;->a:I

    iput v0, p0, Lorg/codehaus/jackson/a;->g:I

    sget v0, Lorg/codehaus/jackson/a;->b:I

    iput v0, p0, Lorg/codehaus/jackson/a;->h:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/a;->f:Lorg/codehaus/jackson/c;

    return-void
.end method

.method private static a(Ljava/lang/Object;Z)Lz;
    .registers 6

    new-instance v1, Lz;

    sget-object v0, Lorg/codehaus/jackson/a;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_22

    const/4 v0, 0x0

    :goto_d
    if-nez v0, :cond_1e

    new-instance v0, Lorg/codehaus/jackson/util/BufferRecycler;

    invoke-direct {v0}, Lorg/codehaus/jackson/util/BufferRecycler;-><init>()V

    sget-object v2, Lorg/codehaus/jackson/a;->c:Ljava/lang/ThreadLocal;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_1e
    invoke-direct {v1, v0, p0, p1}, Lz;-><init>(Lorg/codehaus/jackson/util/BufferRecycler;Ljava/lang/Object;Z)V

    return-object v1

    :cond_22
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/util/BufferRecycler;

    goto :goto_d
.end method

.method private a(Lorg/codehaus/jackson/JsonParser$Feature;)Z
    .registers 4

    iget v0, p0, Lorg/codehaus/jackson/a;->g:I

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser$Feature;->b()I

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
.method public final a(Ljava/io/Writer;)Lorg/codehaus/jackson/JsonGenerator;
    .registers 6

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/codehaus/jackson/a;->a(Ljava/lang/Object;Z)Lz;

    move-result-object v0

    new-instance v1, Lx;

    iget v2, p0, Lorg/codehaus/jackson/a;->h:I

    iget-object v3, p0, Lorg/codehaus/jackson/a;->f:Lorg/codehaus/jackson/c;

    invoke-direct {v1, v0, v2, v3, p1}, Lx;-><init>(Lz;ILorg/codehaus/jackson/c;Ljava/io/Writer;)V

    return-object v1
.end method

.method public final a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParser;
    .registers 10

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v3, v0}, Lorg/codehaus/jackson/a;->a(Ljava/lang/Object;Z)Lz;

    move-result-object v1

    new-instance v0, Lr;

    iget v2, p0, Lorg/codehaus/jackson/a;->g:I

    iget-object v4, p0, Lorg/codehaus/jackson/a;->f:Lorg/codehaus/jackson/c;

    iget-object v5, p0, Lorg/codehaus/jackson/a;->d:Lag;

    sget-object v6, Lorg/codehaus/jackson/JsonParser$Feature;->h:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-direct {p0, v6}, Lorg/codehaus/jackson/a;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v6

    sget-object v7, Lorg/codehaus/jackson/JsonParser$Feature;->g:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-direct {p0, v7}, Lorg/codehaus/jackson/a;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v7

    invoke-virtual {v5, v6, v7}, Lag;->a(ZZ)Lag;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lr;-><init>(Lz;ILjava/io/Reader;Lorg/codehaus/jackson/c;Lag;)V

    return-object v0
.end method

.method public final a([B)Lorg/codehaus/jackson/JsonParser;
    .registers 7

    array-length v0, p1

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lorg/codehaus/jackson/a;->a(Ljava/lang/Object;Z)Lz;

    move-result-object v1

    new-instance v2, Lh;

    const/4 v3, 0x0

    invoke-direct {v2, v1, p1, v3, v0}, Lh;-><init>(Lz;[BII)V

    iget v0, p0, Lorg/codehaus/jackson/a;->g:I

    iget-object v1, p0, Lorg/codehaus/jackson/a;->f:Lorg/codehaus/jackson/c;

    iget-object v3, p0, Lorg/codehaus/jackson/a;->e:Lae;

    iget-object v4, p0, Lorg/codehaus/jackson/a;->d:Lag;

    invoke-virtual {v2, v0, v1, v3, v4}, Lh;->a(ILorg/codehaus/jackson/c;Lae;Lag;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    return-object v0
.end method
