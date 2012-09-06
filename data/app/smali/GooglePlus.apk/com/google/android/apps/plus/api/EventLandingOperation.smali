.class public Lcom/google/android/apps/plus/api/EventLandingOperation;
.super Lcom/google/android/apps/plus/network/PlusiOperation;
.source "EventLandingOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/network/PlusiOperation",
        "<",
        "Lcom/google/api/services/plusi/model/EventLandingRequest;",
        "Lcom/google/api/services/plusi/model/EventLandingResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private mActivityId:Ljava/lang/String;

.field private final mEventId:Ljava/lang/String;

.field private final mOwnerId:Ljava/lang/String;

.field private mPlusEvent:Lcom/google/api/services/plusi/model/PlusEvent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V
    .registers 15
    .parameter "context"
    .parameter "account"
    .parameter "eventId"
    .parameter "ownerId"
    .parameter "intent"
    .parameter "listener"

    .prologue
    .line 62
    const-string v3, "eventlanding"

    invoke-static {}, Lcom/google/api/services/plusi/model/EventLandingRequestJson;->getInstance()Lcom/google/api/services/plusi/model/EventLandingRequestJson;

    move-result-object v4

    invoke-static {}, Lcom/google/api/services/plusi/model/EventLandingResponseJson;->getInstance()Lcom/google/api/services/plusi/model/EventLandingResponseJson;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/network/PlusiOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/json/EsJson;Lcom/google/android/apps/plus/json/EsJson;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 64
    iput-object p3, p0, Lcom/google/android/apps/plus/api/EventLandingOperation;->mEventId:Ljava/lang/String;

    .line 65
    iput-object p4, p0, Lcom/google/android/apps/plus/api/EventLandingOperation;->mOwnerId:Ljava/lang/String;

    .line 66
    return-void
.end method


# virtual methods
.method protected bridge synthetic handleResponse(Lcom/google/android/apps/plus/json/GenericJson;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    check-cast p1, Lcom/google/api/services/plusi/model/EventLandingResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/api/EventLandingOperation;->handleResponse(Lcom/google/api/services/plusi/model/EventLandingResponse;)V

    return-void
.end method

.method protected handleResponse(Lcom/google/api/services/plusi/model/EventLandingResponse;)V
    .registers 29
    .parameter "response"

    .prologue
    .line 82
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/api/services/plusi/model/EventLandingResponse;->plusEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/plus/api/EventLandingOperation;->mPlusEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    .line 86
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v4, activities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/content/EsEventData$EventActivity;>;"
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/api/services/plusi/model/EventLandingResponse;->photoCollection:Lcom/google/api/services/plusi/model/PhotoCollection;

    move-object/from16 v22, v0

    if-eqz v22, :cond_2e1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/api/services/plusi/model/EventLandingResponse;->photoCollection:Lcom/google/api/services/plusi/model/PhotoCollection;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/google/api/services/plusi/model/PhotoCollection;->segments:Ljava/util/List;

    move-object/from16 v22, v0

    if-eqz v22, :cond_2e1

    .line 88
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/api/services/plusi/model/EventLandingResponse;->photoCollection:Lcom/google/api/services/plusi/model/PhotoCollection;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/google/api/services/plusi/model/PhotoCollection;->segments:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_37
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_2e1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/google/api/services/plusi/model/PhotoCollectionSegment;

    .line 89
    .local v21, segment:Lcom/google/api/services/plusi/model/PhotoCollectionSegment;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/api/services/plusi/model/PhotoCollectionSegment;->photos:Ljava/util/List;

    move-object/from16 v22, v0

    if-eqz v22, :cond_37

    .line 90
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/api/services/plusi/model/PhotoCollectionSegment;->photos:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :cond_55
    :goto_55
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_37

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/google/api/services/plusi/model/DataPhoto;

    .line 91
    .local v18, photo:Lcom/google/api/services/plusi/model/DataPhoto;
    new-instance v5, Lcom/google/android/apps/plus/content/EsEventData$EventActivity;

    invoke-direct {v5}, Lcom/google/android/apps/plus/content/EsEventData$EventActivity;-><init>()V

    .line 92
    .local v5, activity:Lcom/google/android/apps/plus/content/EsEventData$EventActivity;
    const/16 v22, 0x64

    move/from16 v0, v22

    iput v0, v5, Lcom/google/android/apps/plus/content/EsEventData$EventActivity;->activityType:I

    .line 94
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/api/services/plusi/model/DataPhoto;->uploadTimestampSeconds:Ljava/lang/Double;

    move-object/from16 v22, v0

    if-eqz v22, :cond_2bd

    .line 95
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/api/services/plusi/model/DataPhoto;->uploadTimestampSeconds:Ljava/lang/Double;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    const-wide v24, 0x408f400000000000L

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-long v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    iput-wide v0, v5, Lcom/google/android/apps/plus/content/EsEventData$EventActivity;->timestamp:J

    .line 100
    :cond_8e
    :goto_8e
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/api/services/plusi/model/DataPhoto;->owner:Lcom/google/api/services/plusi/model/DataUser;

    move-object/from16 v22, v0

    if-eqz v22, :cond_b6

    .line 101
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/api/services/plusi/model/DataPhoto;->owner:Lcom/google/api/services/plusi/model/DataUser;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/google/api/services/plusi/model/DataUser;->id:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iput-object v0, v5, Lcom/google/android/apps/plus/content/EsEventData$EventActivity;->ownerGaiaId:Ljava/lang/String;

    .line 102
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/api/services/plusi/model/DataPhoto;->owner:Lcom/google/api/services/plusi/model/DataUser;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/google/api/services/plusi/model/DataUser;->displayName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iput-object v0, v5, Lcom/google/android/apps/plus/content/EsEventData$EventActivity;->ownerName:Ljava/lang/String;

    .line 105
    :cond_b6
    new-instance v11, Lcom/google/android/apps/plus/content/EsEventData$EventPhoto;

    invoke-direct {v11}, Lcom/google/android/apps/plus/content/EsEventData$EventPhoto;-><init>()V

    .line 106
    .local v11, eventPhoto:Lcom/google/android/apps/plus/content/EsEventData$EventPhoto;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/api/services/plusi/model/DataPhoto;->id:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iput-object v0, v11, Lcom/google/android/apps/plus/content/EsEventData$EventPhoto;->id:Ljava/lang/String;

    .line 107
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/api/services/plusi/model/DataPhoto;->owner:Lcom/google/api/services/plusi/model/DataUser;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/google/api/services/plusi/model/DataUser;->id:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iput-object v0, v11, Lcom/google/android/apps/plus/content/EsEventData$EventPhoto;->ownerId:Ljava/lang/String;

    .line 108
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/api/services/plusi/model/DataPhoto;->caption:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_e7

    .line 109
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/api/services/plusi/model/DataPhoto;->caption:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iput-object v0, v11, Lcom/google/android/apps/plus/content/EsEventData$EventPhoto;->description:Ljava/lang/String;

    .line 111
    :cond_e7
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/api/services/plusi/model/DataPhoto;->title:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_f9

    .line 112
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/api/services/plusi/model/DataPhoto;->title:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iput-object v0, v11, Lcom/google/android/apps/plus/content/EsEventData$EventPhoto;->title:Ljava/lang/String;

    .line 114
    :cond_f9
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/api/services/plusi/model/DataPhoto;->timestampSeconds:Ljava/lang/Double;

    move-object/from16 v22, v0

    if-eqz v22, :cond_11b

    .line 115
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/api/services/plusi/model/DataPhoto;->timestampSeconds:Ljava/lang/Double;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    const-wide v24, 0x408f400000000000L

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-long v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    iput-wide v0, v11, Lcom/google/android/apps/plus/content/EsEventData$EventPhoto;->timestamp:J

    .line 117
    :cond_11b
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/api/services/plusi/model/DataPhoto;->totalComments:Ljava/lang/Integer;

    move-object/from16 v22, v0

    if-eqz v22, :cond_131

    .line 118
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/api/services/plusi/model/DataPhoto;->totalComments:Ljava/lang/Integer;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move/from16 v0, v22

    iput v0, v11, Lcom/google/android/apps/plus/content/EsEventData$EventPhoto;->totalComments:I

    .line 120
    :cond_131
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/api/services/plusi/model/DataPhoto;->original:Lcom/google/api/services/plusi/model/DataImage;

    move-object/from16 v22, v0

    if-eqz v22, :cond_18d

    .line 121
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/api/services/plusi/model/DataPhoto;->original:Lcom/google/api/services/plusi/model/DataImage;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/google/api/services/plusi/model/DataImage;->url:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iput-object v0, v11, Lcom/google/android/apps/plus/content/EsEventData$EventPhoto;->url:Ljava/lang/String;

    .line 122
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/api/services/plusi/model/DataPhoto;->original:Lcom/google/api/services/plusi/model/DataImage;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/google/api/services/plusi/model/DataImage;->width:Ljava/lang/Integer;

    move-object/from16 v22, v0

    if-eqz v22, :cond_16b

    .line 123
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/api/services/plusi/model/DataPhoto;->original:Lcom/google/api/services/plusi/model/DataImage;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/google/api/services/plusi/model/DataImage;->width:Ljava/lang/Integer;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move/from16 v0, v22

    iput v0, v11, Lcom/google/android/apps/plus/content/EsEventData$EventPhoto;->width:I

    .line 125
    :cond_16b
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/api/services/plusi/model/DataPhoto;->original:Lcom/google/api/services/plusi/model/DataImage;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/google/api/services/plusi/model/DataImage;->height:Ljava/lang/Integer;

    move-object/from16 v22, v0

    if-eqz v22, :cond_18d

    .line 126
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/api/services/plusi/model/DataPhoto;->original:Lcom/google/api/services/plusi/model/DataImage;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/google/api/services/plusi/model/DataImage;->height:Ljava/lang/Integer;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move/from16 v0, v22

    iput v0, v11, Lcom/google/android/apps/plus/content/EsEventData$EventPhoto;->height:I

    .line 129
    :cond_18d
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/api/services/plusi/model/DataPhoto;->viewerCanComment:Ljava/lang/Boolean;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1af

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/api/services/plusi/model/DataPhoto;->viewerCanComment:Ljava/lang/Boolean;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    if-eqz v22, :cond_1af

    .line 130
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/api/services/plusi/model/DataPhoto;->viewerCanComment:Ljava/lang/Boolean;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    move/from16 v0, v22

    iput-boolean v0, v11, Lcom/google/android/apps/plus/content/EsEventData$EventPhoto;->viewerCanComment:Z

    .line 132
    :cond_1af
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/api/services/plusi/model/DataPhoto;->viewerCanTag:Ljava/lang/Boolean;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1d1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/api/services/plusi/model/DataPhoto;->viewerCanTag:Ljava/lang/Boolean;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    if-eqz v22, :cond_1d1

    .line 133
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/api/services/plusi/model/DataPhoto;->viewerCanTag:Ljava/lang/Boolean;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    move/from16 v0, v22

    iput-boolean v0, v11, Lcom/google/android/apps/plus/content/EsEventData$EventPhoto;->viewerCanTag:Z

    .line 136
    :cond_1d1
    new-instance v12, Lcom/google/android/apps/plus/content/EsEventData$EventPhotoAlbum;

    invoke-direct {v12}, Lcom/google/android/apps/plus/content/EsEventData$EventPhotoAlbum;-><init>()V

    .line 137
    .local v12, eventPhotoAlbum:Lcom/google/android/apps/plus/content/EsEventData$EventPhotoAlbum;
    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/google/api/services/plusi/model/DataPhoto;->album:Lcom/google/api/services/plusi/model/DataAlbum;

    .line 138
    .local v6, album:Lcom/google/api/services/plusi/model/DataAlbum;
    iget-object v0, v6, Lcom/google/api/services/plusi/model/DataAlbum;->id:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iput-object v0, v12, Lcom/google/android/apps/plus/content/EsEventData$EventPhotoAlbum;->id:Ljava/lang/String;

    .line 139
    iget-object v0, v6, Lcom/google/api/services/plusi/model/DataAlbum;->owner:Lcom/google/api/services/plusi/model/DataUser;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/google/api/services/plusi/model/DataUser;->id:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iput-object v0, v12, Lcom/google/android/apps/plus/content/EsEventData$EventPhotoAlbum;->ownerId:Ljava/lang/String;

    .line 140
    iget-object v0, v6, Lcom/google/api/services/plusi/model/DataAlbum;->photoCount:Ljava/lang/Integer;

    move-object/from16 v22, v0

    if-eqz v22, :cond_202

    .line 141
    iget-object v0, v6, Lcom/google/api/services/plusi/model/DataAlbum;->photoCount:Ljava/lang/Integer;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move/from16 v0, v22

    iput v0, v12, Lcom/google/android/apps/plus/content/EsEventData$EventPhotoAlbum;->photoCount:I

    .line 143
    :cond_202
    iget-object v0, v6, Lcom/google/api/services/plusi/model/DataAlbum;->timestampSeconds:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_218

    .line 144
    iget-object v0, v6, Lcom/google/api/services/plusi/model/DataAlbum;->timestampSeconds:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    const-wide/16 v24, 0x3e8

    mul-long v22, v22, v24

    move-wide/from16 v0, v22

    iput-wide v0, v12, Lcom/google/android/apps/plus/content/EsEventData$EventPhotoAlbum;->timestamp:J

    .line 147
    :cond_218
    iget-object v0, v6, Lcom/google/api/services/plusi/model/DataAlbum;->title:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_226

    .line 148
    iget-object v0, v6, Lcom/google/api/services/plusi/model/DataAlbum;->title:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iput-object v0, v12, Lcom/google/android/apps/plus/content/EsEventData$EventPhotoAlbum;->title:Ljava/lang/String;

    .line 150
    :cond_226
    sget-object v22, Lcom/google/android/apps/plus/content/EsEventData;->EVENT_PHOTO_ALBUM_JSON:Lcom/google/android/apps/plus/json/EsJson;

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Lcom/google/android/apps/plus/json/EsJson;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v11, Lcom/google/android/apps/plus/content/EsEventData$EventPhoto;->albumData:Ljava/lang/String;

    .line 153
    new-instance v13, Lcom/google/android/apps/plus/content/EsEventData$EventPhotoPlusOne;

    invoke-direct {v13}, Lcom/google/android/apps/plus/content/EsEventData$EventPhotoPlusOne;-><init>()V

    .line 154
    .local v13, eventPhotoPlusOne:Lcom/google/android/apps/plus/content/EsEventData$EventPhotoPlusOne;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/api/services/plusi/model/DataPhoto;->plusOne:Lcom/google/api/services/plusi/model/DataPlusOne;

    move-object/from16 v19, v0

    .line 155
    .local v19, plusOne:Lcom/google/api/services/plusi/model/DataPlusOne;
    if-eqz v19, :cond_294

    .line 156
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/api/services/plusi/model/DataPlusOne;->id:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iput-object v0, v13, Lcom/google/android/apps/plus/content/EsEventData$EventPhotoPlusOne;->id:Ljava/lang/String;

    .line 157
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/api/services/plusi/model/DataPlusOne;->globalCount:Ljava/lang/Integer;

    move-object/from16 v22, v0

    if-eqz v22, :cond_27e

    .line 158
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/api/services/plusi/model/DataPhoto;->plusOne:Lcom/google/api/services/plusi/model/DataPlusOne;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/google/api/services/plusi/model/DataPlusOne;->globalCount:Ljava/lang/Integer;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    iput-wide v0, v11, Lcom/google/android/apps/plus/content/EsEventData$EventPhoto;->totalPlusOnes:J

    .line 159
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/api/services/plusi/model/DataPhoto;->plusOne:Lcom/google/api/services/plusi/model/DataPlusOne;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/google/api/services/plusi/model/DataPlusOne;->globalCount:Ljava/lang/Integer;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move/from16 v0, v22

    iput v0, v13, Lcom/google/android/apps/plus/content/EsEventData$EventPhotoPlusOne;->count:I

    .line 161
    :cond_27e
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/api/services/plusi/model/DataPlusOne;->isPlusonedByViewer:Ljava/lang/Boolean;

    move-object/from16 v22, v0

    if-eqz v22, :cond_294

    .line 162
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/api/services/plusi/model/DataPlusOne;->isPlusonedByViewer:Ljava/lang/Boolean;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    move/from16 v0, v22

    iput-boolean v0, v13, Lcom/google/android/apps/plus/content/EsEventData$EventPhotoPlusOne;->plusoneByMe:Z

    .line 165
    :cond_294
    sget-object v22, Lcom/google/android/apps/plus/content/EsEventData;->EVENT_PHOTO_PLUS_ONE_JSON:Lcom/google/android/apps/plus/json/EsJson;

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Lcom/google/android/apps/plus/json/EsJson;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v11, Lcom/google/android/apps/plus/content/EsEventData$EventPhoto;->plusoneData:Ljava/lang/String;

    .line 169
    iget-object v0, v5, Lcom/google/android/apps/plus/content/EsEventData$EventActivity;->ownerGaiaId:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_55

    iget-object v0, v11, Lcom/google/android/apps/plus/content/EsEventData$EventPhoto;->url:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_55

    .line 170
    sget-object v22, Lcom/google/android/apps/plus/content/EsEventData;->EVENT_PHOTO_JSON:Lcom/google/android/apps/plus/json/EsJson;

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Lcom/google/android/apps/plus/json/EsJson;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v5, Lcom/google/android/apps/plus/content/EsEventData$EventActivity;->data:Ljava/lang/String;

    .line 171
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_55

    .line 96
    .end local v6           #album:Lcom/google/api/services/plusi/model/DataAlbum;
    .end local v11           #eventPhoto:Lcom/google/android/apps/plus/content/EsEventData$EventPhoto;
    .end local v12           #eventPhotoAlbum:Lcom/google/android/apps/plus/content/EsEventData$EventPhotoAlbum;
    .end local v13           #eventPhotoPlusOne:Lcom/google/android/apps/plus/content/EsEventData$EventPhotoPlusOne;
    .end local v19           #plusOne:Lcom/google/api/services/plusi/model/DataPlusOne;
    :cond_2bd
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/api/services/plusi/model/DataPhoto;->timestampSeconds:Ljava/lang/Double;

    move-object/from16 v22, v0

    if-eqz v22, :cond_8e

    .line 97
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/api/services/plusi/model/DataPhoto;->timestampSeconds:Ljava/lang/Double;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    const-wide v24, 0x408f400000000000L

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-long v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    iput-wide v0, v5, Lcom/google/android/apps/plus/content/EsEventData$EventActivity;->timestamp:J

    goto/16 :goto_8e

    .line 178
    .end local v5           #activity:Lcom/google/android/apps/plus/content/EsEventData$EventActivity;
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v18           #photo:Lcom/google/api/services/plusi/model/DataPhoto;
    .end local v21           #segment:Lcom/google/api/services/plusi/model/PhotoCollectionSegment;
    :cond_2e1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/api/services/plusi/model/EventLandingResponse;->update:Lcom/google/api/services/plusi/model/Update;

    move-object/from16 v22, v0

    if-eqz v22, :cond_2fb

    .line 179
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/api/services/plusi/model/EventLandingResponse;->update:Lcom/google/api/services/plusi/model/Update;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/google/api/services/plusi/model/Update;->updateId:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/plus/api/EventLandingOperation;->mActivityId:Ljava/lang/String;

    .line 182
    :cond_2fb
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/api/services/plusi/model/EventLandingResponse;->update:Lcom/google/api/services/plusi/model/Update;

    move-object/from16 v22, v0

    if-eqz v22, :cond_3cb

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/api/services/plusi/model/EventLandingResponse;->update:Lcom/google/api/services/plusi/model/Update;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/google/api/services/plusi/model/Update;->comment:Ljava/util/List;

    move-object/from16 v22, v0

    if-eqz v22, :cond_3cb

    .line 183
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/api/services/plusi/model/EventLandingResponse;->update:Lcom/google/api/services/plusi/model/Update;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/google/api/services/plusi/model/Update;->comment:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :cond_321
    :goto_321
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_3cb

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/api/services/plusi/model/Comment;

    .line 184
    .local v7, comment:Lcom/google/api/services/plusi/model/Comment;
    new-instance v5, Lcom/google/android/apps/plus/content/EsEventData$EventActivity;

    invoke-direct {v5}, Lcom/google/android/apps/plus/content/EsEventData$EventActivity;-><init>()V

    .line 185
    .restart local v5       #activity:Lcom/google/android/apps/plus/content/EsEventData$EventActivity;
    const/16 v22, 0x5

    move/from16 v0, v22

    iput v0, v5, Lcom/google/android/apps/plus/content/EsEventData$EventActivity;->activityType:I

    .line 186
    iget-object v0, v7, Lcom/google/api/services/plusi/model/Comment;->timestamp:Ljava/lang/Long;

    move-object/from16 v22, v0

    if-eqz v22, :cond_34a

    .line 187
    iget-object v0, v7, Lcom/google/api/services/plusi/model/Comment;->timestamp:Ljava/lang/Long;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-wide/from16 v0, v22

    iput-wide v0, v5, Lcom/google/android/apps/plus/content/EsEventData$EventActivity;->timestamp:J

    .line 189
    :cond_34a
    iget-object v0, v7, Lcom/google/api/services/plusi/model/Comment;->obfuscatedId:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iput-object v0, v5, Lcom/google/android/apps/plus/content/EsEventData$EventActivity;->ownerGaiaId:Ljava/lang/String;

    .line 190
    iget-object v0, v7, Lcom/google/api/services/plusi/model/Comment;->authorName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iput-object v0, v5, Lcom/google/android/apps/plus/content/EsEventData$EventActivity;->ownerName:Ljava/lang/String;

    .line 192
    new-instance v8, Lcom/google/android/apps/plus/content/EsEventData$EventComment;

    invoke-direct {v8}, Lcom/google/android/apps/plus/content/EsEventData$EventComment;-><init>()V

    .line 193
    .local v8, eventComment:Lcom/google/android/apps/plus/content/EsEventData$EventComment;
    iget-object v0, v7, Lcom/google/api/services/plusi/model/Comment;->commentId:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iput-object v0, v8, Lcom/google/android/apps/plus/content/EsEventData$EventComment;->commentId:Ljava/lang/String;

    .line 194
    iget-object v0, v7, Lcom/google/api/services/plusi/model/Comment;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iput-object v0, v8, Lcom/google/android/apps/plus/content/EsEventData$EventComment;->text:Ljava/lang/String;

    .line 195
    iget-object v0, v7, Lcom/google/api/services/plusi/model/Comment;->isOwnedByViewer:Ljava/lang/Boolean;

    move-object/from16 v22, v0

    if-eqz v22, :cond_381

    .line 196
    iget-object v0, v7, Lcom/google/api/services/plusi/model/Comment;->isOwnedByViewer:Ljava/lang/Boolean;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    move/from16 v0, v22

    iput-boolean v0, v8, Lcom/google/android/apps/plus/content/EsEventData$EventComment;->ownedByViewer:Z

    .line 198
    :cond_381
    iget-object v0, v7, Lcom/google/api/services/plusi/model/Comment;->plusone:Lcom/google/api/services/plusi/model/DataPlusOne;

    move-object/from16 v22, v0

    if-eqz v22, :cond_3aa

    iget-object v0, v7, Lcom/google/api/services/plusi/model/Comment;->plusone:Lcom/google/api/services/plusi/model/DataPlusOne;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/google/api/services/plusi/model/DataPlusOne;->globalCount:Ljava/lang/Integer;

    move-object/from16 v22, v0

    if-eqz v22, :cond_3aa

    .line 199
    iget-object v0, v7, Lcom/google/api/services/plusi/model/Comment;->plusone:Lcom/google/api/services/plusi/model/DataPlusOne;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/google/api/services/plusi/model/DataPlusOne;->globalCount:Ljava/lang/Integer;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    iput-wide v0, v8, Lcom/google/android/apps/plus/content/EsEventData$EventComment;->totalPlusOnes:J

    .line 203
    :cond_3aa
    iget-object v0, v5, Lcom/google/android/apps/plus/content/EsEventData$EventActivity;->ownerGaiaId:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_321

    iget-object v0, v8, Lcom/google/android/apps/plus/content/EsEventData$EventComment;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_321

    .line 204
    sget-object v22, Lcom/google/android/apps/plus/content/EsEventData;->EVENT_COMMENT_JSON:Lcom/google/android/apps/plus/json/EsJson;

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Lcom/google/android/apps/plus/json/EsJson;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v5, Lcom/google/android/apps/plus/content/EsEventData$EventActivity;->data:Ljava/lang/String;

    .line 205
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_321

    .line 210
    .end local v5           #activity:Lcom/google/android/apps/plus/content/EsEventData$EventActivity;
    .end local v7           #comment:Lcom/google/api/services/plusi/model/Comment;
    .end local v8           #eventComment:Lcom/google/android/apps/plus/content/EsEventData$EventComment;
    .end local v15           #i$:Ljava/util/Iterator;
    :cond_3cb
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/api/services/plusi/model/EventLandingResponse;->frames:Ljava/util/List;

    move-object/from16 v22, v0

    if-eqz v22, :cond_4d9

    .line 211
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/api/services/plusi/model/EventLandingResponse;->frames:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_3dd
    :goto_3dd
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_4d9

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/api/services/plusi/model/CoalescedFrame;

    .line 212
    .local v14, frame:Lcom/google/api/services/plusi/model/CoalescedFrame;
    new-instance v5, Lcom/google/android/apps/plus/content/EsEventData$EventActivity;

    invoke-direct {v5}, Lcom/google/android/apps/plus/content/EsEventData$EventActivity;-><init>()V

    .line 213
    .restart local v5       #activity:Lcom/google/android/apps/plus/content/EsEventData$EventActivity;
    const-string v22, "INVITED"

    iget-object v0, v14, Lcom/google/api/services/plusi/model/CoalescedFrame;->verbType:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_465

    .line 214
    const/16 v22, 0x2

    move/from16 v0, v22

    iput v0, v5, Lcom/google/android/apps/plus/content/EsEventData$EventActivity;->activityType:I

    .line 227
    :goto_400
    iget-object v0, v14, Lcom/google/api/services/plusi/model/CoalescedFrame;->lastTimeMillis:Ljava/lang/Long;

    move-object/from16 v22, v0

    if-eqz v22, :cond_412

    .line 228
    iget-object v0, v14, Lcom/google/api/services/plusi/model/CoalescedFrame;->lastTimeMillis:Ljava/lang/Long;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-wide/from16 v0, v22

    iput-wide v0, v5, Lcom/google/android/apps/plus/content/EsEventData$EventActivity;->timestamp:J

    .line 231
    :cond_412
    new-instance v9, Lcom/google/android/apps/plus/content/EsEventData$EventCoalescedFrame;

    invoke-direct {v9}, Lcom/google/android/apps/plus/content/EsEventData$EventCoalescedFrame;-><init>()V

    .line 232
    .local v9, eventFrame:Lcom/google/android/apps/plus/content/EsEventData$EventCoalescedFrame;
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v22

    iput-object v0, v9, Lcom/google/android/apps/plus/content/EsEventData$EventCoalescedFrame;->people:Ljava/util/List;

    .line 234
    iget-object v0, v14, Lcom/google/api/services/plusi/model/CoalescedFrame;->person:Ljava/util/List;

    move-object/from16 v22, v0

    if-eqz v22, :cond_4be

    .line 235
    iget-object v0, v14, Lcom/google/api/services/plusi/model/CoalescedFrame;->person:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16       #i$:Ljava/util/Iterator;
    :cond_42e
    :goto_42e
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_4be

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/google/api/services/plusi/model/EmbedsPerson;

    .line 236
    .local v17, person:Lcom/google/api/services/plusi/model/EmbedsPerson;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/api/services/plusi/model/EmbedsPerson;->ownerObfuscatedId:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_42e

    .line 237
    new-instance v10, Lcom/google/android/apps/plus/content/EsEventData$EventPerson;

    invoke-direct {v10}, Lcom/google/android/apps/plus/content/EsEventData$EventPerson;-><init>()V

    .line 238
    .local v10, eventPerson:Lcom/google/android/apps/plus/content/EsEventData$EventPerson;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/api/services/plusi/model/EmbedsPerson;->ownerObfuscatedId:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iput-object v0, v10, Lcom/google/android/apps/plus/content/EsEventData$EventPerson;->gaiaId:Ljava/lang/String;

    .line 239
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/api/services/plusi/model/EmbedsPerson;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iput-object v0, v10, Lcom/google/android/apps/plus/content/EsEventData$EventPerson;->name:Ljava/lang/String;

    .line 240
    iget-object v0, v9, Lcom/google/android/apps/plus/content/EsEventData$EventCoalescedFrame;->people:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_42e

    .line 215
    .end local v9           #eventFrame:Lcom/google/android/apps/plus/content/EsEventData$EventCoalescedFrame;
    .end local v10           #eventPerson:Lcom/google/android/apps/plus/content/EsEventData$EventPerson;
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v17           #person:Lcom/google/api/services/plusi/model/EmbedsPerson;
    :cond_465
    const-string v22, "RSVP_NO"

    iget-object v0, v14, Lcom/google/api/services/plusi/model/CoalescedFrame;->verbType:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_478

    .line 216
    const/16 v22, 0x3

    move/from16 v0, v22

    iput v0, v5, Lcom/google/android/apps/plus/content/EsEventData$EventActivity;->activityType:I

    goto :goto_400

    .line 217
    :cond_478
    const-string v22, "RSVP_YES"

    iget-object v0, v14, Lcom/google/api/services/plusi/model/CoalescedFrame;->verbType:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_48c

    .line 218
    const/16 v22, 0x4

    move/from16 v0, v22

    iput v0, v5, Lcom/google/android/apps/plus/content/EsEventData$EventActivity;->activityType:I

    goto/16 :goto_400

    .line 219
    :cond_48c
    const-string v22, "CHECKIN"

    iget-object v0, v14, Lcom/google/api/services/plusi/model/CoalescedFrame;->verbType:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4a0

    .line 220
    const/16 v22, 0x1

    move/from16 v0, v22

    iput v0, v5, Lcom/google/android/apps/plus/content/EsEventData$EventActivity;->activityType:I

    goto/16 :goto_400

    .line 222
    :cond_4a0
    sget-object v22, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "NOT HANDLED UPDATE:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-object v0, v14, Lcom/google/api/services/plusi/model/CoalescedFrame;->verbType:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_3dd

    .line 246
    .restart local v9       #eventFrame:Lcom/google/android/apps/plus/content/EsEventData$EventCoalescedFrame;
    :cond_4be
    iget-object v0, v9, Lcom/google/android/apps/plus/content/EsEventData$EventCoalescedFrame;->people:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_3dd

    .line 247
    sget-object v22, Lcom/google/android/apps/plus/content/EsEventData;->EVENT_COALESCED_FRAME_JSON:Lcom/google/android/apps/plus/json/EsJson;

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/google/android/apps/plus/json/EsJson;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v5, Lcom/google/android/apps/plus/content/EsEventData$EventActivity;->data:Ljava/lang/String;

    .line 248
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3dd

    .line 253
    .end local v5           #activity:Lcom/google/android/apps/plus/content/EsEventData$EventActivity;
    .end local v9           #eventFrame:Lcom/google/android/apps/plus/content/EsEventData$EventCoalescedFrame;
    .end local v14           #frame:Lcom/google/api/services/plusi/model/CoalescedFrame;
    :cond_4d9
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/api/services/plusi/model/EventLandingResponse;->pollingToken:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 254
    .local v20, pollingToken:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/api/EventLandingOperation;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/api/EventLandingOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/api/EventLandingOperation;->mEventId:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/api/EventLandingOperation;->mActivityId:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/api/EventLandingOperation;->mPlusEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    move-object/from16 v26, v0

    invoke-static/range {v22 .. v26}, Lcom/google/android/apps/plus/content/EsEventData;->insertEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/plusi/model/PlusEvent;)V

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/api/EventLandingOperation;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/api/EventLandingOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/api/EventLandingOperation;->mEventId:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v20

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/content/EsEventData;->insertEventActivities(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 256
    return-void
.end method

.method protected onHttpOperationComplete(ILjava/lang/String;Ljava/lang/Exception;)V
    .registers 7
    .parameter "errorCode"
    .parameter "reasonPhrase"
    .parameter "ex"

    .prologue
    .line 263
    const/16 v0, 0x194

    if-ne p1, v0, :cond_d

    .line 264
    iget-object v0, p0, Lcom/google/android/apps/plus/api/EventLandingOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/EventLandingOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/api/EventLandingOperation;->mEventId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/content/EsEventData;->deleteEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    .line 266
    :cond_d
    return-void
.end method

.method protected bridge synthetic populateRequest(Lcom/google/android/apps/plus/json/GenericJson;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    check-cast p1, Lcom/google/api/services/plusi/model/EventLandingRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/api/EventLandingOperation;->populateRequest(Lcom/google/api/services/plusi/model/EventLandingRequest;)V

    return-void
.end method

.method protected populateRequest(Lcom/google/api/services/plusi/model/EventLandingRequest;)V
    .registers 3
    .parameter "request"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/apps/plus/api/EventLandingOperation;->mEventId:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/api/services/plusi/model/EventLandingRequest;->eventId:Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lcom/google/android/apps/plus/api/EventLandingOperation;->mOwnerId:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/api/services/plusi/model/EventLandingRequest;->posterId:Ljava/lang/String;

    .line 75
    return-void
.end method
