.class public Lcom/google/android/apps/pos/network/PosClient$PosRequestJson$Params;
.super Ljava/lang/Object;
.source "PosClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/pos/network/PosClient$PosRequestJson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Params"
.end annotation


# instance fields
.field protected container:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field protected source:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 622
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 627
    const-string v0, "native:android_app"

    iput-object v0, p0, Lcom/google/android/apps/pos/network/PosClient$PosRequestJson$Params;->source:Ljava/lang/String;

    return-void
.end method
