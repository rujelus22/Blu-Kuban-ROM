.class public final Lcom/google/api/services/plusi/model/ListingAttributionProto;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "ListingAttributionProto.java"


# instance fields
.field public attribution:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/LinkFragment;",
            ">;"
        }
    .end annotation
.end field

.field public attributionPosition:Ljava/lang/String;

.field public attributionStyle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 50
    const-class v0, Lcom/google/api/services/plusi/model/LinkFragment;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
