.class public Lcom/arcsoft/android/camera/utils/MImageData;
.super Ljava/lang/Object;
.source "MImageData.java"


# instance fields
.field public format:I

.field public height:I

.field public pixels:[B

.field public width:I


# direct methods
.method public constructor <init>(III[B)V
    .registers 5
    .parameter "f"
    .parameter "w"
    .parameter "h"
    .parameter "p"

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/arcsoft/android/camera/utils/MImageData;->format:I

    .line 11
    iput p2, p0, Lcom/arcsoft/android/camera/utils/MImageData;->width:I

    .line 12
    iput p3, p0, Lcom/arcsoft/android/camera/utils/MImageData;->height:I

    .line 13
    iput-object p4, p0, Lcom/arcsoft/android/camera/utils/MImageData;->pixels:[B

    .line 14
    return-void
.end method
