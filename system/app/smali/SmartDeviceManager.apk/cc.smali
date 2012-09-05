.class public final Lcc;
.super Lcd;
.source "a"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private code:I

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ldu;)V
    .registers 6
    .parameter

    .prologue
    .line 18
    const-string v0, "error"

    invoke-direct {p0, v0}, Lcd;-><init>(Ljava/lang/String;)V

    .line 19
    iget-object v0, p1, Ldu;->a:Ldv;

    invoke-virtual {v0}, Ldv;->b()I

    move-result v0

    iput v0, p0, Lcc;->code:I

    .line 20
    iget-object v0, p1, Ldu;->a:Ldv;

    invoke-virtual {v0}, Ldv;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcc;->message:Ljava/lang/String;

    .line 21
    iget-wide v0, p1, Ldu;->b:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcc;->time:J

    .line 22
    return-void
.end method


# virtual methods
.method public final getCode()I
    .registers 2

    .prologue
    .line 25
    iget v0, p0, Lcc;->code:I

    return v0
.end method

.method public final getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcc;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final setCode(I)V
    .registers 2
    .parameter

    .prologue
    .line 29
    iput p1, p0, Lcc;->code:I

    .line 30
    return-void
.end method

.method public final setMessage(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcc;->message:Ljava/lang/String;

    .line 38
    return-void
.end method
