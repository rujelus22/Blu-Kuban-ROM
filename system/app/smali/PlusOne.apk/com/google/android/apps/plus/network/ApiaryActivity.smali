.class public Lcom/google/android/apps/plus/network/ApiaryActivity;
.super Ljava/lang/Object;
.source "ApiaryActivity.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/network/ApiaryActivity$Type;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/apps/plus/network/ApiaryActivity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mPlusActivity:Lcom/google/api/services/plus/model/Activity;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 101
    new-instance v0, Lcom/google/android/apps/plus/network/ApiaryActivity$1;

    invoke-direct {v0}, Lcom/google/android/apps/plus/network/ApiaryActivity$1;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/network/ApiaryActivity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public getPlusActivity()Lcom/google/api/services/plus/model/Activity;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryActivity;->mPlusActivity:Lcom/google/api/services/plus/model/Activity;

    return-object v0
.end method

.method public getType()Lcom/google/android/apps/plus/network/ApiaryActivity$Type;
    .registers 2

    .prologue
    .line 49
    sget-object v0, Lcom/google/android/apps/plus/network/ApiaryActivity$Type;->NONE:Lcom/google/android/apps/plus/network/ApiaryActivity$Type;

    return-object v0
.end method

.method public setPlusActivity(Lcom/google/api/services/plus/model/Activity;)V
    .registers 2
    .parameter "plusActivity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    iput-object p1, p0, Lcom/google/android/apps/plus/network/ApiaryActivity;->mPlusActivity:Lcom/google/api/services/plus/model/Activity;

    .line 68
    invoke-virtual {p0}, Lcom/google/android/apps/plus/network/ApiaryActivity;->updateActivity()V

    .line 69
    return-void
.end method

.method protected updateActivity()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryActivity;->mPlusActivity:Lcom/google/api/services/plus/model/Activity;

    if-nez v0, :cond_c

    .line 78
    new-instance v0, Ljava/io/IOException;

    const-string v1, "activity is null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_c
    iget-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryActivity;->mPlusActivity:Lcom/google/api/services/plus/model/Activity;

    invoke-virtual {v0}, Lcom/google/api/services/plus/model/Activity;->getPlusObject()Lcom/google/api/services/plus/model/ActivityObject;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 81
    new-instance v0, Ljava/io/IOException;

    const-string v1, "missing activity object"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_1c
    iget-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryActivity;->mPlusActivity:Lcom/google/api/services/plus/model/Activity;

    invoke-virtual {v0}, Lcom/google/api/services/plus/model/Activity;->getPlusObject()Lcom/google/api/services/plus/model/ActivityObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/services/plus/model/ActivityObject;->getAttachments()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_30

    .line 84
    new-instance v0, Ljava/io/IOException;

    const-string v1, "missing attachments"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_30
    iget-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryActivity;->mPlusActivity:Lcom/google/api/services/plus/model/Activity;

    invoke-virtual {v0}, Lcom/google/api/services/plus/model/Activity;->getPlusObject()Lcom/google/api/services/plus/model/ActivityObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/services/plus/model/ActivityObject;->getAttachments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 87
    new-instance v0, Ljava/io/IOException;

    const-string v1, "too few attachments"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_48
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryActivity;->mPlusActivity:Lcom/google/api/services/plus/model/Activity;

    invoke-virtual {v0}, Lcom/google/api/services/plus/model/Activity;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    return-void
.end method
