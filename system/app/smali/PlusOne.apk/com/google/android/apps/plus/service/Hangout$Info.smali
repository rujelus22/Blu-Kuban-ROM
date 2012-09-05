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


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final domain:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final mucJid:Ljava/lang/String;

.field private final roomType:Lcom/google/android/apps/plus/service/Hangout$RoomType;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const-class v0, Lcom/google/android/apps/plus/service/Hangout;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/android/apps/plus/service/Hangout$Info;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Lcom/google/android/apps/plus/service/Hangout$RoomType;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "roomType"
    .parameter "domain"
    .parameter "id"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sget-object v0, Lcom/google/android/apps/plus/service/Hangout$RoomType;->CONSUMER:Lcom/google/android/apps/plus/service/Hangout$RoomType;

    if-ne p1, v0, :cond_23

    .line 41
    sget-boolean v0, Lcom/google/android/apps/plus/service/Hangout$Info;->$assertionsDisabled:Z

    if-nez v0, :cond_21

    if-eqz p2, :cond_21

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "hangout.com"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 42
    :cond_21
    const-string p2, "hangout.com"

    .line 44
    :cond_23
    iput-object p1, p0, Lcom/google/android/apps/plus/service/Hangout$Info;->roomType:Lcom/google/android/apps/plus/service/Hangout$RoomType;

    .line 45
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/service/Hangout$Info;->domain:Ljava/lang/String;

    .line 46
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/service/Hangout$Info;->id:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/service/Hangout$Info;->mucJid:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "mucJid"

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object v0, p0, Lcom/google/android/apps/plus/service/Hangout$Info;->roomType:Lcom/google/android/apps/plus/service/Hangout$RoomType;

    .line 53
    iput-object v0, p0, Lcom/google/android/apps/plus/service/Hangout$Info;->domain:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/google/android/apps/plus/service/Hangout$Info;->id:Ljava/lang/String;

    .line 56
    iput-object p1, p0, Lcom/google/android/apps/plus/service/Hangout$Info;->mucJid:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 103
    if-ne p0, p1, :cond_5

    .line 120
    :cond_4
    :goto_4
    return v1

    .line 107
    :cond_5
    instance-of v3, p1, Lcom/google/android/apps/plus/service/Hangout$Info;

    if-nez v3, :cond_b

    move v1, v2

    .line 108
    goto :goto_4

    :cond_b
    move-object v0, p1

    .line 111
    check-cast v0, Lcom/google/android/apps/plus/service/Hangout$Info;

    .line 112
    .local v0, other:Lcom/google/android/apps/plus/service/Hangout$Info;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/service/Hangout$Info;->hasId()Z

    move-result v3

    invoke-virtual {v0}, Lcom/google/android/apps/plus/service/Hangout$Info;->hasId()Z

    move-result v4

    if-eq v3, v4, :cond_1a

    move v1, v2

    .line 113
    goto :goto_4

    .line 116
    :cond_1a
    invoke-virtual {p0}, Lcom/google/android/apps/plus/service/Hangout$Info;->hasId()Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 117
    iget-object v3, p0, Lcom/google/android/apps/plus/service/Hangout$Info;->roomType:Lcom/google/android/apps/plus/service/Hangout$RoomType;

    iget-object v4, v0, Lcom/google/android/apps/plus/service/Hangout$Info;->roomType:Lcom/google/android/apps/plus/service/Hangout$RoomType;

    if-ne v3, v4, :cond_3a

    iget-object v3, p0, Lcom/google/android/apps/plus/service/Hangout$Info;->domain:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/apps/plus/service/Hangout$Info;->domain:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    iget-object v3, p0, Lcom/google/android/apps/plus/service/Hangout$Info;->id:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/apps/plus/service/Hangout$Info;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3a
    move v1, v2

    goto :goto_4

    .line 120
    :cond_3c
    iget-object v1, p0, Lcom/google/android/apps/plus/service/Hangout$Info;->mucJid:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/android/apps/plus/service/Hangout$Info;->mucJid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_4
.end method

.method public getDomain()Ljava/lang/String;
    .registers 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/apps/plus/service/Hangout$Info;->domain:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 73
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "domain is not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_c
    iget-object v0, p0, Lcom/google/android/apps/plus/service/Hangout$Info;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/apps/plus/service/Hangout$Info;->id:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 80
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "id is not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_c
    iget-object v0, p0, Lcom/google/android/apps/plus/service/Hangout$Info;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMucJid()Ljava/lang/String;
    .registers 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/apps/plus/service/Hangout$Info;->mucJid:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 87
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mucJid is not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_c
    iget-object v0, p0, Lcom/google/android/apps/plus/service/Hangout$Info;->mucJid:Ljava/lang/String;

    return-object v0
.end method

.method public getRoomType()Lcom/google/android/apps/plus/service/Hangout$RoomType;
    .registers 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/apps/plus/service/Hangout$Info;->roomType:Lcom/google/android/apps/plus/service/Hangout$RoomType;

    if-nez v0, :cond_c

    .line 66
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "roomType is not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_c
    iget-object v0, p0, Lcom/google/android/apps/plus/service/Hangout$Info;->roomType:Lcom/google/android/apps/plus/service/Hangout$RoomType;

    return-object v0
.end method

.method public hasId()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 60
    sget-boolean v0, Lcom/google/android/apps/plus/service/Hangout$Info;->$assertionsDisabled:Z

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/apps/plus/service/Hangout$Info;->id:Ljava/lang/String;

    if-nez v0, :cond_18

    move v0, v1

    :goto_b
    iget-object v3, p0, Lcom/google/android/apps/plus/service/Hangout$Info;->mucJid:Ljava/lang/String;

    if-nez v3, :cond_1a

    move v3, v1

    :goto_10
    if-ne v0, v3, :cond_1c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_18
    move v0, v2

    goto :goto_b

    :cond_1a
    move v3, v2

    goto :goto_10

    .line 61
    :cond_1c
    iget-object v0, p0, Lcom/google/android/apps/plus/service/Hangout$Info;->id:Ljava/lang/String;

    if-eqz v0, :cond_21

    :goto_20
    return v1

    :cond_21
    move v1, v2

    goto :goto_20
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/google/android/apps/plus/service/Hangout$Info;->hasId()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 127
    iget-object v0, p0, Lcom/google/android/apps/plus/service/Hangout$Info;->roomType:Lcom/google/android/apps/plus/service/Hangout$RoomType;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/service/Hangout$RoomType;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/plus/service/Hangout$Info;->domain:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/apps/plus/service/Hangout$Info;->id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 129
    :goto_1a
    return v0

    :cond_1b
    iget-object v0, p0, Lcom/google/android/apps/plus/service/Hangout$Info;->mucJid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1a
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/apps/plus/service/Hangout$Info;->roomType:Lcom/google/android/apps/plus/service/Hangout$RoomType;

    if-eqz v0, :cond_1d

    .line 95
    const-string v0, "%s@%s (%s)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/apps/plus/service/Hangout$Info;->id:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/apps/plus/service/Hangout$Info;->domain:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/apps/plus/service/Hangout$Info;->roomType:Lcom/google/android/apps/plus/service/Hangout$RoomType;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 97
    :goto_1c
    return-object v0

    :cond_1d
    iget-object v0, p0, Lcom/google/android/apps/plus/service/Hangout$Info;->mucJid:Ljava/lang/String;

    goto :goto_1c
.end method
