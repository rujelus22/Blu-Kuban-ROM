.class public final Lorg/codehaus/jackson/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:I

.field static final b:I

.field protected static final c:Ljava/lang/ThreadLocal;


# instance fields
.field protected d:Lorg/codehaus/jackson/c/c;

.field protected e:Lorg/codehaus/jackson/c/a;

.field protected f:Lorg/codehaus/jackson/c;

.field protected g:I

.field protected h:I

.field protected i:Lorg/codehaus/jackson/b/b;

.field protected j:Lorg/codehaus/jackson/b/d;

.field protected k:Lorg/codehaus/jackson/b/h;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 65
    invoke-static {}, Lorg/codehaus/jackson/JsonParser$Feature;->collectDefaults()I

    move-result v0

    sput v0, Lorg/codehaus/jackson/a;->a:I

    .line 71
    invoke-static {}, Lorg/codehaus/jackson/JsonGenerator$Feature;->collectDefaults()I

    move-result v0

    sput v0, Lorg/codehaus/jackson/a;->b:I

    .line 84
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/a;->c:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 169
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/a;-><init>(Lorg/codehaus/jackson/c;)V

    return-void
.end method

.method private constructor <init>(Lorg/codehaus/jackson/c;)V
    .registers 3
    .parameter

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-static {}, Lorg/codehaus/jackson/c/c;->a()Lorg/codehaus/jackson/c/c;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a;->d:Lorg/codehaus/jackson/c/c;

    .line 101
    invoke-static {}, Lorg/codehaus/jackson/c/a;->a()Lorg/codehaus/jackson/c/a;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a;->e:Lorg/codehaus/jackson/c/a;

    .line 121
    sget v0, Lorg/codehaus/jackson/a;->a:I

    iput v0, p0, Lorg/codehaus/jackson/a;->g:I

    .line 126
    sget v0, Lorg/codehaus/jackson/a;->b:I

    iput v0, p0, Lorg/codehaus/jackson/a;->h:I

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/a;->f:Lorg/codehaus/jackson/c;

    return-void
.end method

.method private a(Ljava/lang/Object;Z)Lorg/codehaus/jackson/b/c;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 894
    new-instance v1, Lorg/codehaus/jackson/b/c;

    sget-object v0, Lorg/codehaus/jackson/a;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_23

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
    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Lorg/codehaus/jackson/b/c;-><init>(Lorg/codehaus/jackson/util/BufferRecycler;Ljava/lang/Object;Z)V

    return-object v1

    :cond_23
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/util/BufferRecycler;

    goto :goto_d
.end method


# virtual methods
.method public final a(Ljava/io/OutputStream;Lorg/codehaus/jackson/JsonEncoding;)Lorg/codehaus/jackson/JsonGenerator;
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 676
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/a;->a(Ljava/lang/Object;Z)Lorg/codehaus/jackson/b/c;

    move-result-object v2

    .line 677
    invoke-virtual {v2, p2}, Lorg/codehaus/jackson/b/c;->a(Lorg/codehaus/jackson/JsonEncoding;)V

    .line 678
    sget-object v0, Lorg/codehaus/jackson/JsonEncoding;->UTF8:Lorg/codehaus/jackson/JsonEncoding;

    if-ne p2, v0, :cond_29

    .line 680
    iget-object v0, p0, Lorg/codehaus/jackson/a;->k:Lorg/codehaus/jackson/b/h;

    if-eqz v0, :cond_16

    .line 681
    iget-object v0, p0, Lorg/codehaus/jackson/a;->k:Lorg/codehaus/jackson/b/h;

    invoke-virtual {v0}, Lorg/codehaus/jackson/b/h;->a()Ljava/io/OutputStream;

    move-result-object p1

    .line 683
    :cond_16
    new-instance v0, Lorg/codehaus/jackson/a/l;

    iget v1, p0, Lorg/codehaus/jackson/a;->h:I

    iget-object v3, p0, Lorg/codehaus/jackson/a;->f:Lorg/codehaus/jackson/c;

    invoke-direct {v0, v2, v1, v3, p1}, Lorg/codehaus/jackson/a/l;-><init>(Lorg/codehaus/jackson/b/c;ILorg/codehaus/jackson/c;Ljava/io/OutputStream;)V

    iget-object v1, p0, Lorg/codehaus/jackson/a;->i:Lorg/codehaus/jackson/b/b;

    if-eqz v1, :cond_28

    iget-object v1, p0, Lorg/codehaus/jackson/a;->i:Lorg/codehaus/jackson/b/b;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/a/l;->a(Lorg/codehaus/jackson/b/b;)Lorg/codehaus/jackson/JsonGenerator;

    .line 690
    :cond_28
    :goto_28
    return-object v0

    .line 685
    :cond_29
    sget-object v0, Lorg/codehaus/jackson/JsonEncoding;->UTF8:Lorg/codehaus/jackson/JsonEncoding;

    if-ne p2, v0, :cond_50

    new-instance v0, Lorg/codehaus/jackson/b/j;

    invoke-direct {v0, v2, p1}, Lorg/codehaus/jackson/b/j;-><init>(Lorg/codehaus/jackson/b/c;Ljava/io/OutputStream;)V

    .line 687
    :goto_32
    iget-object v1, p0, Lorg/codehaus/jackson/a;->k:Lorg/codehaus/jackson/b/h;

    if-eqz v1, :cond_3c

    .line 688
    iget-object v0, p0, Lorg/codehaus/jackson/a;->k:Lorg/codehaus/jackson/b/h;

    invoke-virtual {v0}, Lorg/codehaus/jackson/b/h;->b()Ljava/io/Writer;

    move-result-object v0

    .line 690
    :cond_3c
    new-instance v1, Lorg/codehaus/jackson/a/o;

    iget v3, p0, Lorg/codehaus/jackson/a;->h:I

    iget-object v4, p0, Lorg/codehaus/jackson/a;->f:Lorg/codehaus/jackson/c;

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/codehaus/jackson/a/o;-><init>(Lorg/codehaus/jackson/b/c;ILorg/codehaus/jackson/c;Ljava/io/Writer;)V

    iget-object v0, p0, Lorg/codehaus/jackson/a;->i:Lorg/codehaus/jackson/b/b;

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lorg/codehaus/jackson/a;->i:Lorg/codehaus/jackson/b/b;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/a/o;->a(Lorg/codehaus/jackson/b/b;)Lorg/codehaus/jackson/JsonGenerator;

    :cond_4e
    move-object v0, v1

    goto :goto_28

    .line 685
    :cond_50
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonEncoding;->getJavaName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_32
.end method

.method public final a(Ljava/io/InputStream;)Lorg/codehaus/jackson/JsonParser;
    .registers 7
    .parameter

    .prologue
    .line 556
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/a;->a(Ljava/lang/Object;Z)Lorg/codehaus/jackson/b/c;

    move-result-object v0

    .line 558
    iget-object v1, p0, Lorg/codehaus/jackson/a;->j:Lorg/codehaus/jackson/b/d;

    if-eqz v1, :cond_f

    .line 559
    iget-object v1, p0, Lorg/codehaus/jackson/a;->j:Lorg/codehaus/jackson/b/d;

    invoke-virtual {v1}, Lorg/codehaus/jackson/b/d;->a()Ljava/io/InputStream;

    move-result-object p1

    .line 561
    :cond_f
    new-instance v1, Lorg/codehaus/jackson/a/a;

    invoke-direct {v1, v0, p1}, Lorg/codehaus/jackson/a/a;-><init>(Lorg/codehaus/jackson/b/c;Ljava/io/InputStream;)V

    iget v0, p0, Lorg/codehaus/jackson/a;->g:I

    iget-object v2, p0, Lorg/codehaus/jackson/a;->f:Lorg/codehaus/jackson/c;

    iget-object v3, p0, Lorg/codehaus/jackson/a;->e:Lorg/codehaus/jackson/c/a;

    iget-object v4, p0, Lorg/codehaus/jackson/a;->d:Lorg/codehaus/jackson/c/c;

    invoke-virtual {v1, v0, v2, v3, v4}, Lorg/codehaus/jackson/a/a;->a(ILorg/codehaus/jackson/c;Lorg/codehaus/jackson/c/a;Lorg/codehaus/jackson/c/c;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lorg/codehaus/jackson/JsonGenerator$Feature;Z)Lorg/codehaus/jackson/a;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 346
    iget v0, p0, Lorg/codehaus/jackson/a;->h:I

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator$Feature;->getMask()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lorg/codehaus/jackson/a;->h:I

    .line 351
    return-object p0
.end method
