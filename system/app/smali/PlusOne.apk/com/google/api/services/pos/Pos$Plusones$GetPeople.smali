.class public Lcom/google/api/services/pos/Pos$Plusones$GetPeople;
.super Lcom/google/api/services/pos/PosRequest;
.source "Pos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/pos/Pos$Plusones;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetPeople"
.end annotation


# instance fields
.field private continuationToken:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "continuationToken"
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "id"
    .end annotation
.end field

.field private maxPeople:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "max_people"
    .end annotation
.end field

.field private nolog:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "nolog"
    .end annotation
.end field

.field private source:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "source"
    .end annotation
.end field
