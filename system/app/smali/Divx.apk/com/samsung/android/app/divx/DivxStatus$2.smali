.class Lcom/samsung/android/app/divx/DivxStatus$2;
.super Ljava/lang/Object;
.source "DivxStatus.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/divx/DivxStatus;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/divx/DivxStatus;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/divx/DivxStatus;)V
    .registers 2
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/samsung/android/app/divx/DivxStatus$2;->this$0:Lcom/samsung/android/app/divx/DivxStatus;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 7
    .parameter

    .prologue
    .line 82
    new-instance v1, Landroid/drm/DrmManagerClient;

    iget-object v0, p0, Lcom/samsung/android/app/divx/DivxStatus$2;->this$0:Lcom/samsung/android/app/divx/DivxStatus;

    invoke-virtual {v0}, Lcom/samsung/android/app/divx/DivxStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    .line 83
    new-instance v0, Landroid/drm/DrmInfoRequest;

    const/16 v2, 0x1e

    const-string v3, "video/mux/DivX"

    invoke-direct {v0, v2, v3}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 87
    invoke-virtual {v1, v0}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_4c

    .line 90
    const-string v2, "Registration Status"

    invoke-virtual {v0, v2}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 91
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " getDivxState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 92
    const-string v2, "Registered"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 93
    invoke-virtual {v1}, Landroid/drm/DrmManagerClient;->deInitialize()V

    .line 94
    iget-object v0, p0, Lcom/samsung/android/app/divx/DivxStatus$2;->this$0:Lcom/samsung/android/app/divx/DivxStatus;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/divx/DivxStatus;->showDialog(I)V

    .line 101
    :cond_4c
    :goto_4c
    const/4 v0, 0x1

    return v0

    .line 96
    :cond_4e
    invoke-virtual {v1}, Landroid/drm/DrmManagerClient;->deInitialize()V

    .line 97
    iget-object v0, p0, Lcom/samsung/android/app/divx/DivxStatus$2;->this$0:Lcom/samsung/android/app/divx/DivxStatus;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/app/divx/DivxStatus$2;->this$0:Lcom/samsung/android/app/divx/DivxStatus;

    const-class v3, Lcom/samsung/android/app/divx/DivxDeRegistration;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/divx/DivxStatus;->startActivity(Landroid/content/Intent;)V

    goto :goto_4c
.end method
