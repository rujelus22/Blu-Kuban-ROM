.class public Lcom/quramsoft/xiv/XIVErrorInfo;
.super Ljava/lang/Object;
.source "XIVErrorInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/quramsoft/xiv/XIVErrorInfo$XIVResult;
    }
.end annotation


# instance fields
.field private mResult:Lcom/quramsoft/xiv/XIVErrorInfo$XIVResult;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 4
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    sget-object v0, Lcom/quramsoft/xiv/XIVErrorInfo$XIVResult;->RESULT_SUCCESS:Lcom/quramsoft/xiv/XIVErrorInfo$XIVResult;

    iput-object v0, p0, Lcom/quramsoft/xiv/XIVErrorInfo;->mResult:Lcom/quramsoft/xiv/XIVErrorInfo$XIVResult;

    .line 4
    return-void
.end method

.method public static final createXIVErrorInfo()Lcom/quramsoft/xiv/XIVErrorInfo;
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/quramsoft/xiv/XIVErrorInfo;

    invoke-direct {v0}, Lcom/quramsoft/xiv/XIVErrorInfo;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getResult()Lcom/quramsoft/xiv/XIVErrorInfo$XIVResult;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/quramsoft/xiv/XIVErrorInfo;->mResult:Lcom/quramsoft/xiv/XIVErrorInfo$XIVResult;

    return-object v0
.end method

.method public setResult(Lcom/quramsoft/xiv/XIVErrorInfo$XIVResult;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/quramsoft/xiv/XIVErrorInfo;->mResult:Lcom/quramsoft/xiv/XIVErrorInfo$XIVResult;

    .line 25
    return-void
.end method
