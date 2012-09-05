.class public Lo/x;
.super Ljava/lang/Object;


# static fields
.field private static final c:Lo/x;

.field private static final d:Lo/x;


# instance fields
.field private final a:Z

.field private final b:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    new-instance v0, Lo/x;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2}, Lo/x;-><init>(ZLjava/io/File;)V

    sput-object v0, Lo/x;->c:Lo/x;

    new-instance v0, Lo/x;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v2}, Lo/x;-><init>(ZLjava/io/File;)V

    sput-object v0, Lo/x;->d:Lo/x;

    return-void
.end method

.method private constructor <init>(ZLjava/io/File;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lo/x;->a:Z

    iput-object p2, p0, Lo/x;->b:Ljava/io/File;

    return-void
.end method

.method public static a()Lo/x;
    .registers 1

    sget-object v0, Lo/x;->d:Lo/x;

    return-object v0
.end method

.method public static a(Ljava/io/File;)Lo/x;
    .registers 3

    if-nez p0, :cond_5

    sget-object v0, Lo/x;->c:Lo/x;

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Lo/x;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lo/x;-><init>(ZLjava/io/File;)V

    goto :goto_4
.end method

.method public static b()Lo/x;
    .registers 1

    sget-object v0, Lo/x;->c:Lo/x;

    return-object v0
.end method


# virtual methods
.method public c()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lo/x;->b:Ljava/io/File;

    return-object v0
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, Lo/x;->a:Z

    return v0
.end method

.method public e()Z
    .registers 2

    iget-boolean v0, p0, Lo/x;->a:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lo/x;->b:Ljava/io/File;

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
