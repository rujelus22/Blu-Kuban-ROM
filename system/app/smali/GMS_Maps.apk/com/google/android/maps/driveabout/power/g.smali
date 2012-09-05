.class public Lcom/google/android/maps/driveabout/power/g;
.super Ljava/lang/Object;

# interfaces
.implements Lu/o;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lu/j;)Z
    .registers 3

    invoke-virtual {p1}, Lu/j;->a()I

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
.method public a(ILu/g;Lu/q;)V
    .registers 4

    return-void
.end method

.method public a(Lu/j;I)V
    .registers 4

    if-lez p2, :cond_d

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/power/g;->a(Lu/j;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "Guidance event"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/power/a;->d(Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public a(Lu/q;)V
    .registers 2

    return-void
.end method

.method public b(Lu/j;I)V
    .registers 4

    const/16 v0, 0x1f4

    if-gt p2, v0, :cond_f

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/power/g;->a(Lu/j;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "Approaching guidance event"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/power/a;->d(Ljava/lang/String;)V

    :cond_f
    return-void
.end method

.method public b(Lu/q;)V
    .registers 2

    return-void
.end method

.method public c(Lu/q;)V
    .registers 4

    invoke-static {}, Lcom/google/android/maps/driveabout/power/a;->b()Lcom/google/android/maps/driveabout/power/a;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/power/a;->d(Lcom/google/android/maps/driveabout/power/a;)I

    move-result v0

    packed-switch v0, :pswitch_data_26

    :cond_b
    :goto_b
    return-void

    :pswitch_c
    invoke-virtual {p1}, Lu/q;->l()Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "User not on route"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/power/a;->d(Ljava/lang/String;)V

    goto :goto_b

    :pswitch_18
    invoke-virtual {p1}, Lu/q;->b()I

    move-result v0

    const/16 v1, 0x7d0

    if-le v0, v1, :cond_b

    const-string v0, "User on a long step"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/power/a;->c(Ljava/lang/String;)V

    goto :goto_b

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_18
        :pswitch_c
    .end packed-switch
.end method

.method public d(Lu/q;)V
    .registers 2

    return-void
.end method

.method public e(Lu/q;)V
    .registers 2

    return-void
.end method

.method public f(Lu/q;)V
    .registers 2

    return-void
.end method
