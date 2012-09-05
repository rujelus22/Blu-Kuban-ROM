.class public abstract Lcom/google/android/apps/books/api/VerifiableResponse;
.super Ljava/lang/Object;
.source "VerifiableResponse.java"


# instance fields
.field public nonce:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field public signature:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field public source:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static emptyStringIfNull(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    .parameter "string"

    .prologue
    .line 44
    if-nez p0, :cond_4

    .line 45
    const-string p0, ""

    .line 47
    .end local p0
    :cond_4
    return-object p0
.end method


# virtual methods
.method abstract getConcatenatedData()Ljava/lang/String;
.end method
