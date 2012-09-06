.class public Loauth/signpost/exception/OAuthMessageSignerException;
.super Loauth/signpost/exception/OAuthException;


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .registers 2

    invoke-direct {p0, p1}, Loauth/signpost/exception/OAuthException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Loauth/signpost/exception/OAuthException;-><init>(Ljava/lang/String;)V

    return-void
.end method
