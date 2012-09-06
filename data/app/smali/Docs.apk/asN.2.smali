.class public LasN;
.super Ljava/lang/Object;


# static fields
.field private static a:LasQ;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    invoke-static {}, LasN;->a()V

    return-void
.end method

.method public static a(I)Ljava/lang/Integer;
    .registers 2

    sget-object v0, LasN;->a:LasQ;

    invoke-virtual {v0, p0}, LasQ;->a(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static a(J)Ljava/lang/Long;
    .registers 3

    sget-object v0, LasN;->a:LasQ;

    invoke-virtual {v0, p0, p1}, LasQ;->a(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method static a()V
    .registers 2

    new-instance v0, LasP;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LasP;-><init>(LasO;)V

    sput-object v0, LasN;->a:LasQ;

    return-void
.end method
