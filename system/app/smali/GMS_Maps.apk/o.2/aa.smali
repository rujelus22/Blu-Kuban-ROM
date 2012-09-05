.class public Lo/aa;
.super Ljava/lang/Object;

# interfaces
.implements Lo/c;


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

    const/4 v1, 0x6

    new-array v0, v1, [J

    fill-array-data v0, :array_28

    sput-object v0, Lo/aa;->a:[J

    new-array v0, v1, [J

    fill-array-data v0, :array_44

    sput-object v0, Lo/aa;->b:[J

    new-array v0, v1, [J

    fill-array-data v0, :array_60

    sput-object v0, Lo/aa;->c:[J

    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_7c

    sput-object v0, Lo/aa;->d:[J

    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_90

    sput-object v0, Lo/aa;->e:[J

    return-void

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

    :array_44
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_60
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_7c
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xdct 0x5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xdct 0x5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_90
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lo/aa;->f:Landroid/os/Vibrator;

    return-void
.end method

.method public static a(ILu/I;)[J
    .registers 3

    const/4 v0, 0x4

    if-ne p0, v0, :cond_6

    sget-object v0, Lo/aa;->d:[J

    :goto_5
    return-object v0

    :cond_6
    if-eqz p1, :cond_22

    invoke-virtual {p1}, Lu/I;->b()I

    move-result v0

    invoke-static {v0}, Lu/I;->a(I)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p1}, Lu/I;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_26

    sget-object v0, Lo/aa;->c:[J

    goto :goto_5

    :pswitch_1c
    sget-object v0, Lo/aa;->a:[J

    goto :goto_5

    :pswitch_1f
    sget-object v0, Lo/aa;->b:[J

    goto :goto_5

    :cond_22
    sget-object v0, Lo/aa;->e:[J

    goto :goto_5

    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1f
    .end packed-switch
.end method


# virtual methods
.method public a(Lo/R;)Lo/a;
    .registers 5

    const/4 v1, 0x0

    invoke-virtual {p1}, Lo/R;->c()I

    move-result v2

    invoke-virtual {p1}, Lo/R;->d()Lu/j;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual {p1}, Lo/R;->d()Lu/j;

    move-result-object v0

    invoke-virtual {v0}, Lu/j;->e()Lu/I;

    move-result-object v0

    :goto_13
    invoke-static {v2, v0}, Lo/aa;->a(ILu/I;)[J

    move-result-object v0

    if-eqz v0, :cond_20

    new-instance v1, Lo/Z;

    iget-object v2, p0, Lo/aa;->f:Landroid/os/Vibrator;

    invoke-direct {v1, v2, v0}, Lo/Z;-><init>(Landroid/os/Vibrator;[J)V

    :cond_20
    return-object v1

    :cond_21
    move-object v0, v1

    goto :goto_13
.end method

.method public a()V
    .registers 1

    return-void
.end method

.method public b()V
    .registers 1

    return-void
.end method
