.class public Lcom/samsung/upnp/media/server/object/search/AllSearchCap;
.super Ljava/lang/Object;
.source "AllSearchCap.java"

# interfaces
.implements Lcom/samsung/upnp/media/server/object/SearchCap;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/samsung/upnp/media/server/object/SearchCriteria;Lcom/samsung/upnp/media/server/object/ContentNode;)Z
    .registers 4
    .parameter "searchCri"
    .parameter "conNode"

    .prologue
    .line 11
    const/4 v0, 0x1

    return v0
.end method

.method public getPropertyName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 16
    const-string v0, "*"

    return-object v0
.end method
