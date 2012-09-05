.class public final LL/c;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/File;)LL/f;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, LL/c;->a(Ljava/io/File;Z)LL/f;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/File;Z)LL/f;
    .registers 3

    invoke-static {p0}, Lcom/google/common/base/v;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, LL/d;

    invoke-direct {v0, p0, p1}, LL/d;-><init>(Ljava/io/File;Z)V

    return-object v0
.end method

.method public static a(LL/e;Ljava/io/File;)V
    .registers 3

    invoke-static {p1}, LL/c;->a(Ljava/io/File;)LL/f;

    move-result-object v0

    invoke-static {p0, v0}, LL/a;->a(LL/e;LL/f;)J

    return-void
.end method
