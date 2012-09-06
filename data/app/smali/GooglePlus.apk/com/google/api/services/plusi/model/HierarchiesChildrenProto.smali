.class public final Lcom/google/api/services/plusi/model/HierarchiesChildrenProto;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "HierarchiesChildrenProto.java"


# instance fields
.field public child:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/HierarchiesChildrenProtoChild;",
            ">;"
        }
    .end annotation
.end field

.field public columnRange:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public moreLink:Lcom/google/api/services/plusi/model/PlacePageLink;

.field public storyTitle:Lcom/google/api/services/plusi/model/StoryTitle;

.field public totalChildren:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 77
    const-class v0, Lcom/google/api/services/plusi/model/HierarchiesChildrenProtoChild;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 78
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
