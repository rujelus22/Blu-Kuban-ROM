.class public final Lcom/google/api/services/plusi/model/Justification;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "Justification.java"


# instance fields
.field public fragment:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/LinkFragment;",
            ">;"
        }
    .end annotation
.end field

.field public fullText:Lcom/google/api/services/plusi/model/LinkFragment;

.field public photoLink:Lcom/google/api/services/plusi/model/PlacePageLink;

.field public photoUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 46
    const-class v0, Lcom/google/api/services/plusi/model/LinkFragment;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
