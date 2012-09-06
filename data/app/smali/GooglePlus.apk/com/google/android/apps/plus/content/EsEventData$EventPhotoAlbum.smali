.class public Lcom/google/android/apps/plus/content/EsEventData$EventPhotoAlbum;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "EsEventData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/content/EsEventData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventPhotoAlbum"
.end annotation


# instance fields
.field public id:Ljava/lang/String;

.field public ownerId:Ljava/lang/String;

.field public photoCount:I

.field public timestamp:J

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 215
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
