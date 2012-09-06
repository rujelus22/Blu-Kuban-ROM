.class public Lcom/dropbox/android/util/ap;
.super Ljava/lang/Object;
.source "panda.py"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const-class v0, Lcom/dropbox/android/util/ap;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/util/ap;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 3
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-static {v0}, Lcom/dropbox/android/util/ap;->b(Ljava/lang/String;)V

    .line 37
    iput-object v0, p0, Lcom/dropbox/android/util/ap;->b:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 21
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/dropbox/android/util/ap;-><init>(Ljava/io/File;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    if-eqz p2, :cond_21

    .line 26
    invoke-static {}, Lcom/dropbox/android/util/ab;->j()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 31
    :goto_1e
    iput-object p1, p0, Lcom/dropbox/android/util/ap;->b:Ljava/lang/String;

    .line 32
    return-void

    .line 29
    :cond_21
    invoke-static {p1}, Lcom/dropbox/android/util/ap;->b(Ljava/lang/String;)V

    goto :goto_1e
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 123
    const/16 v0, 0x2236

    const/16 v1, 0x3a

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 124
    const/16 v1, 0x2217

    const/16 v2, 0x2a

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 125
    const/16 v1, 0x2758

    const/16 v2, 0x7c

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 126
    const/16 v1, 0x22d6

    const/16 v2, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 127
    const/16 v1, 0x22d7

    const/16 v2, 0x3e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 128
    const/16 v1, 0x2033

    const/16 v2, 0x22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 129
    const/16 v1, 0x203d

    const/16 v2, 0x3f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 130
    const/16 v1, 0x66a

    const/16 v2, 0x25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 131
    return-object v0
.end method

.method private static b(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 41
    invoke-static {}, Lcom/dropbox/android/util/ab;->j()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 43
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid file path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_27
    return-void
.end method

.method private f()Z
    .registers 6

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/dropbox/android/util/ap;->a()Ljava/io/File;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 89
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_40

    .line 90
    invoke-static {v1}, Lcom/dropbox/android/util/ab;->b(Ljava/io/File;)Z

    move-result v2

    .line 91
    if-nez v2, :cond_40

    .line 92
    sget-object v2, Lcom/dropbox/android/util/ap;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t create directory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " for file "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const/4 v0, 0x0

    .line 96
    :goto_3f
    return v0

    :cond_40
    const/4 v0, 0x1

    goto :goto_3f
.end method


# virtual methods
.method public final a()Ljava/io/File;
    .registers 3

    .prologue
    .line 66
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/dropbox/android/util/ap;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final b()Ljava/io/File;
    .registers 3

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/dropbox/android/util/ap;->a()Ljava/io/File;

    move-result-object v0

    .line 77
    invoke-direct {p0}, Lcom/dropbox/android/util/ap;->f()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 80
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final c()Ljava/lang/String;
    .registers 4

    .prologue
    .line 100
    iget-object v0, p0, Lcom/dropbox/android/util/ap;->b:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 101
    array-length v1, v0

    if-lez v1, :cond_11

    .line 102
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    .line 105
    :goto_10
    return-object v0

    .line 104
    :cond_11
    sget-object v0, Lcom/dropbox/android/util/ap;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t extract filename for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/android/util/ap;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/dropbox/android/util/ap;->b:Ljava/lang/String;

    goto :goto_10
.end method

.method public final d()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/dropbox/android/util/ap;->a()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lcom/dropbox/android/util/Z;
    .registers 4

    .prologue
    .line 114
    invoke-static {}, Lcom/dropbox/android/util/ab;->j()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lcom/dropbox/android/util/ap;->b:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-static {v0}, Lcom/dropbox/android/util/ap;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    new-instance v1, Lcom/dropbox/android/util/Z;

    invoke-direct {v1, v0}, Lcom/dropbox/android/util/Z;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 59
    instance-of v0, p1, Lcom/dropbox/android/util/ap;

    if-eqz v0, :cond_f

    .line 60
    iget-object v0, p0, Lcom/dropbox/android/util/ap;->b:Ljava/lang/String;

    check-cast p1, Lcom/dropbox/android/util/ap;

    iget-object v1, p1, Lcom/dropbox/android/util/ap;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 62
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/dropbox/android/util/ap;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dropbox/android/util/ap;->b:Ljava/lang/String;

    return-object v0
.end method
