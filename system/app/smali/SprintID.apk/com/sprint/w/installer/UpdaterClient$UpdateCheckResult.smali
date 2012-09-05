.class public Lcom/sprint/w/installer/UpdaterClient$UpdateCheckResult;
.super Ljava/lang/Object;
.source "UpdaterClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/UpdaterClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateCheckResult"
.end annotation


# instance fields
.field public error:Ljava/lang/Exception;

.field public jsonUrl:Ljava/lang/String;

.field public success:Z

.field public updateAvailable:Z

.field public url:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
