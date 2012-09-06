.class public abstract Lcom/google/googlenav/common/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/common/h;


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

    .prologue
    .line 41
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/google/googlenav/common/g;->e:Ljava/util/Hashtable;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/common/g;->b:Ljava/util/Vector;

    .line 51
    const/4 v0, 0x1

    if-ge p2, v0, :cond_26

    .line 52
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

    .line 54
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

    iput-object v0, p0, Lcom/google/googlenav/common/g;->c:Ljava/lang/String;

    .line 55
    iput p2, p0, Lcom/google/googlenav/common/g;->a:I

    .line 56
    invoke-static {p0}, Lcom/google/googlenav/common/j;->a(Lcom/google/googlenav/common/h;)V

    .line 57
    sget-object v0, Lcom/google/googlenav/common/g;->e:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method

.method protected static a(Ljava/lang/String;)Lcom/google/googlenav/common/g;
    .registers 2
    .parameter

    .prologue
    .line 64
    sget-object v0, Lcom/google/googlenav/common/g;->e:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/g;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/common/g;->d:Z

    .line 72
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/common/g;->c:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/googlenav/common/io/j;->a(Ljava/lang/String;[B)Z

    .line 74
    iget-object v0, p0, Lcom/google/googlenav/common/g;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 75
    return-void
.end method

.method protected abstract a(Ljava/io/DataInputStream;)V
.end method

.method protected abstract a(Ljava/io/DataOutputStream;)V
.end method

.method public a(Z)V
    .registers 3
    .parameter

    .prologue
    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/common/g;->d:Z

    .line 79
    iget-object v0, p0, Lcom/google/googlenav/common/g;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 80
    return-void
.end method

.method public b()I
    .registers 2

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/google/googlenav/common/g;->c()V

    .line 85
    iget-object v0, p0, Lcom/google/googlenav/common/g;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method protected c()V
    .registers 2

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/google/googlenav/common/g;->d:Z

    if-nez v0, :cond_7

    .line 90
    invoke-virtual {p0}, Lcom/google/googlenav/common/g;->d()V

    .line 92
    :cond_7
    return-void
.end method

.method protected d()V
    .registers 2

    .prologue
    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/common/g;->d:Z

    .line 103
    :try_start_3
    iget-object v0, p0, Lcom/google/googlenav/common/g;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/googlenav/common/j;->b(Ljava/lang/String;)Ljava/io/DataInput;

    move-result-object v0

    check-cast v0, Ljava/io/DataInputStream;

    .line 105
    if-eqz v0, :cond_10

    .line 106
    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/g;->a(Ljava/io/DataInputStream;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_10} :catch_11

    .line 112
    :cond_10
    :goto_10
    return-void

    .line 108
    :catch_11
    move-exception v0

    .line 109
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 110
    invoke-virtual {p0}, Lcom/google/googlenav/common/g;->a()V

    goto :goto_10
.end method

.method protected e()V
    .registers 4

    .prologue
    .line 119
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 120
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 124
    invoke-virtual {p0, v1}, Lcom/google/googlenav/common/g;->a(Ljava/io/DataOutputStream;)V

    .line 126
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 130
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/common/g;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/google/googlenav/common/io/j;->a(Ljava/lang/String;[B)Z
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1e} :catch_1f

    .line 135
    :goto_1e
    return-void

    .line 132
    :catch_1f
    move-exception v0

    .line 133
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1e
.end method
