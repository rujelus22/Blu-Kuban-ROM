.class public final Lbx;
.super Ljava/lang/Object;
.source "a"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private application:I

.field private id:J

.field private time:J

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, "lock"

    iput-object v0, p0, Lbx;->type:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public final getApplication()I
    .registers 2

    .prologue
    .line 34
    iget v0, p0, Lbx;->application:I

    return v0
.end method

.method public final getId()J
    .registers 3

    .prologue
    .line 42
    iget-wide v0, p0, Lbx;->id:J

    return-wide v0
.end method

.method public final getTime()J
    .registers 3

    .prologue
    .line 26
    iget-wide v0, p0, Lbx;->time:J

    return-wide v0
.end method

.method public final getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lbx;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final setApplication(I)V
    .registers 2
    .parameter

    .prologue
    .line 38
    iput p1, p0, Lbx;->application:I

    .line 39
    return-void
.end method

.method public final setId(J)V
    .registers 3
    .parameter

    .prologue
    .line 46
    iput-wide p1, p0, Lbx;->id:J

    .line 47
    return-void
.end method

.method public final setTime(J)V
    .registers 3
    .parameter

    .prologue
    .line 30
    iput-wide p1, p0, Lbx;->time:J

    .line 31
    return-void
.end method

.method public final setType(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lbx;->type:Ljava/lang/String;

    .line 23
    return-void
.end method
