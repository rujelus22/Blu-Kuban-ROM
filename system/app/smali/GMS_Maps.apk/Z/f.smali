.class public LZ/f;
.super Ljava/lang/Object;


# static fields
.field private static a:LZ/i;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    invoke-static {}, LZ/f;->a()V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Ljava/lang/Integer;
    .registers 2

    sget-object v0, LZ/f;->a:LZ/i;

    invoke-virtual {v0, p0}, LZ/i;->a(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static a(J)Ljava/lang/Long;
    .registers 3

    sget-object v0, LZ/f;->a:LZ/i;

    invoke-virtual {v0, p0, p1}, LZ/i;->a(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method static a()V
    .registers 2

    new-instance v0, LZ/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LZ/h;-><init>(LZ/g;)V

    sput-object v0, LZ/f;->a:LZ/i;

    return-void
.end method
