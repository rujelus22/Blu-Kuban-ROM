.class public Lcom/google/api/services/plus/Plus$People$List;
.super Lcom/google/api/services/plus/PlusRequest;
.source "Plus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/plus/Plus$People;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "List"
.end annotation


# instance fields
.field private collection:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "collection"
    .end annotation
.end field

.field private everything:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "everything"
    .end annotation
.end field

.field private hasApp:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "hasApp"
    .end annotation
.end field

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

.field private userId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "userId"
    .end annotation
.end field
