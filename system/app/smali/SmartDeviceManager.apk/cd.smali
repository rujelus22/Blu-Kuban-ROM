.class public abstract Lcd;
.super Ljava/lang/Object;
.source "a"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected time:J

.field protected type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcd;->type:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public getTime()J
    .registers 3

    .prologue
    .line 29
    iget-wide v0, p0, Lcd;->time:J

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcd;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setTime(J)V
    .registers 3
    .parameter

    .prologue
    .line 33
    iput-wide p1, p0, Lcd;->time:J

    .line 34
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcd;->type:Ljava/lang/String;

    .line 26
    return-void
.end method
