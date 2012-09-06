.class public Lcom/google/android/apps/plus/content/EsEventData$EventPhoto;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "EsEventData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/content/EsEventData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventPhoto"
.end annotation


# instance fields
.field public albumData:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public height:I

.field public id:Ljava/lang/String;

.field public ownerId:Ljava/lang/String;

.field public plusoneData:Ljava/lang/String;

.field public timestamp:J

.field public title:Ljava/lang/String;

.field public totalComments:I

.field public totalPlusOnes:J

.field public url:Ljava/lang/String;

.field public viewerCanComment:Z

.field public viewerCanTag:Z

.field public width:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
