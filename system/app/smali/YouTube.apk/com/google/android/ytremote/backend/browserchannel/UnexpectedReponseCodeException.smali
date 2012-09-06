.class Lcom/google/android/ytremote/backend/browserchannel/UnexpectedReponseCodeException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field private final code:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 17
    iput p1, p0, Lcom/google/android/ytremote/backend/browserchannel/UnexpectedReponseCodeException;->code:I

    .line 18
    return-void
.end method


# virtual methods
.method public getCode()I
    .registers 2

    .prologue
    .line 21
    iget v0, p0, Lcom/google/android/ytremote/backend/browserchannel/UnexpectedReponseCodeException;->code:I

    return v0
.end method
