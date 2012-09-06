.class public Lcom/google/android/maps/driveabout/power/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo/o;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lo/j;)Z
    .registers 3
    .parameter

    .prologue
    .line 363
    invoke-virtual {p1}, Lo/j;->a()I

    move-result v0

    if-nez v0, :cond_10

    invoke-static {}, Lcom/google/android/maps/driveabout/power/a;->b()Lcom/google/android/maps/driveabout/power/a;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/power/a;->c(Lcom/google/android/maps/driveabout/power/a;)Z

    move-result v0

    if-nez v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method


# virtual methods
.method public a(ILo/g;Lo/q;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 404
    return-void
.end method

.method public a(Lo/j;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 356
    if-lez p2, :cond_d

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/power/g;->a(Lo/j;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 357
    const-string v0, "Guidance event"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/power/a;->d(Ljava/lang/String;)V

    .line 359
    :cond_d
    return-void
.end method

.method public a(Lo/q;)V
    .registers 2
    .parameter

    .prologue
    .line 391
    return-void
.end method

.method public b(Lo/j;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 349
    const/16 v0, 0x1f4

    if-gt p2, v0, :cond_f

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/power/g;->a(Lo/j;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 350
    const-string v0, "Approaching guidance event"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/power/a;->d(Ljava/lang/String;)V

    .line 352
    :cond_f
    return-void
.end method

.method public b(Lo/q;)V
    .registers 2
    .parameter

    .prologue
    .line 408
    return-void
.end method

.method public c(Lo/q;)V
    .registers 4
    .parameter

    .prologue
    .line 369
    invoke-static {}, Lcom/google/android/maps/driveabout/power/a;->b()Lcom/google/android/maps/driveabout/power/a;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/power/a;->d(Lcom/google/android/maps/driveabout/power/a;)I

    move-result v0

    packed-switch v0, :pswitch_data_26

    .line 387
    :cond_b
    :goto_b
    return-void

    .line 373
    :pswitch_c
    invoke-virtual {p1}, Lo/q;->l()Z

    move-result v0

    if-nez v0, :cond_b

    .line 374
    const-string v0, "User not on route"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/power/a;->d(Ljava/lang/String;)V

    goto :goto_b

    .line 379
    :pswitch_18
    invoke-virtual {p1}, Lo/q;->b()I

    move-result v0

    .line 382
    const/16 v1, 0x7d0

    if-le v0, v1, :cond_b

    .line 383
    const-string v0, "User on a long step"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/power/a;->c(Ljava/lang/String;)V

    goto :goto_b

    .line 369
    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_18
        :pswitch_c
    .end packed-switch
.end method

.method public d(Lo/q;)V
    .registers 2
    .parameter

    .prologue
    .line 395
    return-void
.end method

.method public e(Lo/q;)V
    .registers 2
    .parameter

    .prologue
    .line 399
    return-void
.end method

.method public f(Lo/q;)V
    .registers 2
    .parameter

    .prologue
    .line 412
    return-void
.end method
