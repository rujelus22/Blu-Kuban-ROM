.class public Li/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c;


# static fields
.field public static final a:[J

.field public static final b:[J

.field public static final c:[J

.field public static final d:[J

.field public static final e:[J


# instance fields
.field private final f:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x6

    .line 17
    new-array v0, v1, [J

    fill-array-data v0, :array_28

    sput-object v0, Li/ag;->a:[J

    .line 20
    new-array v0, v1, [J

    fill-array-data v0, :array_44

    sput-object v0, Li/ag;->b:[J

    .line 23
    new-array v0, v1, [J

    fill-array-data v0, :array_60

    sput-object v0, Li/ag;->c:[J

    .line 26
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_7c

    sput-object v0, Li/ag;->d:[J

    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_90

    sput-object v0, Li/ag;->e:[J

    return-void

    .line 17
    nop

    :array_28
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 20
    :array_44
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 23
    :array_60
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 26
    :array_7c
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xdct 0x5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xdct 0x5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 29
    :array_90
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Li/ag;->f:Landroid/os/Vibrator;

    .line 38
    return-void
.end method

.method public static a(ILo/I;)[J
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 53
    const/4 v0, 0x4

    if-ne p0, v0, :cond_6

    .line 54
    sget-object v0, Li/ag;->d:[J

    .line 72
    :goto_5
    return-object v0

    .line 57
    :cond_6
    if-eqz p1, :cond_22

    invoke-virtual {p1}, Lo/I;->b()I

    move-result v0

    invoke-static {v0}, Lo/I;->a(I)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 58
    invoke-virtual {p1}, Lo/I;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_26

    .line 67
    sget-object v0, Li/ag;->c:[J

    goto :goto_5

    .line 60
    :pswitch_1c
    sget-object v0, Li/ag;->a:[J

    goto :goto_5

    .line 63
    :pswitch_1f
    sget-object v0, Li/ag;->b:[J

    goto :goto_5

    .line 72
    :cond_22
    sget-object v0, Li/ag;->e:[J

    goto :goto_5

    .line 58
    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1f
    .end packed-switch
.end method


# virtual methods
.method public a(Li/U;)Li/a;
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-virtual {p1}, Li/U;->c()I

    move-result v2

    .line 44
    invoke-virtual {p1}, Li/U;->d()Lo/j;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 45
    invoke-virtual {p1}, Li/U;->d()Lo/j;

    move-result-object v0

    invoke-virtual {v0}, Lo/j;->e()Lo/I;

    move-result-object v0

    .line 47
    :goto_13
    invoke-static {v2, v0}, Li/ag;->a(ILo/I;)[J

    move-result-object v0

    .line 48
    if-eqz v0, :cond_20

    new-instance v1, Li/af;

    iget-object v2, p0, Li/ag;->f:Landroid/os/Vibrator;

    invoke-direct {v1, v2, v0}, Li/af;-><init>(Landroid/os/Vibrator;[J)V

    :cond_20
    return-object v1

    :cond_21
    move-object v0, v1

    goto :goto_13
.end method

.method public a()V
    .registers 1

    .prologue
    .line 77
    return-void
.end method

.method public b()V
    .registers 1

    .prologue
    .line 81
    return-void
.end method
