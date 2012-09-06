.class public Lcom/google/android/apps/plus/content/EsEventData$EventPhotoPlusOne;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "EsEventData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/content/EsEventData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventPhotoPlusOne"
.end annotation


# instance fields
.field public count:I

.field public id:Ljava/lang/String;

.field public plusoneByMe:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
