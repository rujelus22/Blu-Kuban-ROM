.class public Lcom/google/android/apps/plus/iu/Uploader$LocalIoException;
.super Ljava/lang/Exception;
.source "Uploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/iu/Uploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalIoException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1337020075ca20b1L


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2
    .parameter "t"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 70
    return-void
.end method
