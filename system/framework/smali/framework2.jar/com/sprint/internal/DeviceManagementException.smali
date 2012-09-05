.class public Lcom/sprint/internal/DeviceManagementException;
.super Ljava/lang/Exception;
.source "DeviceManagementException.java"


# static fields
.field private static final serialVersionUID:J = 0x3L


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "s"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 32
    const-string v0, "DeviceManagementException"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    return-void
.end method
