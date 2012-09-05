.class public Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
.super Ljava/lang/Exception;
.source "SocialHubGeneralException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public errorCode:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    const-string v0, "General Exception"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;->errorCode:I

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter "detailMessage"
    .parameter "err"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;->errorCode:I

    .line 26
    iput p2, p0, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;->errorCode:I

    .line 27
    return-void
.end method
