.class public final Lcom/google/api/services/plusi/model/ItemScopeExtension;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "ItemScopeExtension.java"


# instance fields
.field public itemValue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/ItemScope;",
            ">;"
        }
    .end annotation
.end field

.field public key:Ljava/lang/String;

.field public strValue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 52
    const-class v0, Lcom/google/api/services/plusi/model/ItemScope;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
