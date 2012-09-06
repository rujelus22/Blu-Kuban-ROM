.class public final Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts$Person;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "Plusones.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Person"
.end annotation


# instance fields
.field public displayName:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public profileUrl:Ljava/lang/String;

.field public thumbnailUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
