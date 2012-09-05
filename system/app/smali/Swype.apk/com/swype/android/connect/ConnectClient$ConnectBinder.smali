.class public Lcom/swype/android/connect/ConnectClient$ConnectBinder;
.super Landroid/os/Binder;
.source "ConnectClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swype/android/connect/ConnectClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConnectBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/swype/android/connect/ConnectClient;


# direct methods
.method public constructor <init>(Lcom/swype/android/connect/ConnectClient;)V
    .registers 2
    .parameter

    .prologue
    .line 276
    iput-object p1, p0, Lcom/swype/android/connect/ConnectClient$ConnectBinder;->this$0:Lcom/swype/android/connect/ConnectClient;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/swype/android/connect/ConnectClient;
    .registers 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient$ConnectBinder;->this$0:Lcom/swype/android/connect/ConnectClient;

    return-object v0
.end method
