.class Lcom/google/android/apps/plus/network/ApiaryOperation$PosOperation$PosInitializer;
.super Ljava/lang/Object;
.source "ApiaryOperation.java"

# interfaces
.implements Lcom/google/api/client/http/json/JsonHttpRequestInitializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/network/ApiaryOperation$PosOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PosInitializer"
.end annotation


# instance fields
.field private final mApiKey:Ljava/lang/String;

.field private final mContainer:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "apiKey"
    .parameter "container"

    .prologue
    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    if-nez p1, :cond_b

    .line 259
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 261
    :cond_b
    if-nez p2, :cond_13

    .line 262
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 264
    :cond_13
    iput-object p1, p0, Lcom/google/android/apps/plus/network/ApiaryOperation$PosOperation$PosInitializer;->mApiKey:Ljava/lang/String;

    .line 265
    iput-object p2, p0, Lcom/google/android/apps/plus/network/ApiaryOperation$PosOperation$PosInitializer;->mContainer:Ljava/lang/String;

    .line 266
    return-void
.end method


# virtual methods
.method public initialize(Lcom/google/api/client/http/json/JsonHttpRequest;)V
    .registers 4
    .parameter "request"

    .prologue
    .line 270
    move-object v0, p1

    check-cast v0, Lcom/google/api/services/pos/PosRequest;

    iget-object v1, p0, Lcom/google/android/apps/plus/network/ApiaryOperation$PosOperation$PosInitializer;->mApiKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/api/services/pos/PosRequest;->setKey(Ljava/lang/String;)Lcom/google/api/services/pos/PosRequest;

    .line 273
    instance-of v0, p1, Lcom/google/api/services/pos/Pos$Plusones$Get;

    if-eqz v0, :cond_23

    .line 274
    check-cast p1, Lcom/google/api/services/pos/Pos$Plusones$Get;

    .end local p1
    iget-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryOperation$PosOperation$PosInitializer;->mContainer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/api/services/pos/Pos$Plusones$Get;->setContainer(Ljava/lang/String;)Lcom/google/api/services/pos/Pos$Plusones$Get;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/services/pos/Pos$Plusones$Get;->setNolog(Ljava/lang/Boolean;)Lcom/google/api/services/pos/Pos$Plusones$Get;

    move-result-object v0

    const-string v1, "native:android_app"

    invoke-virtual {v0, v1}, Lcom/google/api/services/pos/Pos$Plusones$Get;->setSource(Ljava/lang/String;)Lcom/google/api/services/pos/Pos$Plusones$Get;

    .line 287
    :cond_22
    :goto_22
    return-void

    .line 278
    .restart local p1
    :cond_23
    instance-of v0, p1, Lcom/google/api/services/pos/Pos$Plusones$Delete;

    if-eqz v0, :cond_35

    .line 279
    check-cast p1, Lcom/google/api/services/pos/Pos$Plusones$Delete;

    .end local p1
    iget-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryOperation$PosOperation$PosInitializer;->mContainer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/api/services/pos/Pos$Plusones$Delete;->setContainer(Ljava/lang/String;)Lcom/google/api/services/pos/Pos$Plusones$Delete;

    move-result-object v0

    const-string v1, "native:android_app"

    invoke-virtual {v0, v1}, Lcom/google/api/services/pos/Pos$Plusones$Delete;->setSource(Ljava/lang/String;)Lcom/google/api/services/pos/Pos$Plusones$Delete;

    goto :goto_22

    .line 282
    .restart local p1
    :cond_35
    instance-of v0, p1, Lcom/google/api/services/pos/Pos$Plusones$Insert;

    if-eqz v0, :cond_22

    .line 283
    check-cast p1, Lcom/google/api/services/pos/Pos$Plusones$Insert;

    .end local p1
    iget-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryOperation$PosOperation$PosInitializer;->mContainer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/api/services/pos/Pos$Plusones$Insert;->setContainer(Ljava/lang/String;)Lcom/google/api/services/pos/Pos$Plusones$Insert;

    move-result-object v0

    const-string v1, "native:android_app"

    invoke-virtual {v0, v1}, Lcom/google/api/services/pos/Pos$Plusones$Insert;->setSource(Ljava/lang/String;)Lcom/google/api/services/pos/Pos$Plusones$Insert;

    goto :goto_22
.end method
