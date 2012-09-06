.class public LD/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 23
    const-class v0, LD/k;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LD/k;->b:Ljava/lang/String;

    .line 32
    const-string v0, "%s%s%s%s%s"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "rideabout"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "log"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "signal"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LD/k;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Z)Ljava/io/File;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 116
    invoke-static {p1}, LD/k;->a(Z)Ljava/io/File;

    move-result-object v1

    .line 117
    if-nez v1, :cond_8

    .line 118
    const/4 v0, 0x0

    .line 120
    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_7
.end method

.method private static a(Z)Ljava/io/File;
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 130
    invoke-static {}, LD/k;->a()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 131
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 132
    new-instance v1, Ljava/io/File;

    sget-object v3, LD/k;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 133
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_20

    .line 134
    if-eqz p0, :cond_21

    .line 135
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    .line 136
    if-nez v0, :cond_20

    :cond_20
    move-object v0, v1

    .line 146
    :cond_21
    return-object v0
.end method

.method private static a()Z
    .registers 2

    .prologue
    .line 153
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 154
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 103
    invoke-static {p0, v0}, LD/k;->a(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v1

    .line 104
    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method
