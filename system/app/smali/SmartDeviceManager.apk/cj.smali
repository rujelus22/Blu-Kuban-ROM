.class public final Lcj;
.super Ljava/lang/Object;
.source "a"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private number:Ljava/lang/String;

.field private time:J

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "outgoing"

    iput-object v0, p0, Lcj;->type:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public final getNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcj;->number:Ljava/lang/String;

    return-object v0
.end method

.method public final getTime()J
    .registers 3

    .prologue
    .line 38
    iget-wide v0, p0, Lcj;->time:J

    return-wide v0
.end method

.method public final getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcj;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final setNumber(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcj;->number:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public final setTime(J)V
    .registers 3
    .parameter

    .prologue
    .line 42
    iput-wide p1, p0, Lcj;->time:J

    .line 43
    return-void
.end method

.method public final setType(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcj;->type:Ljava/lang/String;

    .line 27
    return-void
.end method
