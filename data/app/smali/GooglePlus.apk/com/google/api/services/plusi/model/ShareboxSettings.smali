.class public final Lcom/google/api/services/plusi/model/ShareboxSettings;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "ShareboxSettings.java"


# instance fields
.field public defaultAcl:Ljava/lang/String;

.field public defaultAcls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/ShareboxSettingsDefaultAcl;",
            ">;"
        }
    .end annotation
.end field

.field public isDriveUser:Ljava/lang/Boolean;

.field public lastLocationDisplayType:Ljava/lang/String;

.field public recentAcls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public seenDisableCommentsOob:Ljava/lang/Boolean;

.field public seenEmailConfirmationOob:Ljava/lang/Boolean;

.field public seenFirstPostOob:Ljava/lang/Boolean;

.field public seenIncludeLocation:Ljava/lang/Boolean;

.field public seenLockPostOob:Ljava/lang/Boolean;

.field public seenRestrictOob:Ljava/lang/Boolean;

.field public sendImplicitInvitesDefault:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 122
    const-class v0, Lcom/google/api/services/plusi/model/ShareboxSettingsDefaultAcl;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 123
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
