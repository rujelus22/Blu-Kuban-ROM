.class public Lcom/sprint/dsa/UpdateService$LocalBinder;
.super Landroid/os/Binder;
.source "UpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/dsa/UpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/dsa/UpdateService;


# direct methods
.method public constructor <init>(Lcom/sprint/dsa/UpdateService;)V
    .registers 2
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/sprint/dsa/UpdateService$LocalBinder;->this$0:Lcom/sprint/dsa/UpdateService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/sprint/dsa/UpdateService;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sprint/dsa/UpdateService$LocalBinder;->this$0:Lcom/sprint/dsa/UpdateService;

    return-object v0
.end method
