.class public Laf/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static e:Laf/c;


# instance fields
.field private final a:[Laf/b;

.field private final b:Ljava/util/Hashtable;

.field private final c:Lac/h;

.field private d:Z


# direct methods
.method private constructor <init>(Lac/h;[Laf/b;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const v5, 0x155cc0

    const v4, 0x13d620

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Laf/c;->b:Ljava/util/Hashtable;

    .line 57
    iput-boolean v0, p0, Laf/c;->d:Z

    .line 86
    iput-object p2, p0, Laf/c;->a:[Laf/b;

    .line 87
    iput-object p1, p0, Laf/c;->c:Lac/h;

    .line 88
    iget-object v1, p0, Laf/c;->a:[Laf/b;

    if-nez v1, :cond_23

    .line 89
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Bad KNE"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    move v1, v0

    .line 92
    :goto_24
    array-length v2, p2

    if-ge v0, v2, :cond_9b

    .line 93
    aget-object v2, p2, v0

    .line 94
    instance-of v3, v2, Laf/l;

    if-eqz v3, :cond_4d

    .line 95
    if-eqz v1, :cond_4c

    .line 96
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicate version control experiments: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2}, Laf/b;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_4c
    const/4 v1, 0x1

    .line 102
    :cond_4d
    invoke-interface {v2}, Laf/b;->a()I

    move-result v3

    if-lt v3, v4, :cond_59

    invoke-interface {v2}, Laf/b;->a()I

    move-result v3

    if-lt v3, v5, :cond_98

    .line 103
    :cond_59
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad experiment id: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2}, Laf/b;->a()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " <= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2}, Laf/b;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_98
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 108
    :cond_9b
    array-length v0, p2

    if-lez v0, :cond_a8

    if-nez v1, :cond_a8

    .line 109
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No control experiment."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_a8
    invoke-direct {p0}, Laf/c;->e()V

    .line 113
    invoke-direct {p0}, Laf/c;->d()V

    .line 114
    new-instance v0, Laf/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Laf/e;-><init>(Laf/c;Laf/d;)V

    invoke-virtual {p1, v0}, Lac/h;->c(Lac/g;)V

    .line 115
    return-void
.end method

.method static synthetic a(Laf/c;I)Laf/b;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1}, Laf/c;->c(I)Laf/b;

    move-result-object v0

    return-object v0
.end method

.method public static a()Laf/c;
    .registers 1

    .prologue
    .line 82
    sget-object v0, Laf/c;->e:Laf/c;

    return-object v0
.end method

.method public static a(Lac/h;[Laf/b;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 66
    if-nez p0, :cond_a

    .line 67
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Bad drd"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_a
    new-instance v0, Laf/c;

    invoke-direct {v0, p0, p1}, Laf/c;-><init>(Lac/h;[Laf/b;)V

    sput-object v0, Laf/c;->e:Laf/c;

    .line 71
    return-void
.end method

.method private a(Laf/b;)V
    .registers 3
    .parameter

    .prologue
    .line 226
    iget-object v0, p0, Laf/c;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    invoke-interface {p1}, Laf/b;->b()V

    .line 228
    return-void
.end method

.method static synthetic a(Laf/c;Laf/b;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1}, Laf/c;->a(Laf/b;)V

    return-void
.end method

.method static synthetic a(Laf/c;)[Laf/b;
    .registers 2
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Laf/c;->a:[Laf/b;

    return-object v0
.end method

.method static synthetic b(Laf/c;)Z
    .registers 2
    .parameter

    .prologue
    .line 34
    iget-boolean v0, p0, Laf/c;->d:Z

    return v0
.end method

.method private c(I)Laf/b;
    .registers 4
    .parameter

    .prologue
    .line 249
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Laf/c;->a:[Laf/b;

    array-length v1, v1

    if-ge v0, v1, :cond_18

    .line 250
    iget-object v1, p0, Laf/c;->a:[Laf/b;

    aget-object v1, v1, v0

    invoke-interface {v1}, Laf/b;->a()I

    move-result v1

    if-ne v1, p1, :cond_15

    .line 251
    iget-object v1, p0, Laf/c;->a:[Laf/b;

    aget-object v0, v1, v0

    .line 261
    :cond_14
    :goto_14
    return-object v0

    .line 249
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 257
    :cond_18
    new-instance v0, Laf/f;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Laf/f;-><init>(ILaf/d;)V

    .line 258
    iget-object v1, p0, Laf/c;->b:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 259
    iget-object v1, p0, Laf/c;->b:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laf/b;

    goto :goto_14
.end method

.method static synthetic c(Laf/c;)Ljava/util/Hashtable;
    .registers 2
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Laf/c;->f()Ljava/util/Hashtable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Laf/c;)Ljava/util/Hashtable;
    .registers 2
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Laf/c;->b:Ljava/util/Hashtable;

    return-object v0
.end method

.method private d()V
    .registers 7

    .prologue
    .line 122
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 123
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 124
    invoke-virtual {p0}, Laf/c;->b()[Laf/b;

    move-result-object v3

    .line 125
    array-length v0, v3

    new-array v4, v0, [I

    .line 127
    :try_start_11
    array-length v0, v3

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 128
    const/4 v0, 0x0

    :goto_16
    array-length v5, v3

    if-ge v0, v5, :cond_27

    .line 129
    aget-object v5, v3, v0

    invoke-interface {v5}, Laf/b;->a()I

    move-result v5

    .line 130
    aput v5, v4, v0

    .line 131
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 133
    :cond_27
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    const-string v2, "Experiments"

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/google/googlenav/common/io/j;->a(Ljava/lang/String;[B)Z

    .line 135
    iget-object v0, p0, Laf/c;->c:Lac/h;

    invoke-virtual {v0, v4}, Lac/h;->a([I)V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_3d} :catch_3e

    .line 140
    return-void

    .line 136
    :catch_3e
    move-exception v0

    .line 138
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private e()V
    .registers 5

    .prologue
    .line 143
    const-string v0, "Experiments"

    invoke-static {v0}, Lcom/google/googlenav/common/j;->b(Ljava/lang/String;)Ljava/io/DataInput;

    move-result-object v1

    .line 144
    if-nez v1, :cond_9

    .line 159
    :cond_8
    :goto_8
    return-void

    .line 148
    :cond_9
    :try_start_9
    invoke-interface {v1}, Ljava/io/DataInput;->readInt()I

    move-result v2

    .line 149
    const/4 v0, 0x0

    :goto_e
    if-ge v0, v2, :cond_8

    .line 150
    invoke-interface {v1}, Ljava/io/DataInput;->readInt()I

    move-result v3

    .line 151
    invoke-direct {p0, v3}, Laf/c;->c(I)Laf/b;

    move-result-object v3

    invoke-direct {p0, v3}, Laf/c;->a(Laf/b;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_1b} :catch_1e

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 153
    :catch_1e
    move-exception v0

    .line 155
    const-string v1, "FLASH"

    invoke-static {v1, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 156
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    const-string v1, "Experiments"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/googlenav/common/io/j;->a(Ljava/lang/String;[B)Z

    goto :goto_8
.end method

.method static synthetic e(Laf/c;)V
    .registers 1
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Laf/c;->d()V

    return-void
.end method

.method private f()Ljava/util/Hashtable;
    .registers 4

    .prologue
    .line 235
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 236
    iget-object v0, p0, Laf/c;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .line 237
    :goto_b
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 238
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laf/b;

    .line 239
    invoke-virtual {v1, v0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 241
    :cond_1b
    return-object v1
.end method


# virtual methods
.method public a(I)V
    .registers 4
    .parameter

    .prologue
    .line 204
    invoke-direct {p0, p1}, Laf/c;->c(I)Laf/b;

    move-result-object v0

    .line 205
    invoke-interface {v0}, Laf/b;->d()Z

    move-result v1

    if-nez v1, :cond_15

    .line 206
    iget-object v1, p0, Laf/c;->b:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    invoke-interface {v0}, Laf/b;->b()V

    .line 208
    invoke-direct {p0}, Laf/c;->d()V

    .line 210
    :cond_15
    return-void
.end method

.method public b(I)V
    .registers 4
    .parameter

    .prologue
    .line 217
    invoke-direct {p0, p1}, Laf/c;->c(I)Laf/b;

    move-result-object v0

    .line 218
    invoke-interface {v0}, Laf/b;->d()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 219
    iget-object v1, p0, Laf/c;->b:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    invoke-interface {v0}, Laf/b;->c()V

    .line 221
    invoke-direct {p0}, Laf/c;->d()V

    .line 223
    :cond_15
    return-void
.end method

.method public b()[Laf/b;
    .registers 6

    .prologue
    .line 163
    iget-object v0, p0, Laf/c;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    new-array v3, v0, [Laf/b;

    .line 164
    iget-object v0, p0, Laf/c;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v4

    .line 165
    const/4 v0, 0x0

    move v1, v0

    .line 166
    :goto_10
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 167
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laf/b;

    .line 168
    add-int/lit8 v2, v1, 0x1

    aput-object v0, v3, v1

    move v1, v2

    .line 169
    goto :goto_10

    .line 170
    :cond_22
    return-object v3
.end method

.method public c()Ljava/lang/String;
    .registers 5

    .prologue
    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    iget-object v0, p0, Laf/c;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .line 180
    :goto_b
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 181
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laf/b;

    .line 182
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_22

    .line 183
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    :cond_22
    invoke-interface {v0}, Laf/b;->a()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 187
    :cond_2a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
