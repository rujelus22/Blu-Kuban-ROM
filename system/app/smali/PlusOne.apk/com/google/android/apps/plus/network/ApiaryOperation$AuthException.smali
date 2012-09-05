.class public final Lcom/google/android/apps/plus/network/ApiaryOperation$AuthException;
.super Ljava/lang/Exception;
.source "ApiaryOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/network/ApiaryOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AuthException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xf1763c4a4a6bd0eL


# direct methods
.method public constructor <init>(Ljava/io/IOException;)V
    .registers 2
    .parameter "e"

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 91
    return-void
.end method
