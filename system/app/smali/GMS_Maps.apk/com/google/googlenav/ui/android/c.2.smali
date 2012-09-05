.class public Lcom/google/googlenav/ui/android/c;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/googlenav/android/l;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/android/l;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/ui/android/c;->a:Lcom/google/googlenav/android/l;

    return-void
.end method

.method public static a(I)I
    .registers 2

    sparse-switch p0, :sswitch_data_16

    const/4 v0, 0x0

    :goto_4
    return v0

    :sswitch_5
    const/4 v0, 0x1

    goto :goto_4

    :sswitch_7
    const/4 v0, 0x2

    goto :goto_4

    :sswitch_9
    const/4 v0, 0x3

    goto :goto_4

    :sswitch_b
    const/4 v0, 0x4

    goto :goto_4

    :sswitch_d
    const/4 v0, 0x7

    goto :goto_4

    :sswitch_f
    const/16 v0, 0x8

    goto :goto_4

    :sswitch_12
    const/16 v0, 0xc

    goto :goto_4

    nop

    :sswitch_data_16
    .sparse-switch
        0x4 -> :sswitch_f
        0x5 -> :sswitch_12
        0x13 -> :sswitch_5
        0x14 -> :sswitch_7
        0x15 -> :sswitch_9
        0x16 -> :sswitch_b
        0x17 -> :sswitch_d
        0x42 -> :sswitch_d
    .end sparse-switch
.end method

.method private static b(I)Z
    .registers 2

    const/4 v0, 0x0

    sparse-switch p0, :sswitch_data_6

    const/4 v0, 0x1

    :sswitch_5
    return v0

    :sswitch_data_6
    .sparse-switch
        0x5 -> :sswitch_5
        0x52 -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public a(IILandroid/view/KeyEvent;)Z
    .registers 8

    invoke-static {p1}, Lcom/google/googlenav/ui/android/c;->b(I)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lcom/google/googlenav/ui/android/c;->a:Lcom/google/googlenav/android/l;

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->k()Lcom/google/googlenav/ui/D;

    move-result-object v0

    new-instance v1, Laq/b;

    invoke-static {p1}, Lcom/google/googlenav/ui/android/c;->a(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {v1, p1, p1, v2, v3}, Laq/b;-><init>(IIIZ)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/D;->b(Laq/b;)Z

    move-result v0

    goto :goto_7
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .registers 7

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/google/googlenav/ui/android/c;->b(I)Z

    move-result v1

    if-nez v1, :cond_8

    :goto_7
    return v0

    :cond_8
    iget-object v1, p0, Lcom/google/googlenav/ui/android/c;->a:Lcom/google/googlenav/android/l;

    invoke-virtual {v1}, Lcom/google/googlenav/android/l;->k()Lcom/google/googlenav/ui/D;

    move-result-object v1

    new-instance v2, Laq/b;

    invoke-static {p1}, Lcom/google/googlenav/ui/android/c;->a(I)I

    move-result v3

    invoke-direct {v2, p1, v0, v3, v0}, Laq/b;-><init>(IIIZ)V

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/D;->b(Laq/b;)Z

    move-result v0

    goto :goto_7
.end method

.method public b(ILandroid/view/KeyEvent;)Z
    .registers 7

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/googlenav/ui/android/c;->b(I)Z

    move-result v0

    if-nez v0, :cond_8

    :goto_7
    return v3

    :cond_8
    iget-object v0, p0, Lcom/google/googlenav/ui/android/c;->a:Lcom/google/googlenav/android/l;

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->k()Lcom/google/googlenav/ui/D;

    move-result-object v0

    new-instance v1, Laq/b;

    invoke-static {p1}, Lcom/google/googlenav/ui/android/c;->a(I)I

    move-result v2

    invoke-direct {v1, p1, p1, v2, v3}, Laq/b;-><init>(IIIZ)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/D;->a(Laq/b;)V

    goto :goto_7
.end method
