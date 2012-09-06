.class public Lcom/google/android/apps/plus/iu/Uploader$MediaFileUnavailableException;
.super Ljava/lang/Exception;
.source "Uploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/iu/Uploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaFileUnavailableException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x595e5cbc2f7089cfL


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2
    .parameter "t"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 59
    return-void
.end method
