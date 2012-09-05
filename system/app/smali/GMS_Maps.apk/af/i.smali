.class public abstract Laf/i;
.super Ljava/lang/Object;

# interfaces
.implements Laf/j;


# static fields
.field private static final e:Ljava/util/Hashtable;


# instance fields
.field protected final a:I

.field protected final b:Ljava/util/Vector;

.field private final c:Ljava/lang/String;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Laf/i;->e:Ljava/util/Hashtable;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Laf/i;->b:Ljava/util/Vector;

    const/4 v0, 0x1

    if-ge p2, v0, :cond_26

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxSize < 1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MRUMemory_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laf/i;->c:Ljava/lang/String;

    iput p2, p0, Laf/i;->a:I

    invoke-static {p0}, Laf/l;->a(Laf/j;)V

    sget-object v0, Laf/i;->e:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected static a(Ljava/lang/String;)Laf/i;
    .registers 2

    sget-object v0, Laf/i;->e:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laf/i;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Laf/i;->d:Z

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v0

    iget-object v1, p0, Laf/i;->c:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lak/m;->a(Ljava/lang/String;[B)Z

    iget-object v0, p0, Laf/i;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    return-void
.end method

.method protected abstract a(Ljava/io/DataInputStream;)V
.end method

.method protected abstract a(Ljava/io/DataOutputStream;)V
.end method

.method public a(Z)V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Laf/i;->d:Z

    iget-object v0, p0, Laf/i;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    return-void
.end method

.method public b()I
    .registers 2

    invoke-virtual {p0}, Laf/i;->c()V

    iget-object v0, p0, Laf/i;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method protected c()V
    .registers 2

    iget-boolean v0, p0, Laf/i;->d:Z

    if-nez v0, :cond_7

    invoke-virtual {p0}, Laf/i;->d()V

    :cond_7
    return-void
.end method

.method protected d()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Laf/i;->d:Z

    :try_start_3
    iget-object v0, p0, Laf/i;->c:Ljava/lang/String;

    invoke-static {v0}, Laf/l;->b(Ljava/lang/String;)Ljava/io/DataInput;

    move-result-object v0

    check-cast v0, Ljava/io/DataInputStream;

    if-eqz v0, :cond_10

    invoke-virtual {p0, v0}, Laf/i;->a(Ljava/io/DataInputStream;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_10} :catch_11

    :cond_10
    :goto_10
    return-void

    :catch_11
    move-exception v0

    const-string v1, "MEMORY"

    invoke-static {v1, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Laf/i;->a()V

    goto :goto_10
.end method

.method protected e()V
    .registers 4

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v1}, Laf/i;->a(Ljava/io/DataOutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v1

    invoke-virtual {v1}, Laf/b;->n()Lak/m;

    move-result-object v1

    iget-object v2, p0, Laf/i;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lak/m;->a(Ljava/lang/String;[B)Z
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1e} :catch_1f

    :goto_1e
    return-void

    :catch_1f
    move-exception v0

    const-string v1, "MEMORY"

    invoke-static {v1, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1e
.end method
