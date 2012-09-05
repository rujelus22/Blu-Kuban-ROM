.class public Lcom/google/api/services/pos/Pos$Plusones$ConfirmImplicitConnection;
.super Lcom/google/api/services/pos/PosRequest;
.source "Pos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/pos/Pos$Plusones;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConfirmImplicitConnection"
.end annotation


# instance fields
.field private addToProfile:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "addToProfile"
    .end annotation
.end field

.field private confirm:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "confirm"
    .end annotation
.end field

.field private ei:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "ei"
    .end annotation
.end field

.field private optOut:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "optOut"
    .end annotation
.end field

.field private profileUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "profileUrl"
    .end annotation
.end field

.field private profileUsername:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "profileUsername"
    .end annotation
.end field

.field private undoToken:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "undoToken"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private vi:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "vi"
    .end annotation
.end field
