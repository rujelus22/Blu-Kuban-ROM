.class public Lu/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lu/j;


# direct methods
.method public constructor <init>(JJLu/g;)V
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 25
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lu/e;-><init>(JJLu/g;II)V

    .line 26
    return-void
.end method

.method public constructor <init>(JJLu/g;II)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v6, 0x1

    const/4 v5, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lu/j;

    new-instance v1, Lu/c;

    long-to-float v2, p1

    add-long v3, p1, p3

    long-to-float v3, v3

    div-float/2addr v2, v3

    invoke-direct {v1, v2}, Lu/c;-><init>(F)V

    invoke-direct {v0, v1}, Lu/j;-><init>(Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lu/e;->a:Lu/j;

    .line 31
    iget-object v0, p0, Lu/e;->a:Lu/j;

    add-long v1, p1, p3

    invoke-virtual {v0, v1, v2}, Lu/j;->setDuration(J)V

    .line 33
    sget-object v0, Lu/f;->a:[I

    invoke-virtual {p5}, Lu/g;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_4c

    .line 50
    :goto_29
    return-void

    .line 35
    :pswitch_2a
    iget-object v0, p0, Lu/e;->a:Lu/j;

    invoke-virtual {v0, v5}, Lu/j;->a(I)V

    .line 36
    iget-object v0, p0, Lu/e;->a:Lu/j;

    invoke-virtual {v0, v6}, Lu/j;->a(I)V

    goto :goto_29

    .line 39
    :pswitch_35
    iget-object v0, p0, Lu/e;->a:Lu/j;

    invoke-virtual {v0, v6}, Lu/j;->a(I)V

    .line 40
    iget-object v0, p0, Lu/e;->a:Lu/j;

    invoke-virtual {v0, v5}, Lu/j;->a(I)V

    goto :goto_29

    .line 43
    :pswitch_40
    iget-object v0, p0, Lu/e;->a:Lu/j;

    invoke-virtual {v0, p6}, Lu/j;->a(I)V

    .line 44
    iget-object v0, p0, Lu/e;->a:Lu/j;

    invoke-virtual {v0, p7}, Lu/j;->a(I)V

    goto :goto_29

    .line 33
    nop

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_35
        :pswitch_40
    .end packed-switch
.end method

.method public constructor <init>(JLu/g;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 21
    const-wide/16 v1, 0x0

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lu/e;-><init>(JJLu/g;)V

    .line 22
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/aU;)I
    .registers 5
    .parameter

    .prologue
    .line 54
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->d()J

    move-result-wide v0

    .line 55
    iget-object v2, p0, Lu/e;->a:Lu/j;

    invoke-virtual {v2}, Lu/j;->hasStarted()Z

    move-result v2

    if-nez v2, :cond_11

    .line 56
    iget-object v2, p0, Lu/e;->a:Lu/j;

    invoke-virtual {v2}, Lu/j;->start()V

    .line 60
    :cond_11
    iget-object v2, p0, Lu/e;->a:Lu/j;

    invoke-virtual {v2, v0, v1}, Lu/j;->a(J)V

    .line 61
    iget-object v0, p0, Lu/e;->a:Lu/j;

    invoke-virtual {v0}, Lu/j;->b()I

    move-result v0

    .line 62
    iget-object v1, p0, Lu/e;->a:Lu/j;

    invoke-virtual {v1}, Lu/j;->hasEnded()Z

    move-result v1

    if-nez v1, :cond_27

    .line 63
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->a()V

    .line 65
    :cond_27
    return v0
.end method

.method public a()V
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lu/e;->a:Lu/j;

    invoke-virtual {v0}, Lu/j;->start()V

    .line 71
    return-void
.end method
