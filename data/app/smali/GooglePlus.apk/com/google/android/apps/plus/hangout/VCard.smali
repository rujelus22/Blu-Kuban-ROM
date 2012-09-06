.class public final Lcom/google/android/apps/plus/hangout/VCard;
.super Ljava/lang/Object;
.source "VCard.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x17d491ee6a8e7c70L


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
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/VCard;->fullName:Ljava/lang/String;

    .line 26
    iput-boolean p2, p0, Lcom/google/android/apps/plus/hangout/VCard;->isAvatarModified:Z

    .line 27
    iput-object p3, p0, Lcom/google/android/apps/plus/hangout/VCard;->avatarData:[B

    .line 28
    iput-object p4, p0, Lcom/google/android/apps/plus/hangout/VCard;->avatarHash:Ljava/lang/String;

    .line 29
    iput-object p5, p0, Lcom/google/android/apps/plus/hangout/VCard;->homePhoneNumber:Ljava/lang/String;

    .line 30
    iput-object p6, p0, Lcom/google/android/apps/plus/hangout/VCard;->workPhoneNumber:Ljava/lang/String;

    .line 31
    iput-object p7, p0, Lcom/google/android/apps/plus/hangout/VCard;->cellPhoneNumber:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public getAvatarData()[B
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/VCard;->avatarData:[B

    return-object v0
.end method

.method public getAvatarHash()Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/VCard;->avatarHash:Ljava/lang/String;

    return-object v0
.end method

.method public getCellPhoneNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/VCard;->cellPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/VCard;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public getHomePhoneNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/VCard;->homePhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getIsAvatarModified()Z
    .registers 2

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/VCard;->isAvatarModified:Z

    return v0
.end method

.method public getWorkPhoneNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/VCard;->workPhoneNumber:Ljava/lang/String;

    return-object v0
.end method
