.class public Lcom/google/android/apps/plus/service/Hangout$Info;
.super Ljava/lang/Object;
.source "Hangout.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/service/Hangout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Info"
.end annotation


# instance fields
.field private final domain:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final launchSource:Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

.field private final nick:Ljava/lang/String;

.field private ringInvitees:Z

.field private final roomType:Lcom/google/android/apps/plus/service/Hangout$RoomType;

.field private final serviceId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/plus/service/Hangout$RoomType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/service/Hangout$LaunchSource;Z)V
    .registers 9
    .parameter "roomType"
    .parameter "domain"
    .parameter "serviceId"
    .parameter "id"
    .parameter "nick"
    .parameter "launchSource"
    .parameter "ringInvitees"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/service/Hangout$Info;->ringInvitees:Z

    .line 58
    iput-object p1, p0, Lcom/google/android/apps/plus/service/Hangout$Info;->roomType:Lcom/google/android/apps/plus/service/Hangout$RoomType;

    .line 59
    iput-object p2, p0, Lcom/google/android/apps/plus/service/Hangout$Info;->domain:Ljava/lang/String;

    .line 60
    iput-object p3, p0, Lcom/google/android/apps/plus/service/Hangout$Info;->serviceId:Ljava/lang/String;

    .line 61
    invoke-virtual {p4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/service/Hangout$Info;->id:Ljava/lang/String;

    .line 62
    iput-object p5, p0, Lcom/google/android/apps/plus/service/Hangout$Info;->nick:Ljava/lang/String;

    .line 63
    iput-object p6, p0, Lcom/google/android/apps/plus/service/Hangout$Info;->launchSource:Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    .line 64
    iput-boolean p7, p0, Lcom/google/android/apps/plus/service/Hangout$Info;->ringInvitees:Z

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/service/Hangout$Info;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/apps/plus/service/Hangout$Info;->id:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .parameter "o"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 108
    if-ne p0, p1, :cond_5

    .line 120
    :cond_4
    :goto_4
    return v4

    .line 112
    :cond_5
    instance-of v5, p1, Lcom/google/android/apps/plus/service/Hangout$Info;

    if-nez v5, :cond_b

    move v4, v3

    .line 113
    goto :goto_4

    :cond_b
    move-object v2, p1

    .line 116
    check-cast v2, Lcom/google/android/apps/plus/service/Hangout$Info;

    .line 118
    .local v2, other:Lcom/google/android/apps/plus/service/Hangout$Info;
    iget-object v5, p0, Lcom/google/android/apps/plus/service/Hangout$Info;->domain:Ljava/lang/String;

    if-eqz v5, :cond_1c

    iget-object v5, p0, Lcom/google/android/apps/plus/service/Hangout$Info;->domain:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_50

    :cond_1c
    move v0, v4

    .line 119
    .local v0, emptyDomain:Z
    :goto_1d
    iget-object v5, v2, Lcom/google/android/apps/plus/service/Hangout$Info;->domain:Ljava/lang/String;

    if-eqz v5, :cond_2b

    iget-object v5, v2, Lcom/google/android/apps/plus/service/Hangout$Info;->domain:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_52

    :cond_2b
    move v1, v4

    .line 120
    .local v1, emptyOtherDomain:Z
    :goto_2c
    iget-object v5, p0, Lcom/google/android/apps/plus/service/Hangout$Info;->roomType:Lcom/google/android/apps/plus/service/Hangout$RoomType;

    iget-object v6, v2, Lcom/google/android/apps/plus/service/Hangout$Info;->roomType:Lcom/google/android/apps/plus/service/Hangout$RoomType;

    if-ne v5, v6, :cond_4e

    if-eqz v0, :cond_36

    if-nez v1, :cond_44

    :cond_36
    iget-object v5, p0, Lcom/google/android/apps/plus/service/Hangout$Info;->domain:Ljava/lang/String;

    if-eqz v5, :cond_4e

    iget-object v5, p0, Lcom/google/android/apps/plus/service/Hangout$Info;->domain:Ljava/lang/String;

    iget-object v6, v2, Lcom/google/android/apps/plus/service/Hangout$Info;->domain:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4e

    :cond_44
    iget-object v5, p0, Lcom/google/android/apps/plus/service/Hangout$Info;->id:Ljava/lang/String;

    iget-object v6, v2, Lcom/google/android/apps/plus/service/Hangout$Info;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_4e
    move v4, v3

    goto :goto_4

    .end local v0           #emptyDomain:Z
    .end local v1           #emptyOtherDomain:Z
    :cond_50
    move v0, v3

    .line 118
    goto :goto_1d

    .restart local v0       #emptyDomain:Z
    :cond_52
    move v1, v3

    .line 119
    goto :goto_2c
.end method

.method public getDomain()Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/apps/plus/service/Hangout$Info;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/apps/plus/service/Hangout$Info;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLaunchSource()Lcom/google/android/apps/plus/service/Hangout$LaunchSource;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/apps/plus/service/Hangout$Info;->launchSource:Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    return-object v0
.end method

.method public getNick()Ljava/lang/String;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/apps/plus/service/Hangout$Info;->nick:Ljava/lang/String;

    return-object v0
.end method

.method public getRingInvitees()Z
    .registers 2

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/google/android/apps/plus/service/Hangout$Info;->ringInvitees:Z

    return v0
.end method

.method public getRoomType()Lcom/google/android/apps/plus/service/Hangout$RoomType;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/apps/plus/service/Hangout$Info;->roomType:Lcom/google/android/apps/plus/service/Hangout$RoomType;

    return-object v0
.end method

.method public getServiceId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/apps/plus/service/Hangout$Info;->serviceId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 128
    iget-object v1, p0, Lcom/google/android/apps/plus/service/Hangout$Info;->roomType:Lcom/google/android/apps/plus/service/Hangout$RoomType;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/service/Hangout$RoomType;->hashCode()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/apps/plus/service/Hangout$Info;->id:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int v0, v1, v2

    .line 129
    .local v0, hashCode:I
    iget-object v1, p0, Lcom/google/android/apps/plus/service/Hangout$Info;->domain:Ljava/lang/String;

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/google/android/apps/plus/service/Hangout$Info;->domain:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 130
    iget-object v1, p0, Lcom/google/android/apps/plus/service/Hangout$Info;->domain:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 132
    :cond_23
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 97
    iget-object v0, p0, Lcom/google/android/apps/plus/service/Hangout$Info;->serviceId:Ljava/lang/String;

    if-nez v0, :cond_30

    .line 98
    const-string v0, "%s@%s %s (%s, %s, %s)"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/apps/plus/service/Hangout$Info;->id:Ljava/lang/String;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/android/apps/plus/service/Hangout$Info;->domain:Ljava/lang/String;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/google/android/apps/plus/service/Hangout$Info;->roomType:Lcom/google/android/apps/plus/service/Hangout$RoomType;

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/google/android/apps/plus/service/Hangout$Info;->nick:Ljava/lang/String;

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/google/android/apps/plus/service/Hangout$Info;->launchSource:Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    aput-object v2, v1, v7

    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/google/android/apps/plus/service/Hangout$Info;->ringInvitees:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 101
    :goto_2f
    return-object v0

    :cond_30
    const-string v0, "%s:%s@%s %s (%s, %s, %s)"

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/apps/plus/service/Hangout$Info;->serviceId:Ljava/lang/String;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/android/apps/plus/service/Hangout$Info;->id:Ljava/lang/String;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/google/android/apps/plus/service/Hangout$Info;->domain:Ljava/lang/String;

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/google/android/apps/plus/service/Hangout$Info;->roomType:Lcom/google/android/apps/plus/service/Hangout$RoomType;

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/google/android/apps/plus/service/Hangout$Info;->nick:Ljava/lang/String;

    aput-object v2, v1, v7

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/android/apps/plus/service/Hangout$Info;->launchSource:Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-boolean v3, p0, Lcom/google/android/apps/plus/service/Hangout$Info;->ringInvitees:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2f
.end method
