.class public final Lcom/google/api/services/plus/model/CommentObject;
.super Lcom/google/api/client/json/GenericJson;
.source "CommentObject.java"


# instance fields
.field private content:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "content"
    .end annotation
.end field

.field private objectType:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "objectType"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method
