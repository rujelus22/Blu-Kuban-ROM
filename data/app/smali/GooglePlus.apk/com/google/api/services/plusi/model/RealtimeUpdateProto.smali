.class public final Lcom/google/api/services/plusi/model/RealtimeUpdateProto;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "RealtimeUpdateProto.java"


# instance fields
.field public attribution:Ljava/lang/String;

.field public author:Lcom/google/api/services/plusi/model/AuthorProto;

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

.field public localizedTime:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    const-class v0, Lcom/google/api/services/plusi/model/LinkFragment;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
