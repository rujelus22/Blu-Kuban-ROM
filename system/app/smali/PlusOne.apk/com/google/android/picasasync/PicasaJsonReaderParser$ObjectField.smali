.class public Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;
.super Ljava/lang/Object;
.source "PicasaJsonReaderParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/picasasync/PicasaJsonReaderParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ObjectField"
.end annotation


# instance fields
.field final columnName:Ljava/lang/String;

.field final type:I


# direct methods
.method constructor <init>(I)V
    .registers 3
    .parameter "type"

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;->columnName:Ljava/lang/String;

    .line 72
    iput p1, p0, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;->type:I

    .line 73
    const/16 v0, 0xa

    if-le p1, v0, :cond_11

    const/4 v0, 0x1

    :goto_d
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 74
    return-void

    .line 73
    :cond_11
    const/4 v0, 0x0

    goto :goto_d
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter "columnName"
    .parameter "type"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;->columnName:Ljava/lang/String;

    .line 65
    iput p2, p0, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;->type:I

    .line 66
    const/16 v0, 0xa

    if-gt p2, v0, :cond_10

    const/4 v0, 0x1

    :goto_c
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 67
    return-void

    .line 66
    :cond_10
    const/4 v0, 0x0

    goto :goto_c
.end method
