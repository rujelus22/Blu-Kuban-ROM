.class public Lcom/google/googlenav/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lat/B;

.field private final c:I


# direct methods
.method public constructor <init>(I)V
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1, p1}, Lcom/google/googlenav/c;-><init>(Ljava/lang/String;III)V

    .line 59
    const/4 v0, 0x2

    if-eq p1, v0, :cond_27

    const/4 v0, 0x4

    if-eq p1, v0, :cond_27

    const/4 v0, 0x3

    if-eq p1, v0, :cond_27

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid source: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_27
    return-void
.end method

.method public constructor <init>(II)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 51
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/google/googlenav/c;-><init>(Ljava/lang/String;III)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, v0, v0, v0}, Lcom/google/googlenav/c;-><init>(Ljava/lang/String;III)V

    .line 47
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/google/googlenav/c;->a:Ljava/lang/String;

    .line 67
    new-instance v0, Lat/B;

    invoke-direct {v0, p2, p3}, Lat/B;-><init>(II)V

    iput-object v0, p0, Lcom/google/googlenav/c;->b:Lat/B;

    .line 68
    iput p4, p0, Lcom/google/googlenav/c;->c:I

    .line 69
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/googlenav/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lat/B;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/googlenav/c;->b:Lat/B;

    return-object v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 92
    iget v0, p0, Lcom/google/googlenav/c;->c:I

    return v0
.end method

.method public d()Lad/y;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 103
    iget v1, p0, Lcom/google/googlenav/c;->c:I

    packed-switch v1, :pswitch_data_24

    .line 118
    :goto_6
    return-object v0

    .line 105
    :pswitch_7
    iget-object v1, p0, Lcom/google/googlenav/c;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lad/y;->a(Ljava/lang/String;Lat/B;)Lad/y;

    move-result-object v0

    goto :goto_6

    .line 108
    :pswitch_e
    iget-object v0, p0, Lcom/google/googlenav/c;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/googlenav/c;->b:Lat/B;

    invoke-static {v0, v1}, Lad/y;->a(Ljava/lang/String;Lat/B;)Lad/y;

    move-result-object v0

    goto :goto_6

    .line 111
    :pswitch_17
    invoke-static {}, Lad/y;->a()Lad/y;

    move-result-object v0

    goto :goto_6

    .line 114
    :pswitch_1c
    iget-object v1, p0, Lcom/google/googlenav/c;->b:Lat/B;

    invoke-static {v1, v0}, Lad/y;->a(Lat/B;Ln/B;)Lad/y;

    move-result-object v0

    goto :goto_6

    .line 103
    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_7
        :pswitch_e
        :pswitch_17
        :pswitch_1c
    .end packed-switch
.end method
