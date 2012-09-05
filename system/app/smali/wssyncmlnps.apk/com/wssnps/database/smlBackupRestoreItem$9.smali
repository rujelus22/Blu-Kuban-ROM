.class final Lcom/wssnps/database/smlBackupRestoreItem$9;
.super Ljava/lang/Object;
.source "smlBackupRestoreItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wssnps/database/smlBackupRestoreItem;->smlBRRestoreStart()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1401
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .prologue
    .line 1404
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRSMemoRestore()V

    .line 1405
    return-void
.end method
