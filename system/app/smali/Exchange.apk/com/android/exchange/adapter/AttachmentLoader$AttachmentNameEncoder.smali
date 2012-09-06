.class Lcom/android/exchange/adapter/AttachmentLoader$AttachmentNameEncoder;
.super Lcom/android/exchange/utility/UriCodec;
.source "AttachmentLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/AttachmentLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AttachmentNameEncoder"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/android/exchange/utility/UriCodec;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/exchange/adapter/AttachmentLoader$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/android/exchange/adapter/AttachmentLoader$AttachmentNameEncoder;-><init>()V

    return-void
.end method


# virtual methods
.method protected isRetained(C)Z
    .registers 3
    .parameter "c"

    .prologue
    .line 166
    const/16 v0, 0x5f

    if-eq p1, v0, :cond_10

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_10

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_10

    const/16 v0, 0x2e

    if-ne p1, v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method
