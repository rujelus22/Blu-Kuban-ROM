.class public Lar/n;
.super Ljava/lang/Object;


# static fields
.field private static a:Lar/q;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    invoke-static {}, Lar/n;->a()V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Ljava/lang/Integer;
    .registers 2

    sget-object v0, Lar/n;->a:Lar/q;

    invoke-virtual {v0, p0}, Lar/q;->a(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static a(J)Ljava/lang/Long;
    .registers 3

    sget-object v0, Lar/n;->a:Lar/q;

    invoke-virtual {v0, p0, p1}, Lar/q;->a(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method static a()V
    .registers 2

    new-instance v0, Lar/p;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lar/p;-><init>(Lar/o;)V

    sput-object v0, Lar/n;->a:Lar/q;

    return-void
.end method
