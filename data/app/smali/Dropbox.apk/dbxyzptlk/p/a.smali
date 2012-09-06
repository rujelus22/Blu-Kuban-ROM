.class public Ldbxyzptlk/p/a;
.super Ljava/lang/Object;
.source "panda.py"


# static fields
.field static final synthetic a:Z

.field private static final b:Ljava/lang/String;


# instance fields
.field private c:Ljava/util/ArrayList;

.field private d:J

.field private final e:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const-class v0, Ldbxyzptlk/p/a;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Ldbxyzptlk/p/a;->a:Z

    .line 23
    const-class v0, Ldbxyzptlk/p/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldbxyzptlk/p/a;->b:Ljava/lang/String;

    return-void

    .line 21
    :cond_14
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(JLjava/util/ArrayList;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ldbxyzptlk/p/a;->d:J

    .line 171
    iput-wide p1, p0, Ldbxyzptlk/p/a;->e:J

    .line 172
    iput-object p3, p0, Ldbxyzptlk/p/a;->c:Ljava/util/ArrayList;

    .line 173
    return-void
.end method

.method static synthetic a(Ldbxyzptlk/p/a;)J
    .registers 3
    .parameter

    .prologue
    .line 21
    iget-wide v0, p0, Ldbxyzptlk/p/a;->d:J

    return-wide v0
.end method

.method public static a(DLdbxyzptlk/l/q;J)Landroid/util/Pair;
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    .line 435
    const/4 v0, 0x0

    .line 436
    const/4 v1, 0x0

    .line 437
    if-eqz p2, :cond_1b

    .line 438
    new-instance v0, Ldbxyzptlk/p/e;

    const-wide/16 v3, 0x0

    const/4 v8, 0x0

    move-wide v1, p0

    move-wide v5, p3

    move-object v7, p2

    invoke-direct/range {v0 .. v8}, Ldbxyzptlk/p/e;-><init>(DDJLdbxyzptlk/l/q;Ldbxyzptlk/p/b;)V

    .line 439
    new-instance v1, Ldbxyzptlk/p/e;

    const-wide/high16 v2, 0x3ff0

    sub-double/2addr v2, p0

    const/4 v9, 0x0

    move-wide v4, p0

    move-wide v6, p3

    move-object v8, p2

    invoke-direct/range {v1 .. v9}, Ldbxyzptlk/p/e;-><init>(DDJLdbxyzptlk/l/q;Ldbxyzptlk/p/b;)V

    .line 441
    :cond_1b
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static a(Ljava/io/FileInputStream;JLdbxyzptlk/l/q;)Ldbxyzptlk/p/g;
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 103
    const-wide v0, 0x3fa999999999999aL

    invoke-static {v0, v1, p3, p1, p2}, Ldbxyzptlk/p/a;->a(DLdbxyzptlk/l/q;J)Landroid/util/Pair;

    move-result-object v1

    .line 104
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ldbxyzptlk/l/q;

    invoke-static {p0, p1, p2, v0}, Ldbxyzptlk/p/a;->c(Ljava/io/FileInputStream;JLdbxyzptlk/l/q;)Ldbxyzptlk/p/a;

    move-result-object v2

    .line 105
    new-instance v3, Ldbxyzptlk/p/g;

    const/4 v4, 0x0

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ldbxyzptlk/l/q;

    invoke-direct {v3, v2, v4, v0}, Ldbxyzptlk/p/g;-><init>(Ldbxyzptlk/p/a;Ldbxyzptlk/p/f;Ldbxyzptlk/l/q;)V

    return-object v3
.end method

.method public static a([B)Ljava/lang/String;
    .registers 7
    .parameter

    .prologue
    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 258
    array-length v2, p0

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v2, :cond_29

    aget-byte v3, p0, v0

    .line 259
    const-string v4, "0123456789abcdef"

    and-int/lit16 v5, v3, 0xf0

    ushr-int/lit8 v5, v5, 0x4

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 260
    const-string v4, "0123456789abcdef"

    and-int/lit8 v3, v3, 0xf

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 258
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 262
    :cond_29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Ldbxyzptlk/p/a;)J
    .registers 3
    .parameter

    .prologue
    .line 21
    iget-wide v0, p0, Ldbxyzptlk/p/a;->e:J

    return-wide v0
.end method

.method private b(Ljava/lang/String;)Ldbxyzptlk/p/c;
    .registers 5
    .parameter

    .prologue
    .line 232
    iget-object v0, p0, Ldbxyzptlk/p/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldbxyzptlk/p/c;

    .line 233
    iget-object v2, v0, Ldbxyzptlk/p/c;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 237
    :goto_1a
    return-object v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public static b(Ljava/io/FileInputStream;JLdbxyzptlk/l/q;)Ldbxyzptlk/p/g;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 130
    const-wide v0, 0x3fa999999999999aL

    invoke-static {v0, v1, p3, p1, p2}, Ldbxyzptlk/p/a;->a(DLdbxyzptlk/l/q;J)Landroid/util/Pair;

    move-result-object v2

    .line 131
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ldbxyzptlk/l/q;

    invoke-static {p0, p1, p2, v0}, Ldbxyzptlk/p/a;->d(Ljava/io/FileInputStream;JLdbxyzptlk/l/q;)Landroid/util/Pair;

    move-result-object v1

    .line 132
    new-instance v3, Ldbxyzptlk/p/g;

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ldbxyzptlk/p/a;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ldbxyzptlk/p/f;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ldbxyzptlk/l/q;

    invoke-direct {v3, v0, v1, v2}, Ldbxyzptlk/p/g;-><init>(Ldbxyzptlk/p/a;Ldbxyzptlk/p/f;Ldbxyzptlk/l/q;)V

    return-object v3
.end method

.method private static c(Ljava/io/FileInputStream;JLdbxyzptlk/l/q;)Ldbxyzptlk/p/a;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 136
    invoke-virtual {p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    .line 137
    new-instance v2, Ldbxyzptlk/p/d;

    invoke-direct {v2, v0, v1}, Ldbxyzptlk/p/d;-><init>(J)V

    .line 138
    invoke-virtual {v2, p0, p1, p2, p3}, Ldbxyzptlk/p/d;->a(Ljava/io/FileInputStream;JLdbxyzptlk/l/q;)V

    .line 139
    new-instance v0, Ldbxyzptlk/p/a;

    invoke-virtual {v2}, Ldbxyzptlk/p/d;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Ldbxyzptlk/p/a;-><init>(JLjava/util/ArrayList;)V

    return-object v0
.end method

.method private static d(Ljava/io/FileInputStream;JLdbxyzptlk/l/q;)Landroid/util/Pair;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 147
    invoke-virtual {p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    .line 152
    :try_start_8
    new-instance v2, Ldbxyzptlk/p/d;

    invoke-direct {v2, v0, v1}, Ldbxyzptlk/p/d;-><init>(J)V

    .line 153
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 154
    invoke-virtual {v2, v0}, Ldbxyzptlk/p/d;->a(Ljava/security/MessageDigest;)V

    .line 155
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 156
    invoke-virtual {v2, v1, p1, p2}, Ldbxyzptlk/p/d;->a(Ljava/security/MessageDigest;J)V
    :try_end_1f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_1f} :catch_36

    .line 161
    invoke-virtual {v2, p0, p1, p2, p3}, Ldbxyzptlk/p/d;->a(Ljava/io/FileInputStream;JLdbxyzptlk/l/q;)V

    .line 162
    new-instance v3, Ldbxyzptlk/p/f;

    invoke-direct {v3, v0, v1}, Ldbxyzptlk/p/f;-><init>(Ljava/security/MessageDigest;Ljava/security/MessageDigest;)V

    .line 163
    new-instance v0, Landroid/util/Pair;

    new-instance v1, Ldbxyzptlk/p/a;

    invoke-virtual {v2}, Ldbxyzptlk/p/d;->a()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, p1, p2, v2}, Ldbxyzptlk/p/a;-><init>(JLjava/util/ArrayList;)V

    invoke-direct {v0, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_35
    return-object v0

    .line 157
    :catch_36
    move-exception v0

    .line 158
    sget-object v1, Ldbxyzptlk/p/a;->b:Ljava/lang/String;

    const-string v2, "fromStreamWithFull"

    invoke-static {v1, v2, v0}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    const/4 v0, 0x0

    goto :goto_35
.end method

.method static synthetic e()Ljava/lang/String;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Ldbxyzptlk/p/a;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()J
    .registers 3

    .prologue
    .line 176
    iget-wide v0, p0, Ldbxyzptlk/p/a;->e:J

    return-wide v0
.end method

.method public final a(Ldbxyzptlk/l/q;)Ldbxyzptlk/l/q;
    .registers 3
    .parameter

    .prologue
    .line 212
    new-instance v0, Ldbxyzptlk/p/b;

    invoke-direct {v0, p0, p1}, Ldbxyzptlk/p/b;-><init>(Ldbxyzptlk/p/a;Ldbxyzptlk/l/q;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .registers 7
    .parameter

    .prologue
    .line 241
    invoke-direct {p0, p1}, Ldbxyzptlk/p/a;->b(Ljava/lang/String;)Ldbxyzptlk/p/c;

    move-result-object v0

    .line 242
    iget-wide v1, p0, Ldbxyzptlk/p/a;->d:J

    iget-wide v3, v0, Ldbxyzptlk/p/c;->c:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Ldbxyzptlk/p/a;->d:J

    .line 243
    const/4 v1, 0x0

    iput-boolean v1, v0, Ldbxyzptlk/p/c;->d:Z

    .line 244
    return-void
.end method

.method public final a(Ljava/util/Collection;)V
    .registers 10
    .parameter

    .prologue
    .line 192
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ldbxyzptlk/p/a;->d:J

    .line 193
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 194
    const/4 v0, 0x0

    .line 195
    iget-object v1, p0, Ldbxyzptlk/p/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldbxyzptlk/p/c;

    .line 196
    iget-object v4, v0, Ldbxyzptlk/p/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, v0, Ldbxyzptlk/p/c;->d:Z

    .line 197
    iget-boolean v4, v0, Ldbxyzptlk/p/c;->d:Z

    if-eqz v4, :cond_2d

    .line 198
    add-int/lit8 v0, v1, 0x1

    :goto_2b
    move v1, v0

    .line 200
    goto :goto_11

    :cond_2d
    iget-wide v4, p0, Ldbxyzptlk/p/a;->d:J

    iget-wide v6, v0, Ldbxyzptlk/p/c;->c:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Ldbxyzptlk/p/a;->d:J

    move v0, v1

    goto :goto_2b

    .line 203
    :cond_36
    sget-boolean v0, Ldbxyzptlk/p/a;->a:Z

    if-nez v0, :cond_46

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v0

    if-eq v1, v0, :cond_46

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 204
    :cond_46
    return-void
.end method

.method public final b()Ldbxyzptlk/p/c;
    .registers 4

    .prologue
    .line 180
    iget-object v0, p0, Ldbxyzptlk/p/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldbxyzptlk/p/c;

    .line 181
    iget-boolean v2, v0, Ldbxyzptlk/p/c;->d:Z

    if-eqz v2, :cond_6

    .line 185
    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public final c()Z
    .registers 2

    .prologue
    .line 228
    invoke-virtual {p0}, Ldbxyzptlk/p/a;->b()Ldbxyzptlk/p/c;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final d()Ljava/util/List;
    .registers 4

    .prologue
    .line 247
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Ldbxyzptlk/p/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 248
    iget-object v0, p0, Ldbxyzptlk/p/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldbxyzptlk/p/c;

    .line 249
    iget-object v0, v0, Ldbxyzptlk/p/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 251
    :cond_23
    return-object v1
.end method
