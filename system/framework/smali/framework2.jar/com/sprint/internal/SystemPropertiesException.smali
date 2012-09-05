.class public Lcom/sprint/internal/SystemPropertiesException;
.super Ljava/lang/Exception;
.source "SystemPropertiesException.java"


# static fields
.field private static final serialVersionUID:J = 0x7bc234c68c754f6L


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "s"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 33
    const-string v0, "SystemPropertiesException"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    return-void
.end method
