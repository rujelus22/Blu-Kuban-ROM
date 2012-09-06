.class public Lcom/google/android/apps/plus/content/EsEventData$EventActivity;
.super Ljava/lang/Object;
.source "EsEventData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/content/EsEventData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventActivity"
.end annotation


# instance fields
.field public activityType:I

.field public data:Ljava/lang/String;

.field public ownerGaiaId:Ljava/lang/String;

.field public ownerName:Ljava/lang/String;

.field public timestamp:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
