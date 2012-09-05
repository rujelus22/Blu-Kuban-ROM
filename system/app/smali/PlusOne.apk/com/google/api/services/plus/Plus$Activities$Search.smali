.class public Lcom/google/api/services/plus/Plus$Activities$Search;
.super Lcom/google/api/services/plus/PlusRequest;
.source "Plus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/plus/Plus$Activities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Search"
.end annotation


# instance fields
.field private maxResults:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "maxResults"
    .end annotation
.end field

.field private orderBy:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "orderBy"
    .end annotation
.end field

.field private pageToken:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "pageToken"
    .end annotation
.end field

.field private query:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "query"
    .end annotation
.end field
