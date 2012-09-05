.class public Lc/w;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lc/A;

.field public static final b:Lc/A;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lc/w;->a()Lc/A;

    move-result-object v0

    sput-object v0, Lc/w;->a:Lc/A;

    invoke-static {}, Lc/w;->b()Lc/A;

    move-result-object v0

    sput-object v0, Lc/w;->b:Lc/A;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Lc/A;
    .registers 7

    const/4 v1, 0x1

    new-instance v0, Lc/x;

    sget-object v2, Lk/a;->ah:LW/d;

    sget-object v3, Lk/a;->ac:LW/d;

    const/4 v5, 0x3

    const/4 v6, 0x4

    move v4, v1

    invoke-direct/range {v0 .. v6}, Lc/x;-><init>(ILW/d;LW/d;III)V

    return-object v0
.end method

.method private static b()Lc/A;
    .registers 7

    const/4 v1, 0x1

    new-instance v0, Lc/y;

    sget-object v2, Lk/a;->M:LW/d;

    sget-object v3, Lk/a;->ae:LW/d;

    const/4 v5, 0x3

    const/4 v6, 0x4

    move v4, v1

    invoke-direct/range {v0 .. v6}, Lc/y;-><init>(ILW/d;LW/d;III)V

    return-object v0
.end method
