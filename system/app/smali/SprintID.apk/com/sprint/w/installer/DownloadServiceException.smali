.class public Lcom/sprint/w/installer/DownloadServiceException;
.super Ljava/lang/Exception;
.source "DownloadServiceException.java"


# instance fields
.field code:Lcom/sprint/w/installer/PsiCode;


# direct methods
.method public constructor <init>(Lcom/sprint/w/installer/PsiCode;)V
    .registers 2
    .parameter "code"

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/sprint/w/installer/DownloadServiceException;->code:Lcom/sprint/w/installer/PsiCode;

    .line 12
    return-void
.end method

.method public constructor <init>(Lcom/sprint/w/installer/PsiCode;Ljava/lang/String;)V
    .registers 3
    .parameter "code"
    .parameter "detailMessage"

    .prologue
    .line 15
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 16
    iput-object p1, p0, Lcom/sprint/w/installer/DownloadServiceException;->code:Lcom/sprint/w/installer/PsiCode;

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/sprint/w/installer/PsiCode;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .parameter "code"
    .parameter "detailMessage"
    .parameter "throwable"

    .prologue
    .line 25
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    iput-object p1, p0, Lcom/sprint/w/installer/DownloadServiceException;->code:Lcom/sprint/w/installer/PsiCode;

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/sprint/w/installer/PsiCode;Ljava/lang/Throwable;)V
    .registers 3
    .parameter "code"
    .parameter "throwable"

    .prologue
    .line 20
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 21
    iput-object p1, p0, Lcom/sprint/w/installer/DownloadServiceException;->code:Lcom/sprint/w/installer/PsiCode;

    .line 22
    return-void
.end method


# virtual methods
.method public getCode()I
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sprint/w/installer/DownloadServiceException;->code:Lcom/sprint/w/installer/PsiCode;

    invoke-virtual {v0}, Lcom/sprint/w/installer/PsiCode;->getCode()I

    move-result v0

    return v0
.end method

.method public getPsiCode()Lcom/sprint/w/installer/PsiCode;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sprint/w/installer/DownloadServiceException;->code:Lcom/sprint/w/installer/PsiCode;

    return-object v0
.end method
