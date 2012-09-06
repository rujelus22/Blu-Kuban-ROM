.class public final Lcom/google/api/services/plusi/model/Invitee;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "Invitee.java"


# instance fields
.field public album:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/PlusEventAlbum;",
            ">;"
        }
    .end annotation
.end field

.field public canUploadPhotos:Ljava/lang/Boolean;

.field public invitee:Lcom/google/api/services/plusi/model/EmbedsPerson;

.field public inviter:Lcom/google/api/services/plusi/model/EmbedsPerson;

.field public isAdminBlacklisted:Ljava/lang/Boolean;

.field public numAdditionalGuests:Ljava/lang/Integer;

.field public rsvpType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    const-class v0, Lcom/google/api/services/plusi/model/PlusEventAlbum;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
