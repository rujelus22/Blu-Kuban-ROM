.class Lcom/google/android/apps/plus/network/ApiaryOperation$PlusOperation$PlusInitializer;
.super Ljava/lang/Object;
.source "ApiaryOperation.java"

# interfaces
.implements Lcom/google/api/client/http/json/JsonHttpRequestInitializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/network/ApiaryOperation$PlusOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlusInitializer"
.end annotation


# instance fields
.field private final mApiKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "apiKey"

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    if-nez p1, :cond_b

    .line 184
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 186
    :cond_b
    iput-object p1, p0, Lcom/google/android/apps/plus/network/ApiaryOperation$PlusOperation$PlusInitializer;->mApiKey:Ljava/lang/String;

    .line 187
    return-void
.end method


# virtual methods
.method public initialize(Lcom/google/api/client/http/json/JsonHttpRequest;)V
    .registers 4
    .parameter "request"

    .prologue
    .line 191
    move-object v0, p1

    check-cast v0, Lcom/google/api/services/plus/PlusRequest;

    .line 192
    .local v0, plus:Lcom/google/api/services/plus/PlusRequest;
    iget-object v1, p0, Lcom/google/android/apps/plus/network/ApiaryOperation$PlusOperation$PlusInitializer;->mApiKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/api/services/plus/PlusRequest;->setKey(Ljava/lang/String;)Lcom/google/api/services/plus/PlusRequest;

    .line 193
    return-void
.end method
