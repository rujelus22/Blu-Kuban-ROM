.class public Lbn;
.super Lbl;
.source "a"


# instance fields
.field private mAllowHandsFree:Z

.field private mAllowedPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mApplicationId:Ljava/lang/Integer;

.field private mEnableOverride:Z

.field private mExpiration:Ljava/lang/Long;

.field private mFake:Z

.field private mId:Ljava/lang/Long;

.field private mLaunchableActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbm;",
            ">;"
        }
    .end annotation
.end field

.field private mNumbers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSmsAutoReply:Z

.field private mSmsIncomingWhitelist:Z

.field private mStart:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Lbl;-><init>()V

    .line 19
    iput-boolean v1, p0, Lbn;->mSmsAutoReply:Z

    .line 20
    iput-boolean v1, p0, Lbn;->mFake:Z

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbn;->mEnableOverride:Z

    .line 22
    iput-boolean v1, p0, Lbn;->mSmsIncomingWhitelist:Z

    .line 23
    iput-boolean v1, p0, Lbn;->mAllowHandsFree:Z

    .line 30
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lbn;->mNumbers:Ljava/util/List;

    .line 31
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lbn;->mAllowedPackages:Ljava/util/List;

    .line 32
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lbn;->mLaunchableActivities:Ljava/util/List;

    .line 33
    return-void
.end method


# virtual methods
.method public getAllowHandsFree()Z
    .registers 2

    .prologue
    .line 115
    iget-boolean v0, p0, Lbn;->mAllowHandsFree:Z

    return v0
.end method

.method public getAllowedPackages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lbn;->mAllowedPackages:Ljava/util/List;

    return-object v0
.end method

.method public getApplicationId()Ljava/lang/Integer;
    .registers 2
    .annotation runtime Lfx;
        a = "application"
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lbn;->mApplicationId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getEnableOverride()Z
    .registers 2

    .prologue
    .line 99
    iget-boolean v0, p0, Lbn;->mEnableOverride:Z

    return v0
.end method

.method public getExpiration()Ljava/lang/Long;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lbn;->mExpiration:Ljava/lang/Long;

    return-object v0
.end method

.method public getExpirationAsMsec()Ljava/lang/Long;
    .registers 5
    .annotation runtime Lfs;
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lbn;->mExpiration:Ljava/lang/Long;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 50
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lbn;->mExpiration:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_5
.end method

.method public getId()Ljava/lang/Long;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lbn;->mId:Ljava/lang/Long;

    return-object v0
.end method

.method public getLaunchableActivities()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lbm;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lbn;->mLaunchableActivities:Ljava/util/List;

    return-object v0
.end method

.method public getNumbers()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lbn;->mNumbers:Ljava/util/List;

    return-object v0
.end method

.method public getSmsAutoReply()Z
    .registers 2

    .prologue
    .line 123
    iget-boolean v0, p0, Lbn;->mSmsAutoReply:Z

    return v0
.end method

.method public getSmsIncomingWhitelist()Z
    .registers 2

    .prologue
    .line 107
    iget-boolean v0, p0, Lbn;->mSmsIncomingWhitelist:Z

    return v0
.end method

.method public getStart()Ljava/lang/Long;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lbn;->mStart:Ljava/lang/Long;

    return-object v0
.end method

.method public getStartAsMsec()Ljava/lang/Long;
    .registers 5
    .annotation runtime Lfs;
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lbn;->mStart:Ljava/lang/Long;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 60
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lbn;->mStart:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_5
.end method

.method public isFake()Z
    .registers 2
    .annotation runtime Lfs;
    .end annotation

    .prologue
    .line 148
    iget-boolean v0, p0, Lbn;->mFake:Z

    return v0
.end method

.method public setAllowHandsFree(Z)V
    .registers 2
    .parameter

    .prologue
    .line 119
    iput-boolean p1, p0, Lbn;->mAllowHandsFree:Z

    .line 120
    return-void
.end method

.method public setAllowedPackages(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 131
    iput-object p1, p0, Lbn;->mAllowedPackages:Ljava/util/List;

    .line 132
    return-void
.end method

.method public setApplicationId(Ljava/lang/Integer;)V
    .registers 2
    .parameter
    .annotation runtime Lfx;
        a = "application"
    .end annotation

    .prologue
    .line 87
    iput-object p1, p0, Lbn;->mApplicationId:Ljava/lang/Integer;

    .line 88
    return-void
.end method

.method public setEnableOverride(Z)V
    .registers 2
    .parameter

    .prologue
    .line 103
    iput-boolean p1, p0, Lbn;->mEnableOverride:Z

    .line 104
    return-void
.end method

.method public setExpiration(Ljava/lang/Long;)V
    .registers 2
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lbn;->mExpiration:Ljava/lang/Long;

    .line 79
    return-void
.end method

.method public setFake(Z)V
    .registers 2
    .parameter
    .annotation runtime Lfs;
    .end annotation

    .prologue
    .line 153
    iput-boolean p1, p0, Lbn;->mFake:Z

    .line 154
    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .registers 2
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lbn;->mId:Ljava/lang/Long;

    .line 92
    return-void
.end method

.method public setLaunchableActivities(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 139
    iput-object p1, p0, Lbn;->mLaunchableActivities:Ljava/util/List;

    .line 140
    return-void
.end method

.method public setNumbers(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    iput-object p1, p0, Lbn;->mNumbers:Ljava/util/List;

    .line 96
    return-void
.end method

.method public setSmsAutoReply(Z)V
    .registers 2
    .parameter

    .prologue
    .line 127
    iput-boolean p1, p0, Lbn;->mSmsAutoReply:Z

    .line 128
    return-void
.end method

.method public setSmsIncomingWhitelist(Z)V
    .registers 2
    .parameter

    .prologue
    .line 111
    iput-boolean p1, p0, Lbn;->mSmsIncomingWhitelist:Z

    .line 112
    return-void
.end method

.method public setStart(Ljava/lang/Long;)V
    .registers 2
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lbn;->mStart:Ljava/lang/Long;

    .line 83
    return-void
.end method

.method public shouldLock()Z
    .registers 8

    .prologue
    const-wide/16 v5, 0x3e8

    const/4 v4, 0x0

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 37
    iget-object v2, p0, Lbn;->mStart:Ljava/lang/Long;

    if-eqz v2, :cond_18

    iget-object v2, p0, Lbn;->mStart:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    mul-long/2addr v2, v5

    cmp-long v2, v2, v0

    if-lez v2, :cond_18

    move v0, v4

    .line 40
    :goto_17
    return v0

    :cond_18
    iget-object v2, p0, Lbn;->mExpiration:Ljava/lang/Long;

    if-eqz v2, :cond_29

    iget-object v2, p0, Lbn;->mExpiration:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    mul-long/2addr v2, v5

    cmp-long v0, v2, v0

    if-lez v0, :cond_29

    const/4 v0, 0x1

    goto :goto_17

    :cond_29
    move v0, v4

    goto :goto_17
.end method
