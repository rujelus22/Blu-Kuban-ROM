.class public final Lcom/google/api/services/plus/model/ActivityObjectAttachmentsCategories;
.super Lcom/google/api/client/json/GenericJson;
.source "ActivityObjectAttachmentsCategories.java"


# instance fields
.field private label:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "label"
    .end annotation
.end field

.field private schema:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "schema"
    .end annotation
.end field

.field private term:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "term"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/api/services/plus/model/ActivityObjectAttachmentsCategories;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getTerm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/api/services/plus/model/ActivityObjectAttachmentsCategories;->term:Ljava/lang/String;

    return-object v0
.end method
