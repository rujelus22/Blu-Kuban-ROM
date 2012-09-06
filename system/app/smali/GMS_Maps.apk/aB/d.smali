.class LaB/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:F

.field private c:F


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 1165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1167
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, LaB/d;->a:J

    return-void
.end method

.method synthetic constructor <init>(LaB/b;)V
    .registers 2
    .parameter

    .prologue
    .line 1165
    invoke-direct {p0}, LaB/d;-><init>()V

    return-void
.end method

.method private a(JFFLaB/j;)Z
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 1187
    iget-wide v0, p0, LaB/d;->a:J

    const-wide/high16 v4, -0x8000

    cmp-long v0, v0, v4

    if-nez v0, :cond_13

    move v0, v3

    .line 1215
    :goto_a
    if-eqz v0, :cond_12

    .line 1217
    iput-wide p1, p0, LaB/d;->a:J

    .line 1218
    iput p3, p0, LaB/d;->b:F

    .line 1219
    iput p4, p0, LaB/d;->c:F

    .line 1222
    :cond_12
    return v0

    .line 1193
    :cond_13
    sget-object v0, LaB/b;->b:[I

    invoke-virtual {p5}, LaB/j;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_4c

    .line 1200
    const-wide/16 v1, 0x64

    .line 1201
    const/high16 v0, 0x4000

    .line 1204
    :goto_22
    iget-wide v4, p0, LaB/d;->a:J

    sub-long v4, p1, v4

    cmp-long v1, v4, v1

    if-gtz v1, :cond_49

    iget v1, p0, LaB/d;->b:F

    sub-float v1, p3, v1

    invoke-static {v1}, Lcom/google/googlenav/common/util/j;->b(F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v0

    if-gtz v1, :cond_49

    iget v1, p0, LaB/d;->c:F

    sub-float v1, p4, v1

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_49

    .line 1209
    const/4 v0, 0x0

    goto :goto_a

    .line 1195
    :pswitch_44
    const-wide/16 v1, 0x32

    .line 1196
    const/high16 v0, 0x3f80

    .line 1197
    goto :goto_22

    :cond_49
    move v0, v3

    .line 1211
    goto :goto_a

    .line 1193
    nop

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_44
    .end packed-switch
.end method

.method static synthetic a(LaB/d;JFFLaB/j;)Z
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1165
    invoke-direct/range {p0 .. p5}, LaB/d;->a(JFFLaB/j;)Z

    move-result v0

    return v0
.end method
