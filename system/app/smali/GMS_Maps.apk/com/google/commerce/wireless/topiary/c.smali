.class public Lcom/google/commerce/wireless/topiary/c;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 198
    const-string v0, "No account information was found, or the specified account no longer exists."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 200
    return-void
.end method
