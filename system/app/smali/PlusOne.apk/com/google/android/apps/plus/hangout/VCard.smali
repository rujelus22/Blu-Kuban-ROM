.class public final Lcom/google/android/apps/plus/hangout/VCard;
.super Ljava/lang/Object;
.source "VCard.java"


# instance fields
.field private avatarData:[B

.field private avatarHash:Ljava/lang/String;

.field private cellPhoneNumber:Ljava/lang/String;

.field private fullName:Ljava/lang/String;

.field private homePhoneNumber:Ljava/lang/String;

.field private isAvatarModified:Z

.field private workPhoneNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "fullName"
    .parameter "isAvatarModified"
    .parameter "avatarData"
    .parameter "avatarHash"
    .parameter "homePhoneNumber"
    .parameter "workPhoneNumber"
    .parameter "cellPhoneNumber"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/VCard;->fullName:Ljava/lang/String;

    .line 19
    iput-boolean p2, p0, Lcom/google/android/apps/plus/hangout/VCard;->isAvatarModified:Z

    .line 20
    iput-object p3, p0, Lcom/google/android/apps/plus/hangout/VCard;->avatarData:[B

    .line 21
    iput-object p4, p0, Lcom/google/android/apps/plus/hangout/VCard;->avatarHash:Ljava/lang/String;

    .line 22
    iput-object p5, p0, Lcom/google/android/apps/plus/hangout/VCard;->homePhoneNumber:Ljava/lang/String;

    .line 23
    iput-object p6, p0, Lcom/google/android/apps/plus/hangout/VCard;->workPhoneNumber:Ljava/lang/String;

    .line 24
    iput-object p7, p0, Lcom/google/android/apps/plus/hangout/VCard;->cellPhoneNumber:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public getAvatarData()[B
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/VCard;->avatarData:[B

    return-object v0
.end method

.method public getAvatarHash()Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/VCard;->avatarHash:Ljava/lang/String;

    return-object v0
.end method

.method public getCellPhoneNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/VCard;->cellPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/VCard;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public getHomePhoneNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/VCard;->homePhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getIsAvatarModified()Z
    .registers 2

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/VCard;->isAvatarModified:Z

    return v0
.end method

.method public getWorkPhoneNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/VCard;->workPhoneNumber:Ljava/lang/String;

    return-object v0
.end method
