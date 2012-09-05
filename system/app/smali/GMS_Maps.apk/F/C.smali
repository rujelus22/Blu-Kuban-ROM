.class public final LF/C;
.super Ljava/lang/Object;


# instance fields
.field public final a:LF/R;

.field public final b:LF/D;

.field public final c:Lbc/a;

.field public final d:Lbc/c;

.field public final e:Z

.field public final f:LF/E;


# direct methods
.method private constructor <init>(LF/R;LF/D;Lbc/a;Lbc/c;LF/E;Z)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LF/C;->a:LF/R;

    iput-object p2, p0, LF/C;->b:LF/D;

    iput-object p3, p0, LF/C;->c:Lbc/a;

    iput-object p4, p0, LF/C;->d:Lbc/c;

    iput-object p5, p0, LF/C;->f:LF/E;

    iput-boolean p6, p0, LF/C;->e:Z

    return-void
.end method

.method public static a(LF/R;)LF/C;
    .registers 8

    const/4 v3, 0x0

    new-instance v0, LF/C;

    sget-object v2, LF/D;->c:LF/D;

    const/4 v6, 0x1

    move-object v1, p0

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v6}, LF/C;-><init>(LF/R;LF/D;Lbc/a;Lbc/c;LF/E;Z)V

    return-object v0
.end method

.method public static a(LF/R;LF/E;)LF/C;
    .registers 9

    const/4 v3, 0x0

    new-instance v0, LF/C;

    sget-object v2, LF/D;->b:LF/D;

    const/4 v6, 0x1

    move-object v1, p0

    move-object v4, v3

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, LF/C;-><init>(LF/R;LF/D;Lbc/a;Lbc/c;LF/E;Z)V

    return-object v0
.end method

.method public static a(LF/R;Lbc/a;Lbc/c;Z)LF/C;
    .registers 11

    new-instance v0, LF/C;

    sget-object v2, LF/D;->a:LF/D;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, LF/C;-><init>(LF/R;LF/D;Lbc/a;Lbc/c;LF/E;Z)V

    return-object v0
.end method
