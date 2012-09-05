.class public Lcom/sec/android/socialhub/service/model/UploadFileInfo;
.super Ljava/lang/Object;
.source "UploadFileInfo.java"


# instance fields
.field public categoryOwnerID:Ljava/lang/String;

.field public content:Ljava/lang/String;

.field public fail_action:Ljava/lang/String;

.field public fileName:Ljava/lang/String;

.field public pfd:Landroid/os/ParcelFileDescriptor;

.field public spTypeList:[I

.field public tag:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public updateType:I


# direct methods
.method public constructor <init>(I[ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    .registers 10
    .parameter "updateType"
    .parameter "spTypeList"
    .parameter "title"
    .parameter "content"
    .parameter "tag"
    .parameter "fileName"
    .parameter "categoryOwnerID"
    .parameter "pfd"
    .parameter "fail_action"

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/sec/android/socialhub/service/model/UploadFileInfo;->updateType:I

    .line 22
    iput-object p2, p0, Lcom/sec/android/socialhub/service/model/UploadFileInfo;->spTypeList:[I

    .line 23
    iput-object p3, p0, Lcom/sec/android/socialhub/service/model/UploadFileInfo;->title:Ljava/lang/String;

    .line 24
    iput-object p4, p0, Lcom/sec/android/socialhub/service/model/UploadFileInfo;->content:Ljava/lang/String;

    .line 25
    iput-object p5, p0, Lcom/sec/android/socialhub/service/model/UploadFileInfo;->tag:Ljava/lang/String;

    .line 26
    iput-object p6, p0, Lcom/sec/android/socialhub/service/model/UploadFileInfo;->fileName:Ljava/lang/String;

    .line 27
    iput-object p7, p0, Lcom/sec/android/socialhub/service/model/UploadFileInfo;->categoryOwnerID:Ljava/lang/String;

    .line 28
    iput-object p8, p0, Lcom/sec/android/socialhub/service/model/UploadFileInfo;->pfd:Landroid/os/ParcelFileDescriptor;

    .line 29
    iput-object p9, p0, Lcom/sec/android/socialhub/service/model/UploadFileInfo;->fail_action:Ljava/lang/String;

    .line 30
    return-void
.end method
