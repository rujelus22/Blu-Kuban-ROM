.class public Lcom/google/android/apps/plus/iu/Uploader$PicasaQuotaException;
.super Ljava/lang/Exception;
.source "Uploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/iu/Uploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PicasaQuotaException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5006ffc7f8346cL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 96
    return-void
.end method
