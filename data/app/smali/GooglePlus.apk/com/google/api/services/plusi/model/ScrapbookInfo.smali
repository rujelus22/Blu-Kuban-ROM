.class public final Lcom/google/api/services/plusi/model/ScrapbookInfo;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "ScrapbookInfo.java"


# instance fields
.field public fullBleedPhoto:Lcom/google/api/services/plusi/model/ScrapbookInfoFullBleedPhoto;

.field public fullBleedPhotoId:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public layout:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
