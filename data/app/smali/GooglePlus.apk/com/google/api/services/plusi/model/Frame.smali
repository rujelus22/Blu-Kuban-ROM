.class public final Lcom/google/api/services/plusi/model/Frame;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "Frame.java"


# instance fields
.field public domain:Ljava/lang/String;

.field public embed:Lcom/google/api/services/plusi/model/EmbedClientItem;

.field public embedDupes:Lcom/google/api/services/plusi/model/FrameEmbedDuplicateFields;

.field public iconUrl:Ljava/lang/String;

.field public isPrivate:Ljava/lang/Boolean;

.field public source:Lcom/google/api/services/plusi/model/Source;

.field public timestampMsec:Ljava/lang/Long;

.field public userText:Ljava/lang/String;

.field public verb:Lcom/google/api/services/plusi/model/Verb;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
