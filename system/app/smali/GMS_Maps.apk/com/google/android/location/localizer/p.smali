.class public Lcom/google/android/location/localizer/p;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/google/android/location/localizer/r;

.field private b:Lcom/google/android/location/localizer/r;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/location/localizer/r;

    invoke-direct {v0, v1}, Lcom/google/android/location/localizer/r;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/location/localizer/p;->a:Lcom/google/android/location/localizer/r;

    new-instance v0, Lcom/google/android/location/localizer/r;

    invoke-direct {v0, v1}, Lcom/google/android/location/localizer/r;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/location/localizer/p;->b:Lcom/google/android/location/localizer/r;

    return-void
.end method


# virtual methods
.method public a()Le/s;
    .registers 2

    iget-object v0, p0, Lcom/google/android/location/localizer/p;->b:Lcom/google/android/location/localizer/r;

    invoke-virtual {v0}, Lcom/google/android/location/localizer/r;->b()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/google/android/location/localizer/p;->b:Lcom/google/android/location/localizer/r;

    invoke-virtual {v0}, Lcom/google/android/location/localizer/r;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/s;

    :goto_10
    return-object v0

    :cond_11
    iget-object v0, p0, Lcom/google/android/location/localizer/p;->a:Lcom/google/android/location/localizer/r;

    invoke-virtual {v0}, Lcom/google/android/location/localizer/r;->b()Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/google/android/location/localizer/p;->a:Lcom/google/android/location/localizer/r;

    invoke-virtual {v0}, Lcom/google/android/location/localizer/r;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/s;

    goto :goto_10

    :cond_22
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public a(Le/s;)V
    .registers 4

    sget-object v0, Lcom/google/android/location/localizer/q;->a:[I

    invoke-virtual {p1}, Le/s;->a()Le/t;

    move-result-object v1

    invoke-virtual {v1}, Le/t;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1c

    :goto_f
    return-void

    :pswitch_10
    iget-object v0, p0, Lcom/google/android/location/localizer/p;->a:Lcom/google/android/location/localizer/r;

    invoke-virtual {v0, p1}, Lcom/google/android/location/localizer/r;->a(Ljava/lang/Object;)V

    goto :goto_f

    :pswitch_16
    iget-object v0, p0, Lcom/google/android/location/localizer/p;->b:Lcom/google/android/location/localizer/r;

    invoke-virtual {v0, p1}, Lcom/google/android/location/localizer/r;->a(Ljava/lang/Object;)V

    goto :goto_f

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_10
        :pswitch_16
    .end packed-switch
.end method

.method public b()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/location/localizer/p;->b:Lcom/google/android/location/localizer/r;

    invoke-virtual {v0}, Lcom/google/android/location/localizer/r;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/location/localizer/p;->a:Lcom/google/android/location/localizer/r;

    invoke-virtual {v0}, Lcom/google/android/location/localizer/r;->b()Z

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
