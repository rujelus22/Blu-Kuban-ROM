.class public Lcom/google/android/picasasync/PicasaJsonReaderParser$BooleanObjectField;
.super Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;
.source "PicasaJsonReaderParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/picasasync/PicasaJsonReaderParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "BooleanObjectField"
.end annotation


# instance fields
.field final offValue:I

.field final onValue:I


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .registers 5
    .parameter "columnName"
    .parameter "onValue"
    .parameter "offValue"

    .prologue
    .line 85
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;-><init>(Ljava/lang/String;I)V

    .line 86
    iput p2, p0, Lcom/google/android/picasasync/PicasaJsonReaderParser$BooleanObjectField;->onValue:I

    .line 87
    iput p3, p0, Lcom/google/android/picasasync/PicasaJsonReaderParser$BooleanObjectField;->offValue:I

    .line 88
    return-void
.end method


# virtual methods
.method getValue(Z)I
    .registers 3
    .parameter "onOff"

    .prologue
    .line 91
    if-eqz p1, :cond_5

    iget v0, p0, Lcom/google/android/picasasync/PicasaJsonReaderParser$BooleanObjectField;->onValue:I

    :goto_4
    return v0

    :cond_5
    iget v0, p0, Lcom/google/android/picasasync/PicasaJsonReaderParser$BooleanObjectField;->offValue:I

    goto :goto_4
.end method
