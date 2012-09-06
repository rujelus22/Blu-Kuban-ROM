.class public Li/z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:Li/z;

.field private static final d:Li/z;


# instance fields
.field private final a:Z

.field private final b:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 128
    new-instance v0, Li/z;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2}, Li/z;-><init>(ZLjava/io/File;)V

    sput-object v0, Li/z;->c:Li/z;

    .line 129
    new-instance v0, Li/z;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v2}, Li/z;-><init>(ZLjava/io/File;)V

    sput-object v0, Li/z;->d:Li/z;

    return-void
.end method

.method private constructor <init>(ZLjava/io/File;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-boolean p1, p0, Li/z;->a:Z

    .line 133
    iput-object p2, p0, Li/z;->b:Ljava/io/File;

    .line 134
    return-void
.end method

.method public static a()Li/z;
    .registers 1

    .prologue
    .line 141
    sget-object v0, Li/z;->d:Li/z;

    return-object v0
.end method

.method public static a(Ljava/io/File;)Li/z;
    .registers 3
    .parameter

    .prologue
    .line 137
    if-nez p0, :cond_5

    sget-object v0, Li/z;->c:Li/z;

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Li/z;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Li/z;-><init>(ZLjava/io/File;)V

    goto :goto_4
.end method

.method public static b()Li/z;
    .registers 1

    .prologue
    .line 145
    sget-object v0, Li/z;->c:Li/z;

    return-object v0
.end method


# virtual methods
.method public c()Ljava/io/File;
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Li/z;->b:Ljava/io/File;

    return-object v0
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 153
    iget-boolean v0, p0, Li/z;->a:Z

    return v0
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 157
    iget-boolean v0, p0, Li/z;->a:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Li/z;->b:Ljava/io/File;

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
