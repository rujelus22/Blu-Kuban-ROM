.class final enum Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;
.super Ljava/lang/Enum;
.source "UnzipProgressHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ZipType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DirectoryNotFound:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;

.field private static final synthetic ENUM$VALUES:[Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;

.field public static final enum EOCDNotFound:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;

.field public static final enum Encryption:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;

.field public static final enum Normal:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;

.field public static final enum NotSupported:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 330
    new-instance v0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;

    const-string v1, "Normal"

    invoke-direct {v0, v1, v2}, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;->Normal:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;

    new-instance v0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;

    const-string v1, "Encryption"

    invoke-direct {v0, v1, v3}, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;->Encryption:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;

    new-instance v0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;

    const-string v1, "NotSupported"

    invoke-direct {v0, v1, v4}, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;->NotSupported:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;

    new-instance v0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;

    const-string v1, "EOCDNotFound"

    invoke-direct {v0, v1, v5}, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;->EOCDNotFound:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;

    new-instance v0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;

    const-string v1, "DirectoryNotFound"

    invoke-direct {v0, v1, v6}, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;->DirectoryNotFound:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;

    .line 329
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;

    sget-object v1, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;->Normal:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;->Encryption:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;->NotSupported:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;->EOCDNotFound:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;->DirectoryNotFound:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;->ENUM$VALUES:[Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 329
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;
    .registers 2
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;

    return-object v0
.end method

.method public static values()[Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;->ENUM$VALUES:[Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;

    array-length v1, v0

    new-array v2, v1, [Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
