.class public Lcom/sec/android/socialhub/exception/SocialHubNotSupportException;
.super Ljava/lang/Exception;
.source "SocialHubNotSupportException.java"


# static fields
.field private static final serialVersionUID:J = 0x680f2001484aaad6L


# instance fields
.field public errorCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "string"

    .prologue
    const/4 v0, -0x1

    .line 22
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 18
    iput v0, p0, Lcom/sec/android/socialhub/exception/SocialHubNotSupportException;->errorCode:I

    .line 23
    iput v0, p0, Lcom/sec/android/socialhub/exception/SocialHubNotSupportException;->errorCode:I

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter "string"
    .parameter "error"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/socialhub/exception/SocialHubNotSupportException;->errorCode:I

    .line 28
    iput p2, p0, Lcom/sec/android/socialhub/exception/SocialHubNotSupportException;->errorCode:I

    .line 29
    return-void
.end method
