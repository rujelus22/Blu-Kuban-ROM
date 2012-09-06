.class public Lat/R;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    return-void
.end method

.method private static a(Lat/U;I)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 171
    invoke-virtual {p0, p1}, Lat/U;->c(I)I

    move-result v0

    packed-switch v0, :pswitch_data_18

    .line 181
    const v0, 0x60d1d1d1

    :goto_a
    return v0

    .line 173
    :pswitch_b
    const/high16 v0, -0x64

    goto :goto_a

    .line 175
    :pswitch_e
    const/high16 v0, -0x67

    goto :goto_a

    .line 177
    :pswitch_11
    const/16 v0, -0x2000

    goto :goto_a

    .line 179
    :pswitch_14
    const v0, -0xcc4f00

    goto :goto_a

    .line 171
    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
    .end packed-switch
.end method

.method private a([Lat/U;Lat/T;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 99
    move v0, v1

    :goto_3
    array-length v2, p1

    if-ge v0, v2, :cond_2b

    .line 100
    invoke-interface {p2}, Lat/T;->a()Lat/S;

    move-result-object v4

    .line 101
    aget-object v5, p1, v0

    .line 102
    invoke-virtual {p0, v4, v5, v1, v1}, Lat/R;->a(Lat/S;Lat/U;IZ)V

    .line 103
    invoke-virtual {v5}, Lat/U;->a()I

    move-result v6

    move v2, v3

    .line 104
    :goto_14
    if-ge v2, v6, :cond_1c

    .line 105
    invoke-virtual {p0, v4, v5, v2, v3}, Lat/R;->a(Lat/S;Lat/U;IZ)V

    .line 104
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 107
    :cond_1c
    const v2, -0x2f000001

    invoke-virtual {v5}, Lat/U;->c()I

    move-result v5

    shl-int/lit8 v5, v5, 0x8

    invoke-interface {p2, v4, v2, v5}, Lat/T;->a(Lat/S;II)V

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 110
    :cond_2b
    return-void
.end method

.method private b([Lat/U;Lat/T;)V
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 120
    move v0, v1

    :goto_3
    array-length v2, p1

    if-ge v0, v2, :cond_3f

    .line 121
    aget-object v7, p1, v0

    .line 122
    invoke-virtual {p0, p2, v7, v1}, Lat/R;->a(Lat/T;Lat/U;I)Lat/S;

    move-result-object v4

    .line 123
    invoke-static {v7, v1}, Lat/R;->a(Lat/U;I)I

    move-result v3

    .line 124
    invoke-virtual {v7}, Lat/U;->a()I

    move-result v8

    move v5, v6

    .line 125
    :goto_15
    if-ge v5, v8, :cond_33

    .line 126
    invoke-virtual {p0, v4, v7, v5, v6}, Lat/R;->a(Lat/S;Lat/U;IZ)V

    .line 127
    invoke-static {v7, v5}, Lat/R;->a(Lat/U;I)I

    move-result v2

    .line 128
    if-eq v2, v3, :cond_40

    .line 131
    invoke-virtual {v7}, Lat/U;->b()I

    move-result v9

    shl-int/lit8 v9, v9, 0x8

    invoke-interface {p2, v4, v3, v9}, Lat/T;->a(Lat/S;II)V

    .line 132
    invoke-virtual {p0, p2, v7, v5}, Lat/R;->a(Lat/T;Lat/U;I)Lat/S;

    move-result-object v3

    .line 125
    :goto_2d
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move-object v4, v3

    move v3, v2

    goto :goto_15

    .line 137
    :cond_33
    invoke-virtual {v7}, Lat/U;->b()I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    invoke-interface {p2, v4, v3, v2}, Lat/T;->a(Lat/S;II)V

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 139
    :cond_3f
    return-void

    :cond_40
    move v2, v3

    move-object v3, v4

    goto :goto_2d
.end method


# virtual methods
.method protected a(Lat/T;Lat/U;I)Lat/S;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 162
    invoke-interface {p1}, Lat/T;->a()Lat/S;

    move-result-object v0

    .line 163
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, p3, v1}, Lat/R;->a(Lat/S;Lat/U;IZ)V

    .line 164
    return-object v0
.end method

.method protected a(Lat/S;Lat/U;IZ)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 148
    invoke-virtual {p2, p3}, Lat/U;->a(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    .line 149
    invoke-virtual {p2, p3}, Lat/U;->b(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    .line 151
    if-eqz p4, :cond_12

    .line 152
    invoke-interface {p1, v0, v1}, Lat/S;->a(II)V

    .line 156
    :goto_11
    return-void

    .line 154
    :cond_12
    invoke-interface {p1, v0, v1}, Lat/S;->b(II)V

    goto :goto_11
.end method

.method public a(Lat/X;Lat/T;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lat/X;->a(J)V

    .line 91
    invoke-virtual {p1}, Lat/X;->c()[Lat/U;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lat/R;->a([Lat/U;Lat/T;)V

    .line 92
    invoke-virtual {p1}, Lat/X;->c()[Lat/U;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lat/R;->b([Lat/U;Lat/T;)V

    .line 93
    return-void
.end method
