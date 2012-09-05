.class public Lcom/google/api/services/plus/Plus$People$Search;
.super Lcom/google/api/services/plus/PlusRequest;
.source "Plus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/plus/Plus$People;
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
