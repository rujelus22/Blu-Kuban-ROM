.class public Lcom/infraware/common/update/UpdateService$UpdateBinder;
.super Landroid/os/Binder;
.source "UpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/common/update/UpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpdateBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/common/update/UpdateService;


# direct methods
.method public constructor <init>(Lcom/infraware/common/update/UpdateService;)V
    .registers 2
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/infraware/common/update/UpdateService$UpdateBinder;->this$0:Lcom/infraware/common/update/UpdateService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/infraware/common/update/UpdateService;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/infraware/common/update/UpdateService$UpdateBinder;->this$0:Lcom/infraware/common/update/UpdateService;

    return-object v0
.end method
