.class public final enum Lcom/quramsoft/xiv/XIVErrorInfo$XIVResult;
.super Ljava/lang/Enum;
.source "XIVErrorInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quramsoft/xiv/XIVErrorInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "XIVResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/quramsoft/xiv/XIVErrorInfo$XIVResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/quramsoft/xiv/XIVErrorInfo$XIVResult;

.field public static final enum RESULT_ERROR:Lcom/quramsoft/xiv/XIVErrorInfo$XIVResult;

.field public static final enum RESULT_SUCCESS:Lcom/quramsoft/xiv/XIVErrorInfo$XIVResult;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/quramsoft/xiv/XIVErrorInfo$XIVResult;

    const-string v1, "RESULT_SUCCESS"

    invoke-direct {v0, v1, v2}, Lcom/quramsoft/xiv/XIVErrorInfo$XIVResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/quramsoft/xiv/XIVErrorInfo$XIVResult;->RESULT_SUCCESS:Lcom/quramsoft/xiv/XIVErrorInfo$XIVResult;

    .line 8
    new-instance v0, Lcom/quramsoft/xiv/XIVErrorInfo$XIVResult;

    const-string v1, "RESULT_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/quramsoft/xiv/XIVErrorInfo$XIVResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/quramsoft/xiv/XIVErrorInfo$XIVResult;->RESULT_ERROR:Lcom/quramsoft/xiv/XIVErrorInfo$XIVResult;

    .line 5
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/quramsoft/xiv/XIVErrorInfo$XIVResult;

    sget-object v1, Lcom/quramsoft/xiv/XIVErrorInfo$XIVResult;->RESULT_SUCCESS:Lcom/quramsoft/xiv/XIVErrorInfo$XIVResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/quramsoft/xiv/XIVErrorInfo$XIVResult;->RESULT_ERROR:Lcom/quramsoft/xiv/XIVErrorInfo$XIVResult;

    aput-object v1, v0, v3

    sput-object v0, Lcom/quramsoft/xiv/XIVErrorInfo$XIVResult;->ENUM$VALUES:[Lcom/quramsoft/xiv/XIVErrorInfo$XIVResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/quramsoft/xiv/XIVErrorInfo$XIVResult;
    .registers 2
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/quramsoft/xiv/XIVErrorInfo$XIVResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/quramsoft/xiv/XIVErrorInfo$XIVResult;

    return-object v0
.end method

.method public static values()[Lcom/quramsoft/xiv/XIVErrorInfo$XIVResult;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/quramsoft/xiv/XIVErrorInfo$XIVResult;->ENUM$VALUES:[Lcom/quramsoft/xiv/XIVErrorInfo$XIVResult;

    array-length v1, v0

    new-array v2, v1, [Lcom/quramsoft/xiv/XIVErrorInfo$XIVResult;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
