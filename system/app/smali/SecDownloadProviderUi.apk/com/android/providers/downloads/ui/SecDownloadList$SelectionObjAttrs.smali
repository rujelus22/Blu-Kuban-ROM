.class Lcom/android/providers/downloads/ui/SecDownloadList$SelectionObjAttrs;
.super Ljava/lang/Object;
.source "SecDownloadList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/ui/SecDownloadList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SelectionObjAttrs"
.end annotation


# instance fields
.field private mFileName:Ljava/lang/String;

.field private mMimeType:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "fileName"
    .parameter "mimeType"

    .prologue
    .line 140
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p1, p0, Lcom/android/providers/downloads/ui/SecDownloadList$SelectionObjAttrs;->mFileName:Ljava/lang/String;

    .line 142
    iput-object p2, p0, Lcom/android/providers/downloads/ui/SecDownloadList$SelectionObjAttrs;->mMimeType:Ljava/lang/String;

    .line 143
    return-void
.end method


# virtual methods
.method getFileName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList$SelectionObjAttrs;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method getMimeType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList$SelectionObjAttrs;->mMimeType:Ljava/lang/String;

    return-object v0
.end method
