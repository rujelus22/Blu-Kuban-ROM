.class public final Lcom/coremobility/d/a;
.super Ljava/lang/Object;


# static fields
.field private static a:I

.field private static b:Z

.field private static c:Lcom/coremobility/g/b;

.field private static d:Lcom/coremobility/i/b;

.field private static e:Lcom/coremobility/integration/a/a;

.field private static f:Lcom/coremobility/g/j;

.field private static g:Lcom/coremobility/e/y;

.field private static h:Lcom/coremobility/h/u;

.field private static i:Lcom/coremobility/c/ah;

.field private static j:Lcom/coremobility/k/cx;

.field private static k:Lcom/coremobility/l/v;

.field private static l:Lcom/coremobility/g/i;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput v1, Lcom/coremobility/d/a;->a:I

    sput-boolean v1, Lcom/coremobility/d/a;->b:Z

    sput-object v0, Lcom/coremobility/d/a;->c:Lcom/coremobility/g/b;

    sput-object v0, Lcom/coremobility/d/a;->d:Lcom/coremobility/i/b;

    sput-object v0, Lcom/coremobility/d/a;->e:Lcom/coremobility/integration/a/a;

    sput-object v0, Lcom/coremobility/d/a;->f:Lcom/coremobility/g/j;

    sput-object v0, Lcom/coremobility/d/a;->g:Lcom/coremobility/e/y;

    sput-object v0, Lcom/coremobility/d/a;->h:Lcom/coremobility/h/u;

    sput-object v0, Lcom/coremobility/d/a;->i:Lcom/coremobility/c/ah;

    sput-object v0, Lcom/coremobility/d/a;->j:Lcom/coremobility/k/cx;

    sput-object v0, Lcom/coremobility/d/a;->k:Lcom/coremobility/l/v;

    sput-object v0, Lcom/coremobility/d/a;->l:Lcom/coremobility/g/i;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .registers 9

    const/16 v8, 0x17

    const/4 v7, 0x1

    const/4 v6, 0x0

    sput v7, Lcom/coremobility/d/a;->a:I

    sput-boolean v6, Lcom/coremobility/d/a;->b:Z

    invoke-static {}, Lcom/coremobility/g/m;->c()J

    move-result-wide v0

    invoke-static {}, Lcom/coremobility/g/m;->d()J

    move-result-wide v2

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->b()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v8, v4, v5}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    const-string v4, "tick time: %d"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v8, v4, v5}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "utc time: %d"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v8, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/coremobility/g/b;->a()Lcom/coremobility/g/b;

    move-result-object v0

    sput-object v0, Lcom/coremobility/d/a;->c:Lcom/coremobility/g/b;

    invoke-static {}, Lcom/coremobility/g/b;->b()V

    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v0

    sput-object v0, Lcom/coremobility/d/a;->e:Lcom/coremobility/integration/a/a;

    invoke-static {}, Lcom/coremobility/integration/a/a;->g()V

    invoke-static {}, Lcom/coremobility/f/m;->a()Lcom/coremobility/f/m;

    invoke-static {}, Lcom/coremobility/f/m;->d()V

    invoke-static {}, Lcom/coremobility/g/j;->a()Lcom/coremobility/g/j;

    move-result-object v0

    sput-object v0, Lcom/coremobility/d/a;->f:Lcom/coremobility/g/j;

    invoke-virtual {v0}, Lcom/coremobility/g/j;->b()V

    invoke-static {}, Lcom/coremobility/i/b;->a()Lcom/coremobility/i/b;

    move-result-object v0

    sput-object v0, Lcom/coremobility/d/a;->d:Lcom/coremobility/i/b;

    invoke-virtual {v0}, Lcom/coremobility/i/b;->b()V

    invoke-static {}, Lcom/coremobility/e/y;->a()Lcom/coremobility/e/y;

    move-result-object v0

    sput-object v0, Lcom/coremobility/d/a;->g:Lcom/coremobility/e/y;

    invoke-static {}, Lcom/coremobility/h/u;->a()Lcom/coremobility/h/u;

    move-result-object v0

    sput-object v0, Lcom/coremobility/d/a;->h:Lcom/coremobility/h/u;

    invoke-static {}, Lcom/coremobility/c/ah;->a()Lcom/coremobility/c/ah;

    move-result-object v0

    sput-object v0, Lcom/coremobility/d/a;->i:Lcom/coremobility/c/ah;

    invoke-static {}, Lcom/coremobility/k/cx;->a()Lcom/coremobility/k/cx;

    move-result-object v0

    sput-object v0, Lcom/coremobility/d/a;->j:Lcom/coremobility/k/cx;

    invoke-virtual {v0}, Lcom/coremobility/k/cx;->b()V

    sget-boolean v0, Lcom/coremobility/a/b;->c:Z

    if-eqz v0, :cond_85

    invoke-static {}, Lcom/coremobility/l/v;->b()Lcom/coremobility/l/v;

    move-result-object v0

    sput-object v0, Lcom/coremobility/d/a;->k:Lcom/coremobility/l/v;

    invoke-virtual {v0}, Lcom/coremobility/l/v;->c()V

    :cond_85
    invoke-static {}, Lcom/coremobility/g/i;->a()Lcom/coremobility/g/i;

    move-result-object v0

    sput-object v0, Lcom/coremobility/d/a;->l:Lcom/coremobility/g/i;

    invoke-virtual {v0}, Lcom/coremobility/g/i;->b()V

    const/4 v0, 0x2

    sput v0, Lcom/coremobility/d/a;->a:I

    invoke-static {}, Lcom/coremobility/integration/file/CM_FileReceiver;->a()V

    sget-object v0, Lcom/coremobility/d/a;->i:Lcom/coremobility/c/ah;

    invoke-virtual {v0}, Lcom/coremobility/c/ah;->b()V

    return-void
.end method

.method public static b()V
    .registers 2

    const/4 v1, 0x0

    const/4 v0, 0x4

    sput v0, Lcom/coremobility/d/a;->a:I

    sget-object v0, Lcom/coremobility/d/a;->j:Lcom/coremobility/k/cx;

    if-eqz v0, :cond_d

    sget-object v0, Lcom/coremobility/d/a;->j:Lcom/coremobility/k/cx;

    invoke-virtual {v0}, Lcom/coremobility/k/cx;->c()V

    :cond_d
    sget-object v0, Lcom/coremobility/d/a;->k:Lcom/coremobility/l/v;

    if-eqz v0, :cond_16

    sget-object v0, Lcom/coremobility/d/a;->k:Lcom/coremobility/l/v;

    invoke-virtual {v0}, Lcom/coremobility/l/v;->d()V

    :cond_16
    sget-object v0, Lcom/coremobility/d/a;->i:Lcom/coremobility/c/ah;

    if-eqz v0, :cond_1f

    sget-object v0, Lcom/coremobility/d/a;->i:Lcom/coremobility/c/ah;

    invoke-virtual {v0}, Lcom/coremobility/c/ah;->c()V

    :cond_1f
    sget-object v0, Lcom/coremobility/d/a;->g:Lcom/coremobility/e/y;

    if-eqz v0, :cond_28

    sget-object v0, Lcom/coremobility/d/a;->g:Lcom/coremobility/e/y;

    invoke-virtual {v0}, Lcom/coremobility/e/y;->b()V

    :cond_28
    sget-object v0, Lcom/coremobility/d/a;->h:Lcom/coremobility/h/u;

    if-eqz v0, :cond_31

    sget-object v0, Lcom/coremobility/d/a;->h:Lcom/coremobility/h/u;

    invoke-virtual {v0}, Lcom/coremobility/h/u;->b()V

    :cond_31
    sget-object v0, Lcom/coremobility/d/a;->d:Lcom/coremobility/i/b;

    if-eqz v0, :cond_3f

    sget-object v0, Lcom/coremobility/d/a;->d:Lcom/coremobility/i/b;

    invoke-virtual {v0}, Lcom/coremobility/i/b;->e()V

    sget-object v0, Lcom/coremobility/d/a;->d:Lcom/coremobility/i/b;

    invoke-virtual {v0}, Lcom/coremobility/i/b;->c()V

    :cond_3f
    sget-object v0, Lcom/coremobility/d/a;->f:Lcom/coremobility/g/j;

    if-eqz v0, :cond_48

    sget-object v0, Lcom/coremobility/d/a;->f:Lcom/coremobility/g/j;

    invoke-virtual {v0}, Lcom/coremobility/g/j;->c()V

    :cond_48
    sget-object v0, Lcom/coremobility/d/a;->c:Lcom/coremobility/g/b;

    if-eqz v0, :cond_4f

    invoke-static {}, Lcom/coremobility/g/b;->c()V

    :cond_4f
    sget-object v0, Lcom/coremobility/d/a;->j:Lcom/coremobility/k/cx;

    if-eqz v0, :cond_58

    invoke-static {}, Lcom/coremobility/k/cx;->d()V

    sput-object v1, Lcom/coremobility/d/a;->j:Lcom/coremobility/k/cx;

    :cond_58
    sget-object v0, Lcom/coremobility/d/a;->k:Lcom/coremobility/l/v;

    if-eqz v0, :cond_61

    invoke-static {}, Lcom/coremobility/l/v;->e()V

    sput-object v1, Lcom/coremobility/d/a;->k:Lcom/coremobility/l/v;

    :cond_61
    sget-object v0, Lcom/coremobility/d/a;->i:Lcom/coremobility/c/ah;

    if-eqz v0, :cond_6a

    invoke-static {}, Lcom/coremobility/c/ah;->d()V

    sput-object v1, Lcom/coremobility/d/a;->i:Lcom/coremobility/c/ah;

    :cond_6a
    sget-object v0, Lcom/coremobility/d/a;->g:Lcom/coremobility/e/y;

    if-eqz v0, :cond_73

    invoke-static {}, Lcom/coremobility/e/y;->c()V

    sput-object v1, Lcom/coremobility/d/a;->g:Lcom/coremobility/e/y;

    :cond_73
    sget-object v0, Lcom/coremobility/d/a;->h:Lcom/coremobility/h/u;

    if-eqz v0, :cond_7c

    invoke-static {}, Lcom/coremobility/h/u;->c()V

    sput-object v1, Lcom/coremobility/d/a;->h:Lcom/coremobility/h/u;

    :cond_7c
    sget-object v0, Lcom/coremobility/d/a;->d:Lcom/coremobility/i/b;

    if-eqz v0, :cond_87

    sget-object v0, Lcom/coremobility/d/a;->d:Lcom/coremobility/i/b;

    invoke-virtual {v0}, Lcom/coremobility/i/b;->d()V

    sput-object v1, Lcom/coremobility/d/a;->d:Lcom/coremobility/i/b;

    :cond_87
    sget-object v0, Lcom/coremobility/d/a;->f:Lcom/coremobility/g/j;

    if-eqz v0, :cond_90

    invoke-static {}, Lcom/coremobility/g/j;->d()V

    sput-object v1, Lcom/coremobility/d/a;->f:Lcom/coremobility/g/j;

    :cond_90
    sget-object v0, Lcom/coremobility/d/a;->l:Lcom/coremobility/g/i;

    if-eqz v0, :cond_99

    invoke-static {}, Lcom/coremobility/g/i;->c()V

    sput-object v1, Lcom/coremobility/d/a;->l:Lcom/coremobility/g/i;

    :cond_99
    sget-object v0, Lcom/coremobility/d/a;->e:Lcom/coremobility/integration/a/a;

    if-eqz v0, :cond_a2

    invoke-static {}, Lcom/coremobility/integration/a/a;->b()V

    sput-object v1, Lcom/coremobility/d/a;->e:Lcom/coremobility/integration/a/a;

    :cond_a2
    sget-object v0, Lcom/coremobility/d/a;->c:Lcom/coremobility/g/b;

    if-eqz v0, :cond_ab

    invoke-static {}, Lcom/coremobility/g/b;->d()V

    sput-object v1, Lcom/coremobility/d/a;->c:Lcom/coremobility/g/b;

    :cond_ab
    invoke-static {}, Lcom/coremobility/integration/file/CM_FileReceiver;->b()V

    invoke-static {}, Lcom/coremobility/f/m;->a()Lcom/coremobility/f/m;

    invoke-static {}, Lcom/coremobility/f/m;->e()V

    invoke-static {}, Lcom/coremobility/integration/e/e;->b()V

    const/4 v0, 0x0

    sput v0, Lcom/coremobility/d/a;->a:I

    return-void
.end method

.method public static c()J
    .registers 15

    const/16 v14, 0x17

    const/4 v13, 0x2

    const/4 v1, 0x0

    const/4 v6, 0x1

    const-wide v7, 0xffffffffL

    sget v0, Lcom/coremobility/d/a;->a:I

    if-nez v0, :cond_10

    move-wide v2, v7

    :cond_f
    :goto_f
    return-wide v2

    :cond_10
    invoke-static {}, Lcom/coremobility/g/m;->c()J

    move-result-wide v2

    const-string v0, "DoPro Start %d ms"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v14, v0, v4}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    add-long v4, v2, v7

    const-wide/16 v9, 0x3e8

    add-long/2addr v9, v2

    const/4 v0, 0x3

    sput v0, Lcom/coremobility/d/a;->a:I

    invoke-static {}, Lcom/coremobility/k/cx;->a()Lcom/coremobility/k/cx;

    cmp-long v0, v7, v7

    if-eqz v0, :cond_ae

    invoke-static {}, Lcom/coremobility/g/m;->c()J

    move-result-wide v2

    add-long/2addr v2, v7

    cmp-long v0, v4, v2

    if-lez v0, :cond_ae

    const/16 v0, 0x1c

    :goto_3b
    sget-boolean v4, Lcom/coremobility/a/b;->c:Z

    if-eqz v4, :cond_52

    invoke-static {}, Lcom/coremobility/l/v;->b()Lcom/coremobility/l/v;

    cmp-long v4, v7, v7

    if-eqz v4, :cond_52

    invoke-static {}, Lcom/coremobility/g/m;->c()J

    move-result-wide v4

    add-long/2addr v4, v7

    cmp-long v11, v2, v4

    if-lez v11, :cond_52

    const/16 v0, 0x31

    move-wide v2, v4

    :cond_52
    invoke-static {}, Lcom/coremobility/g/b;->a()Lcom/coremobility/g/b;

    invoke-static {v9, v10, v6}, Lcom/coremobility/g/b;->a(JZ)J

    move-result-wide v4

    cmp-long v11, v4, v7

    if-eqz v11, :cond_68

    invoke-static {}, Lcom/coremobility/g/m;->c()J

    move-result-wide v11

    add-long/2addr v4, v11

    cmp-long v11, v2, v4

    if-lez v11, :cond_68

    move v0, v6

    move-wide v2, v4

    :cond_68
    invoke-static {}, Lcom/coremobility/g/b;->a()Lcom/coremobility/g/b;

    invoke-static {v9, v10, v6}, Lcom/coremobility/g/b;->a(JZ)J

    move-result-wide v4

    cmp-long v7, v4, v7

    if-eqz v7, :cond_7e

    invoke-static {}, Lcom/coremobility/g/m;->c()J

    move-result-wide v7

    add-long/2addr v4, v7

    cmp-long v7, v2, v4

    if-lez v7, :cond_7e

    move v0, v6

    move-wide v2, v4

    :cond_7e
    sput v13, Lcom/coremobility/d/a;->a:I

    invoke-static {}, Lcom/coremobility/g/m;->c()J

    move-result-wide v4

    const-wide/16 v7, 0x32

    add-long/2addr v7, v4

    cmp-long v7, v2, v7

    if-lez v7, :cond_ab

    sub-long/2addr v2, v4

    :goto_8c
    const-string v4, "DoPro %d ms, mod:%d"

    new-array v5, v13, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v14, v4, v5}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, v2, v0

    if-lez v0, :cond_f

    const-wide/32 v2, 0x7fffffff

    goto/16 :goto_f

    :cond_ab
    const-wide/16 v2, 0x32

    goto :goto_8c

    :cond_ae
    move v0, v1

    move-wide v2, v4

    goto :goto_3b
.end method
