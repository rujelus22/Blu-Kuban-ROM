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
.field private mLinkPreview:Lcom/google/api/services/plusi/model/LinkPreviewResponse;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 131
    new-instance v0, Lcom/google/android/apps/plus/network/ApiaryActivity$1;

    invoke-direct {v0}, Lcom/google/android/apps/plus/network/ApiaryActivity$1;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/network/ApiaryActivity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public getLinkPreview()Lcom/google/api/services/plusi/model/LinkPreviewResponse;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryActivity;->mLinkPreview:Lcom/google/api/services/plusi/model/LinkPreviewResponse;

    return-object v0
.end method

.method public getMediaJson()Ljava/lang/String;
    .registers 6

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/google/android/apps/plus/network/ApiaryActivity;->getLinkPreview()Lcom/google/api/services/plusi/model/LinkPreviewResponse;

    move-result-object v4

    iget-object v1, v4, Lcom/google/api/services/plusi/model/LinkPreviewResponse;->blackboxPreviewData:Ljava/util/List;

    .line 81
    .local v1, dataList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_e

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 82
    :cond_e
    const/4 v4, 0x0

    .line 95
    :goto_f
    return-object v4

    .line 85
    :cond_10
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .local v3, mediaJson:Ljava/lang/StringBuilder;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 88
    .local v0, data:Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b

    .line 92
    .end local v0           #data:Ljava/lang/String;
    :cond_30
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 93
    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_f
.end method

.method public getMediaLayout()Lcom/google/api/services/plusi/model/MediaLayout;
    .registers 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryActivity;->mLinkPreview:Lcom/google/api/services/plusi/model/LinkPreviewResponse;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/LinkPreviewResponse;->mediaLayout:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/plusi/model/MediaLayout;

    return-object v0
.end method

.method public getType()Lcom/google/android/apps/plus/network/ApiaryActivity$Type;
    .registers 2

    .prologue
    .line 52
    sget-object v0, Lcom/google/android/apps/plus/network/ApiaryActivity$Type;->NONE:Lcom/google/android/apps/plus/network/ApiaryActivity$Type;

    return-object v0
.end method

.method public setLinkPreview(Lcom/google/api/services/plusi/model/LinkPreviewResponse;)V
    .registers 2
    .parameter "linkPreview"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    iput-object p1, p0, Lcom/google/android/apps/plus/network/ApiaryActivity;->mLinkPreview:Lcom/google/api/services/plusi/model/LinkPreviewResponse;

    .line 106
    invoke-virtual {p0}, Lcom/google/android/apps/plus/network/ApiaryActivity;->update()V

    .line 107
    return-void
.end method

.method protected update()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryActivity;->mLinkPreview:Lcom/google/api/services/plusi/model/LinkPreviewResponse;

    if-nez v0, :cond_c

    .line 117
    new-instance v0, Ljava/io/IOException;

    const-string v1, "media layout is null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_c
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 128
    invoke-static {}, Lcom/google/api/services/plusi/model/LinkPreviewResponseJson;->getInstance()Lcom/google/api/services/plusi/model/LinkPreviewResponseJson;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/network/ApiaryActivity;->mLinkPreview:Lcom/google/api/services/plusi/model/LinkPreviewResponse;

    invoke-virtual {v0, v1}, Lcom/google/api/services/plusi/model/LinkPreviewResponseJson;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    return-void
.end method
