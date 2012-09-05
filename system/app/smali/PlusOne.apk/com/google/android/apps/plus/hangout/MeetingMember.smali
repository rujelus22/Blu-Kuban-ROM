.class public final Lcom/google/android/apps/plus/hangout/MeetingMember;
.super Ljava/lang/Object;
.source "MeetingMember.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/hangout/MeetingMember$SortByEntryOrder;
    }
.end annotation


# static fields
.field private static BIG_NASTY_GAIA_ID_PREFIX:Ljava/lang/String; = null

.field private static isAnonymousMuc:Z = false

.field private static final serialVersionUID:J = 0x17d491ee6a8eca90L


# instance fields
.field private final entryOrder:I

.field private final id:J

.field private isMediaBlocked:Z

.field private final isSelf:Z

.field private final isSelfProfile:Z

.field private final memberMucJid:Ljava/lang/String;

.field private final nickName:Ljava/lang/String;

.field private presenceConnectionStatus:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;

.field private vCard:Lcom/google/android/apps/plus/hangout/VCard;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/apps/plus/hangout/MeetingMember;->isAnonymousMuc:Z

    .line 28
    const-string v0, "g:"

    sput-object v0, Lcom/google/android/apps/plus/hangout/MeetingMember;->BIG_NASTY_GAIA_ID_PREFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JIZZ)V
    .registers 8
    .parameter "memberMucJid"
    .parameter "nickName"
    .parameter "gaiaId"
    .parameter "entryOrder"
    .parameter "isSelf"
    .parameter "isSelfProfile"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/MeetingMember;->memberMucJid:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/google/android/apps/plus/hangout/MeetingMember;->nickName:Ljava/lang/String;

    .line 44
    iput-wide p3, p0, Lcom/google/android/apps/plus/hangout/MeetingMember;->id:J

    .line 45
    iput p5, p0, Lcom/google/android/apps/plus/hangout/MeetingMember;->entryOrder:I

    .line 46
    iput-boolean p6, p0, Lcom/google/android/apps/plus/hangout/MeetingMember;->isSelf:Z

    .line 47
    iput-boolean p7, p0, Lcom/google/android/apps/plus/hangout/MeetingMember;->isSelfProfile:Z

    .line 48
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
.method public getId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/android/apps/plus/hangout/MeetingMember;->BIG_NASTY_GAIA_ID_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/apps/plus/hangout/MeetingMember;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMucJid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/MeetingMember;->memberMucJid:Ljava/lang/String;

    return-object v0
.end method

.method getName(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .parameter "context"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/MeetingMember;->vCard:Lcom/google/android/apps/plus/hangout/VCard;

    if-nez v0, :cond_17

    .line 114
    sget-boolean v0, Lcom/google/android/apps/plus/hangout/MeetingMember;->isAnonymousMuc:Z

    if-eqz v0, :cond_14

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 121
    :goto_13
    return-object v0

    .line 118
    :cond_14
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/MeetingMember;->nickName:Ljava/lang/String;

    goto :goto_13

    .line 121
    :cond_17
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/MeetingMember;->vCard:Lcom/google/android/apps/plus/hangout/VCard;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/VCard;->getFullName()Ljava/lang/String;

    move-result-object v0

    goto :goto_13
.end method

.method public getNickName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/MeetingMember;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getPresenceConnectionStatus()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/MeetingMember;->presenceConnectionStatus:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;

    return-object v0
.end method

.method public getVCard()Lcom/google/android/apps/plus/hangout/VCard;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/MeetingMember;->vCard:Lcom/google/android/apps/plus/hangout/VCard;

    return-object v0
.end method

.method public isMediaBlocked()Z
    .registers 2

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/MeetingMember;->isMediaBlocked:Z

    return v0
.end method

.method public isSelf()Z
    .registers 2

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/MeetingMember;->isSelf:Z

    return v0
.end method

.method public isSelfProfile()Z
    .registers 2

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/MeetingMember;->isSelfProfile:Z

    return v0
.end method

.method public setMediaBlocked(Z)V
    .registers 2
    .parameter "blocked"

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/google/android/apps/plus/hangout/MeetingMember;->isMediaBlocked:Z

    .line 104
    return-void
.end method

.method public setPresenceConnectionStatus(Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;)V
    .registers 2
    .parameter "presenceConnectionStatus"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/MeetingMember;->presenceConnectionStatus:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;

    .line 65
    return-void
.end method

.method setVCard(Lcom/google/android/apps/plus/hangout/VCard;)V
    .registers 2
    .parameter "vCard"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/MeetingMember;->vCard:Lcom/google/android/apps/plus/hangout/VCard;

    .line 69
    return-void
.end method
