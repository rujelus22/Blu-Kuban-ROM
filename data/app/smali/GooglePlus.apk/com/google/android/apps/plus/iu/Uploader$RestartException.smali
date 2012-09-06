.class public Lcom/google/android/apps/plus/iu/Uploader$RestartException;
.super Ljava/lang/Exception;
.source "Uploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/iu/Uploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RestartException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x23be304bee53fe09L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 126
    return-void
.end method
