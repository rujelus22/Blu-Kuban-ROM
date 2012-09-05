.class public final Lcf;
.super Ljava/lang/Object;
.source "a"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private number:Ljava/lang/String;

.field private size:J

.field private time:J

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "outgoing"

    iput-object v0, p0, Lcf;->type:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public final getNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcf;->number:Ljava/lang/String;

    return-object v0
.end method

.method public final getSize()J
    .registers 3

    .prologue
    .line 47
    iget-wide v0, p0, Lcf;->size:J

    return-wide v0
.end method

.method public final getTime()J
    .registers 3

    .prologue
    .line 39
    iget-wide v0, p0, Lcf;->time:J

    return-wide v0
.end method

.method public final getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcf;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final setNumber(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcf;->number:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public final setSize(J)V
    .registers 3
    .parameter

    .prologue
    .line 51
    iput-wide p1, p0, Lcf;->size:J

    .line 52
    return-void
.end method

.method public final setTime(J)V
    .registers 3
    .parameter

    .prologue
    .line 43
    iput-wide p1, p0, Lcf;->time:J

    .line 44
    return-void
.end method

.method public final setType(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcf;->type:Ljava/lang/String;

    .line 28
    return-void
.end method
