.class public final Lcom/google/api/services/plusi/model/ProfilesLink;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "ProfilesLink.java"


# instance fields
.field public faviconImgUrl:Ljava/lang/String;

.field public isVerified:Ljava/lang/Boolean;

.field public label:Ljava/lang/String;

.field public metadata:Lcom/google/api/services/plusi/model/Metadata;

.field public normalizedUri:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public rel:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public verification:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/Verification;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    const-class v0, Lcom/google/api/services/plusi/model/Verification;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 57
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
