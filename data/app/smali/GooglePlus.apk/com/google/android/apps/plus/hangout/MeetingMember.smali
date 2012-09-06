.class public final Lcom/google/android/apps/plus/hangout/MeetingMember;
.super Ljava/lang/Object;
.source "MeetingMember.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/hangout/MeetingMember$SortByEntryOrder;,
        Lcom/google/android/apps/plus/hangout/MeetingMember$Status;
    }
.end annotation


# static fields
.field private static BIG_NASTY_GAIA_ID_PREFIX:Ljava/lang/String; = null

.field private static isAnonymousMuc:Z = false

.field private static final serialVersionUID:J = 0x17d491ee6a8eca90L


# instance fields
.field private currentStatus:Lcom/google/android/apps/plus/hangout/MeetingMember$Status;

.field private final entryOrder:I

.field private final gaiaId:Ljava/lang/String;

.field private isMediaBlocked:Z

.field private final isSelf:Z

.field private final isSelfProfile:Z

.field private isVideoPaused:Z

.field private final memberMucJid:Ljava/lang/String;

.field private final nickName:Ljava/lang/String;

.field private previousStatus:Lcom/google/android/apps/plus/hangout/MeetingMember$Status;

.field private vCard:Lcom/google/android/apps/plus/hangout/VCard;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/apps/plus/hangout/MeetingMember;->isAnonymousMuc:Z

    .line 33
    const-string v0, "g:"

    sput-object v0, Lcom/google/android/apps/plus/hangout/MeetingMember;->BIG_NASTY_GAIA_ID_PREFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V
    .registers 8
    .parameter "memberMucJid"
    .parameter "nickName"
    .parameter "gaiaId"
    .parameter "entryOrder"
    .parameter "isSelf"
    .parameter "isSelfProfile"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/MeetingMember;->memberMucJid:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/google/android/apps/plus/hangout/MeetingMember;->nickName:Ljava/lang/String;

    .line 51
    sget-object v0, Lcom/google/android/apps/plus/hangout/MeetingMember$Status;->DISCONNECTED:Lcom/google/android/apps/plus/hangout/MeetingMember$Status;

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/MeetingMember;->previousStatus:Lcom/google/android/apps/plus/hangout/MeetingMember$Status;

    .line 52
    sget-object v0, Lcom/google/android/apps/plus/hangout/MeetingMember$Status;->DISCONNECTED:Lcom/google/android/apps/plus/hangout/MeetingMember$Status;

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/MeetingMember;->currentStatus:Lcom/google/android/apps/plus/hangout/MeetingMember$Status;

    .line 53
    iput-object p3, p0, Lcom/google/android/apps/plus/hangout/MeetingMember;->gaiaId:Ljava/lang/String;

    .line 54
    iput p4, p0, Lcom/google/android/apps/plus/hangout/MeetingMember;->entryOrder:I

    .line 55
    iput-boolean p5, p0, Lcom/google/android/apps/plus/hangout/MeetingMember;->isSelf:Z

    .line 56
    iput-boolean p6, p0, Lcom/google/android/apps/plus/hangout/MeetingMember;->isSelfProfile:Z

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/hangout/MeetingMember;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 14
    iget v0, p0, Lcom/google/android/apps/plus/hangout/MeetingMember;->entryOrder:I

    return v0
.end method


# virtual methods
.method public getCurrentStatus()Lcom/google/android/apps/plus/hangout/MeetingMember$Status;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/MeetingMember;->currentStatus:Lcom/google/android/apps/plus/hangout/MeetingMember$Status;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/android/apps/plus/hangout/MeetingMember;->BIG_NASTY_GAIA_ID_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/MeetingMember;->gaiaId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMucJid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/MeetingMember;->memberMucJid:Ljava/lang/String;

    return-object v0
.end method

.method getName(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .parameter "context"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/MeetingMember;->vCard:Lcom/google/android/apps/plus/hangout/VCard;

    if-nez v0, :cond_17

    .line 139
    sget-boolean v0, Lcom/google/android/apps/plus/hangout/MeetingMember;->isAnonymousMuc:Z

    if-eqz v0, :cond_14

    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080386

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 146
    :goto_13
    return-object v0

    .line 143
    :cond_14
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/MeetingMember;->nickName:Ljava/lang/String;

    goto :goto_13

    .line 146
    :cond_17
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/MeetingMember;->vCard:Lcom/google/android/apps/plus/hangout/VCard;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/VCard;->getFullName()Ljava/lang/String;

    move-result-object v0

    goto :goto_13
.end method

.method public getPreviousStatus()Lcom/google/android/apps/plus/hangout/MeetingMember$Status;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/MeetingMember;->previousStatus:Lcom/google/android/apps/plus/hangout/MeetingMember$Status;

    return-object v0
.end method

.method public getVCard()Lcom/google/android/apps/plus/hangout/VCard;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/MeetingMember;->vCard:Lcom/google/android/apps/plus/hangout/VCard;

    return-object v0
.end method

.method public isMediaBlocked()Z
    .registers 2

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/MeetingMember;->isMediaBlocked:Z

    return v0
.end method

.method public isSelf()Z
    .registers 2

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/MeetingMember;->isSelf:Z

    return v0
.end method

.method public isSelfProfile()Z
    .registers 2

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/MeetingMember;->isSelfProfile:Z

    return v0
.end method

.method public isVideoPaused()Z
    .registers 2

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/MeetingMember;->isVideoPaused:Z

    return v0
.end method

.method public setCurrentStatus(Lcom/google/android/apps/plus/hangout/MeetingMember$Status;)V
    .registers 3
    .parameter "status"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/MeetingMember;->currentStatus:Lcom/google/android/apps/plus/hangout/MeetingMember$Status;

    if-ne v0, p1, :cond_5

    .line 81
    :goto_4
    return-void

    .line 79
    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/MeetingMember;->currentStatus:Lcom/google/android/apps/plus/hangout/MeetingMember$Status;

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/MeetingMember;->previousStatus:Lcom/google/android/apps/plus/hangout/MeetingMember$Status;

    .line 80
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/MeetingMember;->currentStatus:Lcom/google/android/apps/plus/hangout/MeetingMember$Status;

    goto :goto_4
.end method

.method public setMediaBlocked(Z)V
    .registers 2
    .parameter "blocked"

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/google/android/apps/plus/hangout/MeetingMember;->isMediaBlocked:Z

    .line 129
    return-void
.end method

.method setVCard(Lcom/google/android/apps/plus/hangout/VCard;)V
    .registers 2
    .parameter "vCard"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/MeetingMember;->vCard:Lcom/google/android/apps/plus/hangout/VCard;

    .line 85
    return-void
.end method

.method public setVideoPaused(Z)V
    .registers 2
    .parameter "paused"

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/google/android/apps/plus/hangout/MeetingMember;->isVideoPaused:Z

    .line 120
    return-void
.end method
