.class public final Lcom/google/api/services/plusi/model/ExampleObject;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "ExampleObject.java"


# instance fields
.field public about:Lcom/google/api/services/plusi/model/ExampleObject;

.field public additionalName:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public attendee:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/ExampleObjectAttendee;",
            ">;"
        }
    .end annotation
.end field

.field public author:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/ExampleObject;",
            ">;"
        }
    .end annotation
.end field

.field public contributor:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/EmbedClientItem;",
            ">;"
        }
    .end annotation
.end field

.field public description:Ljava/lang/String;

.field public forClientOnly:Ljava/lang/String;

.field public forOwnerOnly:Ljava/lang/String;

.field public imageUrl:Ljava/lang/String;

.field public itemExtensionField:Lcom/google/api/services/plusi/model/ExampleObject;

.field public itemRepeatedExtensionField:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/ExampleObject;",
            ">;"
        }
    .end annotation
.end field

.field public location:Lcom/google/api/services/plusi/model/Place;

.field public name:Ljava/lang/String;

.field public stringExtensionField:Ljava/lang/String;

.field public stringRepeatedExtensionField:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public thumbnail:Lcom/google/api/services/plusi/model/EmbedClientItem;

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 58
    const-class v0, Lcom/google/api/services/plusi/model/ExampleObject;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 95
    const-class v0, Lcom/google/api/services/plusi/model/ExampleObject;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 108
    const-class v0, Lcom/google/api/services/plusi/model/ExampleObjectAttendee;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 157
    const-class v0, Lcom/google/api/services/plusi/model/EmbedClientItem;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 158
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
