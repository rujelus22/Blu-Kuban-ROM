.class public Lcom/infraware/filemanager/porting/DRM;
.super Ljava/lang/Object;
.source "DRM.java"


# static fields
.field private static instance:Lcom/infraware/filemanager/porting/DRM;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 6
    const/4 v0, 0x0

    sput-object v0, Lcom/infraware/filemanager/porting/DRM;->instance:Lcom/infraware/filemanager/porting/DRM;

    .line 5
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/infraware/filemanager/porting/DRM;
    .registers 1

    .prologue
    .line 9
    sget-object v0, Lcom/infraware/filemanager/porting/DRM;->instance:Lcom/infraware/filemanager/porting/DRM;

    if-nez v0, :cond_b

    .line 10
    new-instance v0, Lcom/infraware/filemanager/porting/DRM;

    invoke-direct {v0}, Lcom/infraware/filemanager/porting/DRM;-><init>()V

    sput-object v0, Lcom/infraware/filemanager/porting/DRM;->instance:Lcom/infraware/filemanager/porting/DRM;

    .line 12
    :cond_b
    sget-object v0, Lcom/infraware/filemanager/porting/DRM;->instance:Lcom/infraware/filemanager/porting/DRM;

    return-object v0
.end method

.method public static isDRMExt(Ljava/lang/String;)Z
    .registers 2
    .parameter "ext"

    .prologue
    .line 17
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getContentCategory(I)Ljava/lang/String;
    .registers 3
    .parameter "drmContentType"

    .prologue
    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentMimeTypeString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "filename"

    .prologue
    .line 64
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentType(Ljava/lang/String;)I
    .registers 3
    .parameter "filename"

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public getContentTypeString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "filename"

    .prologue
    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDrmContentJudge(I)I
    .registers 3
    .parameter "drmContentType"

    .prologue
    .line 55
    const/4 v0, -0x1

    return v0
.end method

.method public isActionSupported()Z
    .registers 2

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public isDRM(Ljava/lang/String;Landroid/content/Context;)I
    .registers 4
    .parameter "filename"
    .parameter "context"

    .prologue
    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public isForwardlockIconVisible()Z
    .registers 2

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public isIconVisible(Ljava/lang/String;)Z
    .registers 3
    .parameter "fileName"

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method
