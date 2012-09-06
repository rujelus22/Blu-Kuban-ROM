.class public Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;
.super Ljava/lang/Object;
.source "EsPeopleData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/content/EsPeopleData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProfileAndContactData"
.end annotation


# instance fields
.field public contact:Lcom/google/android/apps/plus/content/EsPeopleData$ContactInfo;

.field public contactUpdateTime:J

.field public displayName:Ljava/lang/String;

.field public gaiaId:Ljava/lang/String;

.field public lastUpdatedTime:J

.field public plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

.field public plusOneUpdateTime:J

.field public profile:Lcom/google/api/services/plusi/model/SimpleProfile;

.field public profileState:I

.field public profileUpdateTime:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Contact: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->contact:Lcom/google/android/apps/plus/content/EsPeopleData$ContactInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nProfile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->profile:Lcom/google/api/services/plusi/model/SimpleProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nPlusOne: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
