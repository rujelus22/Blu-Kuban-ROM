.class public abstract Lcom/coremobility/integration/x;
.super Ljava/lang/Object;


# instance fields
.field protected a:I

.field public b:I

.field public c:[Lcom/coremobility/integration/y;


# direct methods
.method public constructor <init>(I)V
    .registers 9

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [Lcom/coremobility/integration/y;

    new-instance v1, Lcom/coremobility/integration/y;

    invoke-direct {v1, p0, v3, v5}, Lcom/coremobility/integration/y;-><init>(Lcom/coremobility/integration/x;II)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/coremobility/integration/y;

    invoke-direct {v1, p0, v4, v3}, Lcom/coremobility/integration/y;-><init>(Lcom/coremobility/integration/x;II)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/coremobility/integration/y;

    invoke-direct {v1, p0, v3, v5}, Lcom/coremobility/integration/y;-><init>(Lcom/coremobility/integration/x;II)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/coremobility/integration/y;

    invoke-direct {v1, p0, v6, v6}, Lcom/coremobility/integration/y;-><init>(Lcom/coremobility/integration/x;II)V

    aput-object v1, v0, v3

    const/4 v1, 0x4

    new-instance v2, Lcom/coremobility/integration/y;

    invoke-direct {v2, p0, v5, v5}, Lcom/coremobility/integration/y;-><init>(Lcom/coremobility/integration/x;II)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/coremobility/integration/y;

    invoke-direct {v2, p0, v4, v3}, Lcom/coremobility/integration/y;-><init>(Lcom/coremobility/integration/x;II)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/coremobility/integration/y;

    invoke-direct {v2, p0, v3, v4}, Lcom/coremobility/integration/y;-><init>(Lcom/coremobility/integration/x;II)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/coremobility/integration/y;

    invoke-direct {v2, p0, v3, v4}, Lcom/coremobility/integration/y;-><init>(Lcom/coremobility/integration/x;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/coremobility/integration/y;

    invoke-direct {v2, p0, v5, v5}, Lcom/coremobility/integration/y;-><init>(Lcom/coremobility/integration/x;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/coremobility/integration/y;

    invoke-direct {v2, p0, v4, v3}, Lcom/coremobility/integration/y;-><init>(Lcom/coremobility/integration/x;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/coremobility/integration/y;

    invoke-direct {v2, p0, v3, v6}, Lcom/coremobility/integration/y;-><init>(Lcom/coremobility/integration/x;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/coremobility/integration/y;

    invoke-direct {v2, p0, v3, v6}, Lcom/coremobility/integration/y;-><init>(Lcom/coremobility/integration/x;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lcom/coremobility/integration/y;

    invoke-direct {v2, p0, v4, v5}, Lcom/coremobility/integration/y;-><init>(Lcom/coremobility/integration/x;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lcom/coremobility/integration/y;

    invoke-direct {v2, p0, v3, v3}, Lcom/coremobility/integration/y;-><init>(Lcom/coremobility/integration/x;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lcom/coremobility/integration/y;

    invoke-direct {v2, p0, v4, v4}, Lcom/coremobility/integration/y;-><init>(Lcom/coremobility/integration/x;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lcom/coremobility/integration/y;

    invoke-direct {v2, p0, v3, v3}, Lcom/coremobility/integration/y;-><init>(Lcom/coremobility/integration/x;II)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/coremobility/integration/x;->c:[Lcom/coremobility/integration/y;

    iput p1, p0, Lcom/coremobility/integration/x;->a:I

    iput v3, p0, Lcom/coremobility/integration/x;->b:I

    return-void
.end method

.method private static a(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_12

    const-string v0, "undef"

    :goto_5
    return-object v0

    :pswitch_6
    const-string v0, "Active"

    goto :goto_5

    :pswitch_9
    const-string v0, "Blocked"

    goto :goto_5

    :pswitch_c
    const-string v0, "Dormant"

    goto :goto_5

    :pswitch_f
    const-string v0, "Inactive"

    goto :goto_5

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
    .end packed-switch
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public final a(ILcom/coremobility/f/g;)V
    .registers 12

    const/4 v8, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v0, p0, Lcom/coremobility/integration/x;->b:I

    iget-object v3, p0, Lcom/coremobility/integration/x;->c:[Lcom/coremobility/integration/y;

    mul-int/lit8 v4, v0, 0x4

    add-int/2addr v4, p1

    aget-object v3, v3, v4

    iget v4, v3, Lcom/coremobility/integration/y;->b:I

    iput v4, p0, Lcom/coremobility/integration/x;->b:I

    const/16 v4, 0xc

    const-string v5, "%s: %s + %s -> %s, %s"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/coremobility/integration/x;->a()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v0}, Lcom/coremobility/integration/x;->a(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v1

    const/4 v7, 0x2

    packed-switch p1, :pswitch_data_6e

    const-string v0, "undef"

    :goto_29
    aput-object v0, v6, v7

    iget v0, p0, Lcom/coremobility/integration/x;->b:I

    invoke-static {v0}, Lcom/coremobility/integration/x;->a(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v8

    const/4 v7, 0x4

    iget v0, v3, Lcom/coremobility/integration/y;->a:I

    packed-switch v0, :pswitch_data_7a

    const-string v0, "undef"

    :goto_3b
    aput-object v0, v6, v7

    invoke-static {v4, v5, v6}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget v0, v3, Lcom/coremobility/integration/y;->a:I

    packed-switch v0, :pswitch_data_86

    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    :goto_48
    :pswitch_48
    return-void

    :pswitch_49
    const-string v0, "Activate"

    goto :goto_29

    :pswitch_4c
    const-string v0, "Release"

    goto :goto_29

    :pswitch_4f
    const-string v0, "Request"

    goto :goto_29

    :pswitch_52
    const-string v0, "Suspend"

    goto :goto_29

    :pswitch_55
    const-string v0, "NoAction"

    goto :goto_3b

    :pswitch_58
    const-string v0, "Report"

    goto :goto_3b

    :pswitch_5b
    const-string v0, "Suspended"

    goto :goto_3b

    :pswitch_5e
    const-string v0, "Unexpected"

    goto :goto_3b

    :pswitch_61
    iget v3, p0, Lcom/coremobility/integration/x;->a:I

    iget v0, p0, Lcom/coremobility/integration/x;->b:I

    if-eq v0, v8, :cond_6c

    move v0, v1

    :goto_68
    invoke-virtual {p2, v3, v0}, Lcom/coremobility/f/g;->a(IZ)V

    goto :goto_48

    :cond_6c
    move v0, v2

    goto :goto_68

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_49
        :pswitch_4c
        :pswitch_4f
        :pswitch_52
    .end packed-switch

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_55
        :pswitch_58
        :pswitch_5b
        :pswitch_5e
    .end packed-switch

    :pswitch_data_86
    .packed-switch 0x0
        :pswitch_48
        :pswitch_61
        :pswitch_48
    .end packed-switch
.end method

.method public a(Lcom/coremobility/f/g;)V
    .registers 2

    return-void
.end method

.method public a(Lcom/coremobility/integration/v;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Lcom/coremobility/integration/x;->a:I

    return v0
.end method

.method public c()V
    .registers 1

    return-void
.end method

.method public d()V
    .registers 1

    return-void
.end method
