.class public final Lam;
.super Ljava/lang/Object;
.source "a"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(J)Lcg;
    .registers 5
    .parameter

    .prologue
    .line 46
    new-instance v0, Lcg;

    invoke-direct {v0}, Lcg;-><init>()V

    .line 47
    const-wide/16 v1, 0x3e8

    div-long v1, p0, v1

    invoke-virtual {v0, v1, v2}, Lcg;->setTime(J)V

    .line 48
    return-object v0
.end method

.method public static a(JLjava/lang/String;Lbn;)Lcg;
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v3, 0x3e8

    .line 114
    new-instance v0, Lbx;

    invoke-direct {v0}, Lbx;-><init>()V

    .line 115
    div-long v1, p0, v3

    invoke-virtual {v0, v1, v2}, Lbx;->setTime(J)V

    .line 116
    invoke-virtual {v0, p2}, Lbx;->setType(Ljava/lang/String;)V

    .line 117
    if-nez p3, :cond_34

    const/4 v1, -0x1

    :goto_12
    invoke-virtual {v0, v1}, Lbx;->setApplication(I)V

    .line 118
    if-nez p3, :cond_3d

    const-wide/16 v1, -0x1

    :goto_19
    invoke-virtual {v0, v1, v2}, Lbx;->setId(J)V

    .line 120
    const/4 v1, 0x1

    new-array v1, v1, [Lbx;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 122
    new-instance v0, Lcg;

    invoke-direct {v0}, Lcg;-><init>()V

    .line 123
    div-long v2, p0, v3

    invoke-virtual {v0, v2, v3}, Lcg;->setTime(J)V

    .line 124
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcg;->mergeDwdNotifications(Ljava/util/Collection;)V

    .line 125
    return-object v0

    .line 117
    :cond_34
    invoke-virtual {p3}, Lbn;->getApplicationId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_12

    .line 118
    :cond_3d
    invoke-virtual {p3}, Lbn;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_19
.end method

.method public static a(JLjava/lang/String;Z)Lcg;
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v3, 0x3e8

    .line 150
    new-instance v0, Lcj;

    invoke-direct {v0}, Lcj;-><init>()V

    .line 151
    invoke-virtual {v0, p2}, Lcj;->setNumber(Ljava/lang/String;)V

    .line 152
    div-long v1, p0, v3

    invoke-virtual {v0, v1, v2}, Lcj;->setTime(J)V

    .line 153
    if-eqz p3, :cond_2e

    .line 154
    const-string v1, "incoming"

    invoke-virtual {v0, v1}, Lcj;->setType(Ljava/lang/String;)V

    .line 158
    :goto_16
    new-instance v1, Lcg;

    invoke-direct {v1}, Lcg;-><init>()V

    .line 159
    div-long v2, p0, v3

    invoke-virtual {v1, v2, v3}, Lcg;->setTime(J)V

    .line 160
    const/4 v2, 0x1

    new-array v2, v2, [Lcj;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 161
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcg;->mergeSMSNotifications(Ljava/util/Collection;)V

    .line 163
    return-object v1

    .line 156
    :cond_2e
    const-string v1, "outgoing"

    invoke-virtual {v0, v1}, Lcj;->setType(Ljava/lang/String;)V

    goto :goto_16
.end method

.method public static a(JLjava/util/List;)Lcg;
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Lce;",
            ">;)",
            "Lcg;"
        }
    .end annotation

    .prologue
    .line 97
    new-instance v0, Lcg;

    invoke-direct {v0}, Lcg;-><init>()V

    .line 98
    const-wide/16 v1, 0x3e8

    div-long v1, p0, v1

    invoke-virtual {v0, v1, v2}, Lcg;->setTime(J)V

    .line 99
    invoke-virtual {v0, p2}, Lcg;->mergeLockingNotifications(Ljava/util/Collection;)V

    .line 100
    return-object v0
.end method
