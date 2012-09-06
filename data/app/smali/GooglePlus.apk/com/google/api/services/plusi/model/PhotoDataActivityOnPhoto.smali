.class public final Lcom/google/api/services/plusi/model/PhotoDataActivityOnPhoto;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "PhotoDataActivityOnPhoto.java"


# instance fields
.field public album:Lcom/google/api/services/plusi/model/PhotoDataAlbum;

.field public commenter:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/CommonPerson;",
            ">;"
        }
    .end annotation
.end field

.field public ownerperson:Lcom/google/api/services/plusi/model/CommonPerson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    const-class v0, Lcom/google/api/services/plusi/model/CommonPerson;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
