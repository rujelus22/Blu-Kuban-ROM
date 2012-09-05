.class Lcom/sec/android/app/myfiles/MediaFile$MediaFileType;
.super Ljava/lang/Object;
.source "MediaFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/myfiles/MediaFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaFileType"
.end annotation


# instance fields
.field description:Ljava/lang/String;

.field fileType:I

.field iconLarge:I

.field iconSmall:I

.field mimeType:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;II)V
    .registers 6
    .parameter "fileType"
    .parameter "mimeType"
    .parameter "desc"
    .parameter "iconSmall"
    .parameter "iconLarge"

    .prologue
    .line 297
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 298
    iput p1, p0, Lcom/sec/android/app/myfiles/MediaFile$MediaFileType;->fileType:I

    .line 299
    iput-object p2, p0, Lcom/sec/android/app/myfiles/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    .line 300
    iput-object p3, p0, Lcom/sec/android/app/myfiles/MediaFile$MediaFileType;->description:Ljava/lang/String;

    .line 301
    iput p4, p0, Lcom/sec/android/app/myfiles/MediaFile$MediaFileType;->iconSmall:I

    .line 302
    iput p5, p0, Lcom/sec/android/app/myfiles/MediaFile$MediaFileType;->iconLarge:I

    .line 303
    return-void
.end method
