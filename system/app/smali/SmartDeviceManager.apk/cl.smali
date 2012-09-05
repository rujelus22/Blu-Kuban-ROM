.class public final Lcl;
.super Ljava/lang/Object;
.source "a"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private mApplication:I

.field private mId:J

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
.method public final getApplication()I
    .registers 2

    .prologue
    .line 17
    iget v0, p0, Lcl;->mApplication:I

    return v0
.end method

.method public final getId()J
    .registers 3

    .prologue
    .line 23
    iget-wide v0, p0, Lcl;->mId:J

    return-wide v0
.end method

.method public final getTime()J
    .registers 3

    .prologue
    .line 29
    iget-wide v0, p0, Lcl;->mTime:J

    return-wide v0
.end method

.method public final getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcl;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public final setApplication(I)V
    .registers 2
    .parameter

    .prologue
    .line 20
    iput p1, p0, Lcl;->mApplication:I

    .line 21
    return-void
.end method

.method public final setId(J)V
    .registers 3
    .parameter

    .prologue
    .line 26
    iput-wide p1, p0, Lcl;->mId:J

    .line 27
    return-void
.end method

.method public final setTime(J)V
    .registers 3
    .parameter

    .prologue
    .line 32
    iput-wide p1, p0, Lcl;->mTime:J

    .line 33
    return-void
.end method

.method public final setType(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcl;->mType:Ljava/lang/String;

    .line 39
    return-void
.end method
