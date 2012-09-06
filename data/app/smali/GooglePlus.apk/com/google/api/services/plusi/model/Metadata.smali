.class public final Lcom/google/api/services/plusi/model/Metadata;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "Metadata.java"


# instance fields
.field public aclModelJson:Ljava/lang/String;

.field public editable:Ljava/lang/Boolean;

.field public focusGroup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public publicAcl:Ljava/lang/Boolean;

.field public scope:Ljava/lang/String;

.field public useDefaultAcl:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
