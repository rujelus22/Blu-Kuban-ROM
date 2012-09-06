.class public Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser$BooleanObjectField;
.super Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser$ObjectField;
.source "PicasaJsonReaderParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "BooleanObjectField"
.end annotation


# instance fields
.field final offValue:I

.field final onValue:I


# virtual methods
.method getValue(Z)I
    .registers 3
    .parameter "onOff"

    .prologue
    .line 78
    if-eqz p1, :cond_5

    iget v0, p0, Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser$BooleanObjectField;->onValue:I

    :goto_4
    return v0

    :cond_5
    iget v0, p0, Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser$BooleanObjectField;->offValue:I

    goto :goto_4
.end method
