.class public final Lcom/google/api/services/pos/model/Plusones$Metadata;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "Plusones.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/pos/model/Plusones;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Metadata"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts;
    }
.end annotation


# instance fields
.field public adgroupId:Ljava/lang/Long;

.field public creativeId:Ljava/lang/Long;

.field public globalCounts:Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts;

.field public title:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    .line 118
    return-void
.end method
