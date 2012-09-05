.class public final Lcb;
.super Ljava/lang/Object;
.source "a"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private mTime:J

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getTime()J
    .registers 3

    .prologue
    .line 15
    iget-wide v0, p0, Lcb;->mTime:J

    return-wide v0
.end method

.method public final getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcb;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public final setTime(J)V
    .registers 3
    .parameter

    .prologue
    .line 18
    iput-wide p1, p0, Lcb;->mTime:J

    .line 19
    return-void
.end method

.method public final setType(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcb;->mType:Ljava/lang/String;

    .line 25
    return-void
.end method
