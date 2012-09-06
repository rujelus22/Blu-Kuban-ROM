.class public final Lcom/google/api/services/plusi/model/WebReviewProto;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "WebReviewProto.java"


# instance fields
.field public author:Lcom/google/api/services/plusi/model/AuthorProto;

.field public crowded:Ljava/lang/Boolean;

.field public date:Ljava/lang/String;

.field public fullReviewLink:Lcom/google/api/services/plusi/model/PlacePageLink;

.field public reviewNum:Ljava/lang/Boolean;

.field public snippet:Ljava/lang/String;

.field public sourceName:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
