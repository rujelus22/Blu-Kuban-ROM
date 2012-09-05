.class public Ljcifs/https/Handler;
.super Ljcifs/http/Handler;
.source "Handler.java"


# static fields
.field public static final DEFAULT_HTTPS_PORT:I = 0x1bb


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljcifs/http/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDefaultPort()I
    .registers 2

    .prologue
    .line 41
    const/16 v0, 0x1bb

    return v0
.end method
