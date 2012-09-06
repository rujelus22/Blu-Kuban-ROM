.class public Lcom/google/android/apps/plus/iu/Uploader$UnauthorizedException;
.super Ljava/lang/Exception;
.source "Uploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/iu/Uploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnauthorizedException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x67c1af976118ea4bL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2
    .parameter "t"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 85
    return-void
.end method
