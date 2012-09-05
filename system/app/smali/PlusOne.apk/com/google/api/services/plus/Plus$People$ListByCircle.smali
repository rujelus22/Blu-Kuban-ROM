.class public Lcom/google/api/services/plus/Plus$People$ListByCircle;
.super Lcom/google/api/services/plus/PlusRequest;
.source "Plus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/plus/Plus$People;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListByCircle"
.end annotation


# instance fields
.field private circleId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "circleId"
    .end annotation
.end field

.field private everything:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "everything"
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
