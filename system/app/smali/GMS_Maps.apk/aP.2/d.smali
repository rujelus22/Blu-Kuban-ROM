.class LaP/d;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:F

.field private c:F


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, LaP/d;->a:J

    return-void
.end method

.method synthetic constructor <init>(LaP/b;)V
    .registers 2

    invoke-direct {p0}, LaP/d;-><init>()V

    return-void
.end method

.method private a(JFFLaP/j;)Z
    .registers 12

    const/4 v3, 0x1

    iget-wide v0, p0, LaP/d;->a:J

    const-wide/high16 v4, -0x8000

    cmp-long v0, v0, v4

    if-nez v0, :cond_13

    move v0, v3

    :goto_a
    if-eqz v0, :cond_12

    iput-wide p1, p0, LaP/d;->a:J

    iput p3, p0, LaP/d;->b:F

    iput p4, p0, LaP/d;->c:F

    :cond_12
    return v0

    :cond_13
    sget-object v0, LaP/b;->b:[I

    invoke-virtual {p5}, LaP/j;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_4c

    const-wide/16 v1, 0x64

    const/high16 v0, 0x4000

    :goto_22
    iget-wide v4, p0, LaP/d;->a:J

    sub-long v4, p1, v4

    cmp-long v1, v4, v1

    if-gtz v1, :cond_49

    iget v1, p0, LaP/d;->b:F

    sub-float v1, p3, v1

    invoke-static {v1}, Lar/i;->b(F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v0

    if-gtz v1, :cond_49

    iget v1, p0, LaP/d;->c:F

    sub-float v1, p4, v1

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_49

    const/4 v0, 0x0

    goto :goto_a

    :pswitch_44
    const-wide/16 v1, 0x32

    const/high16 v0, 0x3f80

    goto :goto_22

    :cond_49
    move v0, v3

    goto :goto_a

    nop

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_44
    .end packed-switch
.end method

.method static synthetic a(LaP/d;JFFLaP/j;)Z
    .registers 7

    invoke-direct/range {p0 .. p5}, LaP/d;->a(JFFLaP/j;)Z

    move-result v0

    return v0
.end method
