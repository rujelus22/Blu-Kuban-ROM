.class public Lu/H;
.super Lz/u;


# static fields
.field private static final f:Lu/H;


# instance fields
.field private a:Ljava/util/List;

.field private c:Ljava/util/List;

.field private d:Ljava/io/File;

.field private e:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lu/H;

    invoke-direct {v0}, Lu/H;-><init>()V

    sput-object v0, Lu/H;->f:Lu/H;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lz/u;-><init>()V

    return-void
.end method

.method private static a(Ljava/io/File;)Ljava/util/List;
    .registers 6

    const/4 v1, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :try_start_6
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_47
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_b} :catch_80
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_54
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_b} :catch_31

    :try_start_b
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_6f
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_10} :catch_83
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_10} :catch_7b
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_10} :catch_76

    :goto_10
    :try_start_10
    invoke-virtual {v0}, Ljava/io/DataInputStream;->available()I

    move-result v1

    if-lez v1, :cond_62

    sget-object v1, LbC/p;->a:Lam/e;

    invoke-static {v1, v0}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v1

    invoke-static {v1}, Lu/a;->a(Lam/b;)Lu/a;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_23
    .catchall {:try_start_10 .. :try_end_23} :catchall_71
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_23} :catch_24
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_23} :catch_7e
    .catch Ljava/lang/ClassCastException; {:try_start_10 .. :try_end_23} :catch_79

    goto :goto_10

    :catch_24
    move-exception v1

    move-object v1, v2

    :goto_26
    if-eqz v0, :cond_2b

    :try_start_28
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    :cond_2b
    if-eqz v1, :cond_30

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_30} :catch_45

    :cond_30
    :goto_30
    return-object v3

    :catch_31
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    :goto_34
    :try_start_34
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V
    :try_end_3a
    .catchall {:try_start_34 .. :try_end_3a} :catchall_71

    if-eqz v0, :cond_3f

    :try_start_3c
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    :cond_3f
    if-eqz v2, :cond_30

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_44} :catch_45

    goto :goto_30

    :catch_45
    move-exception v0

    goto :goto_30

    :catchall_47
    move-exception v0

    move-object v2, v1

    :goto_49
    if-eqz v1, :cond_4e

    :try_start_4b
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    :cond_4e
    if-eqz v2, :cond_53

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_53} :catch_6d

    :cond_53
    :goto_53
    throw v0

    :catch_54
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    :goto_57
    if-eqz v0, :cond_5c

    :try_start_59
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    :cond_5c
    if-eqz v2, :cond_30

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_30

    :cond_62
    if-eqz v0, :cond_67

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    :cond_67
    if-eqz v2, :cond_30

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_6c} :catch_45

    goto :goto_30

    :catch_6d
    move-exception v1

    goto :goto_53

    :catchall_6f
    move-exception v0

    goto :goto_49

    :catchall_71
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_49

    :catch_76
    move-exception v0

    move-object v0, v1

    goto :goto_34

    :catch_79
    move-exception v1

    goto :goto_34

    :catch_7b
    move-exception v0

    move-object v0, v1

    goto :goto_57

    :catch_7e
    move-exception v1

    goto :goto_57

    :catch_80
    move-exception v0

    move-object v0, v1

    goto :goto_26

    :catch_83
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_26
.end method

.method public static a(Landroid/content/Context;)Lu/H;
    .registers 2

    sget-object v0, Lu/H;->f:Lu/H;

    invoke-virtual {v0, p0}, Lu/H;->c(Landroid/content/Context;)V

    sget-object v0, Lu/H;->f:Lu/H;

    return-object v0
.end method

.method private a(Lam/b;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lu/H;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object v0, p0, Lu/H;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lu/H;->d:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v0, p1}, Lam/g;->a(Ljava/io/DataOutput;Lam/b;)V

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1c} :catch_1f
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_1c} :catch_1d

    :goto_1c
    return-void

    :catch_1d
    move-exception v0

    goto :goto_1c

    :catch_1f
    move-exception v0

    goto :goto_1c
.end method

.method private a(Lu/a;)V
    .registers 6

    iget-object v0, p0, Lu/H;->c:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lu/H;->c:Ljava/util/List;

    :cond_b
    iget-object v0, p0, Lu/H;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lu/H;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lam/b;

    sget-object v1, LbC/p;->a:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    invoke-virtual {p1}, Lu/a;->b()Lam/b;

    move-result-object v1

    invoke-virtual {p1}, Lu/a;->c()Lam/b;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Lam/b;->a(ILam/b;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Lam/b;->a(ILam/b;)V

    invoke-direct {p0, v0}, Lu/H;->a(Lam/b;)V

    return-void
.end method


# virtual methods
.method public a([Lu/P;)Lu/a;
    .registers 5

    invoke-virtual {p0}, Lu/H;->b()Lu/a;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0, p1}, Lu/a;->a([Lu/P;)Z

    move-result v1

    if-eqz v1, :cond_d

    :goto_c
    return-object v0

    :cond_d
    invoke-virtual {p0}, Lu/H;->c()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/a;

    invoke-virtual {v0, p1}, Lu/a;->a([Lu/P;)Z

    move-result v2

    if-eqz v2, :cond_15

    goto :goto_c

    :cond_28
    const/4 v0, 0x0

    goto :goto_c
.end method

.method protected a()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lu/H;->a:Ljava/util/List;

    iput-object v0, p0, Lu/H;->c:Ljava/util/List;

    iput-object v0, p0, Lu/H;->d:Ljava/io/File;

    iput-object v0, p0, Lu/H;->e:Ljava/io/File;

    return-void
.end method

.method public a(Lu/g;)V
    .registers 3

    invoke-static {p1}, Lu/a;->a(Lu/g;)Lu/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lu/H;->a(Lu/a;)V

    return-void
.end method

.method public b()Lu/a;
    .registers 3

    iget-object v0, p0, Lu/H;->c:Ljava/util/List;

    if-nez v0, :cond_c

    iget-object v0, p0, Lu/H;->d:Ljava/io/File;

    invoke-static {v0}, Lu/H;->a(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lu/H;->c:Ljava/util/List;

    :cond_c
    iget-object v0, p0, Lu/H;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1e

    iget-object v0, p0, Lu/H;->c:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/a;

    :goto_1d
    return-object v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method protected b(Landroid/content/Context;)V
    .registers 5

    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Ln/b;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "return_directions_proto"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lu/H;->d:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Ln/b;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "saved_directions_proto"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lu/H;->e:Ljava/io/File;

    return-void
.end method

.method public b(Lu/g;)Z
    .registers 4

    invoke-virtual {p0}, Lu/H;->c()Ljava/util/Collection;

    move-result-object v0

    invoke-static {p1}, Lu/a;->a(Lu/g;)Lu/a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    return v0
.end method

.method public c()Ljava/util/Collection;
    .registers 2

    iget-object v0, p0, Lu/H;->a:Ljava/util/List;

    if-nez v0, :cond_c

    iget-object v0, p0, Lu/H;->e:Ljava/io/File;

    invoke-static {v0}, Lu/H;->a(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lu/H;->a:Ljava/util/List;

    :cond_c
    iget-object v0, p0, Lu/H;->a:Ljava/util/List;

    return-object v0
.end method
