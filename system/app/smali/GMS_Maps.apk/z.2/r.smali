.class public Lz/r;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lz/t;
    .registers 5

    new-instance v0, Lz/t;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lz/t;-><init>(Landroid/content/Context;Ljava/lang/String;ZLz/s;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lz/r;->b(Landroid/content/Context;Ljava/lang/String;)Lz/t;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lz/t;->a(Ljava/lang/String;Ljava/lang/Object;)Lz/t;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lz/r;->b(Landroid/content/Context;Ljava/lang/String;)Lz/t;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lz/t;->a(Ljava/lang/String;Ljava/lang/Object;)Lz/t;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 5

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lz/r;->b(Landroid/content/Context;Ljava/lang/String;)Lz/t;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lz/t;->a(Ljava/lang/String;Ljava/lang/Object;)Lz/t;

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lz/r;->a(Landroid/content/Context;Ljava/lang/String;)Lz/t;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lz/t;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lz/r;->a(Landroid/content/Context;Ljava/lang/String;)Lz/t;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lz/t;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Lz/t;
    .registers 5

    new-instance v0, Lz/t;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lz/t;-><init>(Landroid/content/Context;Ljava/lang/String;ZLz/s;)V

    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lz/r;->a(Landroid/content/Context;Ljava/lang/String;)Lz/t;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lz/t;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
