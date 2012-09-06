.class public final Lcom/google/api/services/plusi/model/PlusOnePostData;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "PlusOnePostData.java"


# instance fields
.field public author:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/CommonPerson;",
            ">;"
        }
    .end annotation
.end field

.field public faviconUrl:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public target:Lcom/google/api/services/plusi/model/ItemScope;

.field public timestampUsec:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 74
    const-class v0, Lcom/google/api/services/plusi/model/CommonPerson;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 75
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
