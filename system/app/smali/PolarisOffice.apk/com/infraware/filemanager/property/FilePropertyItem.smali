.class public Lcom/infraware/filemanager/property/FilePropertyItem;
.super Ljava/lang/Object;
.source "FilePropertyItem.java"


# instance fields
.field public resImgRes:Landroid/graphics/Bitmap;

.field public strTitle:Ljava/lang/String;

.field public strValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4
    .parameter "strTitle"
    .parameter "strValue"
    .parameter "resImgRes"

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p3, p0, Lcom/infraware/filemanager/property/FilePropertyItem;->resImgRes:Landroid/graphics/Bitmap;

    .line 11
    iput-object p1, p0, Lcom/infraware/filemanager/property/FilePropertyItem;->strTitle:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/infraware/filemanager/property/FilePropertyItem;->strValue:Ljava/lang/String;

    .line 13
    return-void
.end method
