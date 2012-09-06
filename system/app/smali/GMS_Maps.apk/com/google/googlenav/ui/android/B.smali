.class public Lcom/google/googlenav/ui/android/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/googlenav/android/i;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/android/i;)V
    .registers 2
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/google/googlenav/ui/android/b;->a:Lcom/google/googlenav/android/i;

    .line 20
    return-void
.end method

.method public static a(I)I
    .registers 2
    .parameter

    .prologue
    .line 103
    sparse-switch p0, :sswitch_data_16

    .line 120
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 105
    :sswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 107
    :sswitch_7
    const/4 v0, 0x2

    goto :goto_4

    .line 109
    :sswitch_9
    const/4 v0, 0x3

    goto :goto_4

    .line 111
    :sswitch_b
    const/4 v0, 0x4

    goto :goto_4

    .line 114
    :sswitch_d
    const/4 v0, 0x7

    goto :goto_4

    .line 116
    :sswitch_f
    const/16 v0, 0x8

    goto :goto_4

    .line 118
    :sswitch_12
    const/16 v0, 0xc

    goto :goto_4

    .line 103
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
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 87
    sparse-switch p0, :sswitch_data_6

    .line 98
    const/4 v0, 0x1

    :sswitch_5
    return v0

    .line 87
    :sswitch_data_6
    .sparse-switch
        0x5 -> :sswitch_5
        0x52 -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public a(IILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-static {p1}, Lcom/google/googlenav/ui/android/b;->b(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 63
    const/4 v0, 0x0

    .line 66
    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lcom/google/googlenav/ui/android/b;->a:Lcom/google/googlenav/android/i;

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->i()Lcom/google/googlenav/ui/v;

    move-result-object v0

    new-instance v1, LZ/a;

    invoke-static {p1}, Lcom/google/googlenav/ui/android/b;->a(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {v1, p1, p1, v2, v3}, LZ/a;-><init>(IIIZ)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/v;->b(LZ/a;)Z

    move-result v0

    goto :goto_7
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-static {p1}, Lcom/google/googlenav/ui/android/b;->b(I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 48
    :goto_7
    return v0

    :cond_8
    iget-object v1, p0, Lcom/google/googlenav/ui/android/b;->a:Lcom/google/googlenav/android/i;

    invoke-virtual {v1}, Lcom/google/googlenav/android/i;->i()Lcom/google/googlenav/ui/v;

    move-result-object v1

    new-instance v2, LZ/a;

    invoke-static {p1}, Lcom/google/googlenav/ui/android/b;->a(I)I

    move-result v3

    invoke-direct {v2, p1, v0, v3, v0}, LZ/a;-><init>(IIIZ)V

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/v;->b(LZ/a;)Z

    move-result v0

    goto :goto_7
.end method

.method public b(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-static {p1}, Lcom/google/googlenav/ui/android/b;->b(I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 82
    :goto_7
    return v0

    :cond_8
    iget-object v1, p0, Lcom/google/googlenav/ui/android/b;->a:Lcom/google/googlenav/android/i;

    invoke-virtual {v1}, Lcom/google/googlenav/android/i;->i()Lcom/google/googlenav/ui/v;

    move-result-object v1

    new-instance v2, LZ/a;

    invoke-static {p1}, Lcom/google/googlenav/ui/android/b;->a(I)I

    move-result v3

    invoke-direct {v2, p1, p1, v3, v0}, LZ/a;-><init>(IIIZ)V

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/v;->a(LZ/a;)Z

    move-result v0

    goto :goto_7
.end method
