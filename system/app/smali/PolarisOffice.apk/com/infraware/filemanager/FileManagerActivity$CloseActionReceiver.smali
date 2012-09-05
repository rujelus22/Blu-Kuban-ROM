.class public Lcom/infraware/filemanager/FileManagerActivity$CloseActionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FileManagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/filemanager/FileManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CloseActionReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/filemanager/FileManagerActivity;


# direct methods
.method public constructor <init>(Lcom/infraware/filemanager/FileManagerActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 370
    iput-object p1, p0, Lcom/infraware/filemanager/FileManagerActivity$CloseActionReceiver;->this$0:Lcom/infraware/filemanager/FileManagerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 375
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 376
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_13

    .line 378
    const-string v1, "com.infraware.polarisoffice.CLOSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 380
    iget-object v1, p0, Lcom/infraware/filemanager/FileManagerActivity$CloseActionReceiver;->this$0:Lcom/infraware/filemanager/FileManagerActivity;

    invoke-virtual {v1}, Lcom/infraware/filemanager/FileManagerActivity;->finish()V

    .line 383
    :cond_13
    return-void
.end method
