.class public Lcom/google/android/apps/plus/content/EsEventData$EventComment;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "EsEventData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/content/EsEventData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventComment"
.end annotation


# instance fields
.field public commentId:Ljava/lang/String;

.field public ownedByViewer:Z

.field public text:Ljava/lang/String;

.field public totalPlusOnes:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
