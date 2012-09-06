.class public final Lcom/google/api/services/pos/model/Plusones;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "Plusones.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/pos/model/Plusones$Metadata;
    }
.end annotation


# instance fields
.field public abtk:Ljava/lang/String;

.field public aclJson:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public isSetByViewer:Ljava/lang/Boolean;

.field public kind:Ljava/lang/String;

.field public metadata:Lcom/google/api/services/pos/model/Plusones$Metadata;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    .line 78
    return-void
.end method
