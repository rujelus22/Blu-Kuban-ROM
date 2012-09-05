.class Lcom/google/android/location/internal/server/e;
.super Lcom/google/android/location/internal/e;


# instance fields
.field final synthetic a:Lcom/google/android/location/internal/server/NetworkLocationService;

.field private final b:Landroid/content/pm/PackageManager;


# direct methods
.method private constructor <init>(Lcom/google/android/location/internal/server/NetworkLocationService;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/location/internal/server/e;->a:Lcom/google/android/location/internal/server/NetworkLocationService;

    invoke-direct {p0}, Lcom/google/android/location/internal/e;-><init>()V

    iget-object v0, p0, Lcom/google/android/location/internal/server/e;->a:Lcom/google/android/location/internal/server/NetworkLocationService;

    invoke-virtual {v0}, Lcom/google/android/location/internal/server/NetworkLocationService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/internal/server/e;->b:Landroid/content/pm/PackageManager;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/location/internal/server/NetworkLocationService;Lcom/google/android/location/internal/server/d;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/location/internal/server/e;-><init>(Lcom/google/android/location/internal/server/NetworkLocationService;)V

    return-void
.end method

.method private b(Landroid/location/Location;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x3e80

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    if-eqz p1, :cond_1f

    const-string v2, "RMI for "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    :cond_1f
    iget-object v2, p0, Lcom/google/android/location/internal/server/e;->a:Lcom/google/android/location/internal/server/NetworkLocationService;

    invoke-static {v2, v1}, Lcom/google/android/location/internal/server/NetworkLocationService;->a(Lcom/google/android/location/internal/server/NetworkLocationService;Ljava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .registers 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/location/internal/server/e;->b:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v0

    if-eqz v0, :cond_1b

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Access is restricted to packages signed with the same certificate."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 4

    invoke-direct {p0}, Lcom/google/android/location/internal/server/e;->b()V

    sget-object v0, Lcom/google/android/location/internal/i;->b:Lcom/google/android/location/internal/i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/location/internal/server/e;->a:Lcom/google/android/location/internal/server/NetworkLocationService;

    invoke-static {v0, v2}, Lcom/google/android/location/internal/h;->a(Lcom/google/android/location/internal/i;Landroid/content/Context;)Lcom/google/android/location/internal/h;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/location/internal/server/e;->b(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(ILcom/google/android/location/internal/a;I)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/location/internal/server/e;->b()V

    iget-object v0, p0, Lcom/google/android/location/internal/server/e;->a:Lcom/google/android/location/internal/server/NetworkLocationService;

    invoke-static {v0}, Lcom/google/android/location/internal/server/NetworkLocationService;->a(Lcom/google/android/location/internal/server/NetworkLocationService;)Lcom/google/android/location/internal/server/f;

    move-result-object v0

    invoke-virtual {v0, p2, p1, p3}, Lcom/google/android/location/internal/server/f;->a(Lcom/google/android/location/internal/a;II)V

    return-void
.end method

.method public a(Lcom/google/android/location/internal/a;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/location/internal/server/e;->b()V

    iget-object v0, p0, Lcom/google/android/location/internal/server/e;->a:Lcom/google/android/location/internal/server/NetworkLocationService;

    invoke-static {v0}, Lcom/google/android/location/internal/server/NetworkLocationService;->a(Lcom/google/android/location/internal/server/NetworkLocationService;)Lcom/google/android/location/internal/server/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/location/internal/server/f;->a(Lcom/google/android/location/internal/a;)V

    return-void
.end method

.method public a(Landroid/location/Location;)[B
    .registers 15

    const-wide v11, 0x416312d000000000L

    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v7, 0x6

    invoke-direct {p0}, Lcom/google/android/location/internal/server/e;->b()V

    new-instance v1, LW/a;

    sget-object v0, Lk/a;->c:LW/d;

    invoke-direct {v1, v0}, LW/a;-><init>(LW/d;)V

    new-instance v2, LW/a;

    sget-object v0, Lk/a;->n:LW/d;

    invoke-direct {v2, v0}, LW/a;-><init>(LW/d;)V

    iget-object v0, p0, Lcom/google/android/location/internal/server/e;->a:Lcom/google/android/location/internal/server/NetworkLocationService;

    invoke-static {v0}, Lcom/google/android/location/internal/server/NetworkLocationService;->a(Lcom/google/android/location/internal/server/NetworkLocationService;)Lcom/google/android/location/internal/server/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/location/internal/server/f;->a(Landroid/location/Location;)Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x5

    invoke-direct {p0, p1}, Lcom/google/android/location/internal/server/e;->b(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, LW/a;->b(ILjava/lang/String;)V

    new-instance v3, LW/a;

    sget-object v4, Lk/a;->K:LW/d;

    invoke-direct {v3, v4}, LW/a;-><init>(LW/d;)V

    invoke-virtual {v1, v10, v3}, LW/a;->b(ILW/a;)V

    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v4

    if-eqz v4, :cond_44

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3, v10, v4}, LW/a;->g(II)V

    :cond_44
    new-instance v4, LW/a;

    sget-object v5, Lk/a;->w:LW/d;

    invoke-direct {v4, v5}, LW/a;-><init>(LW/d;)V

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    mul-double/2addr v5, v11

    double-to-int v5, v5

    invoke-virtual {v4, v9, v5}, LW/a;->g(II)V

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    mul-double/2addr v5, v11

    double-to-int v5, v5

    invoke-virtual {v4, v8, v5}, LW/a;->g(II)V

    invoke-virtual {v3, v9, v4}, LW/a;->b(ILW/a;)V

    if-nez v0, :cond_78

    const/4 v0, 0x0

    invoke-virtual {v2, v7, v0}, LW/a;->g(II)V

    :cond_66
    :goto_66
    const/4 v0, 0x7

    :try_start_67
    invoke-virtual {v2}, LW/a;->e()[B

    move-result-object v2

    invoke-virtual {v1, v0, v2}, LW/a;->a(I[B)V

    const/4 v0, 0x6

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, LW/a;->a(II)V

    invoke-virtual {v1}, LW/a;->e()[B
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_76} :catch_c5

    move-result-object v0

    :goto_77
    return-object v0

    :cond_78
    instance-of v3, v0, Le/u;

    if-eqz v3, :cond_b4

    check-cast v0, Le/u;

    iget-object v3, v0, Le/u;->a:Le/n;

    iget-object v4, v0, Le/u;->c:Le/a;

    if-ne v3, v4, :cond_aa

    invoke-virtual {v2, v7, v9}, LW/a;->g(II)V

    :cond_87
    :goto_87
    invoke-static {}, Lcom/google/android/location/os/real/K;->A()J

    move-result-wide v3

    iget-object v5, v0, Le/u;->c:Le/a;

    if-eqz v5, :cond_98

    iget-object v5, v0, Le/u;->c:Le/a;

    iget-object v5, v5, Le/a;->a:Le/d;

    if-eqz v5, :cond_98

    invoke-virtual {v5, v1, v3, v4}, Le/d;->a(LW/a;J)V

    :cond_98
    iget-object v5, v0, Le/u;->b:Le/K;

    if-eqz v5, :cond_66

    iget-object v0, v0, Le/u;->b:Le/K;

    iget-object v0, v0, Le/K;->a:Le/L;

    if-eqz v0, :cond_66

    invoke-virtual {v0, v3, v4}, Le/L;->a(J)LW/a;

    move-result-object v0

    invoke-virtual {v1, v8, v0}, LW/a;->b(ILW/a;)V

    goto :goto_66

    :cond_aa
    iget-object v3, v0, Le/u;->a:Le/n;

    iget-object v4, v0, Le/u;->b:Le/K;

    if-ne v3, v4, :cond_87

    invoke-virtual {v2, v7, v8}, LW/a;->g(II)V

    goto :goto_87

    :cond_b4
    instance-of v3, v0, Le/n;

    if-eqz v3, :cond_bc

    invoke-virtual {v2, v7, v10}, LW/a;->g(II)V

    goto :goto_66

    :cond_bc
    instance-of v0, v0, Landroid/location/Location;

    if-eqz v0, :cond_66

    const/4 v0, 0x4

    invoke-virtual {v2, v7, v0}, LW/a;->g(II)V

    goto :goto_66

    :catch_c5
    move-exception v0

    const/4 v0, 0x0

    goto :goto_77
.end method
