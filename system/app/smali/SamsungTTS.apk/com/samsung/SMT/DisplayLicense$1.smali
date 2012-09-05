.class Lcom/samsung/SMT/DisplayLicense$1;
.super Landroid/os/Handler;
.source "DisplayLicense.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/SMT/DisplayLicense;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/SMT/DisplayLicense;


# direct methods
.method constructor <init>(Lcom/samsung/SMT/DisplayLicense;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/SMT/DisplayLicense$1;->this$0:Lcom/samsung/SMT/DisplayLicense;

    .line 150
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 155
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 157
    iget v1, p1, Landroid/os/Message;->what:I

    if-nez v1, :cond_11

    .line 159
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 160
    .local v0, szText:Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/SMT/DisplayLicense$1;->this$0:Lcom/samsung/SMT/DisplayLicense;

    #calls: Lcom/samsung/SMT/DisplayLicense;->showPageOfText(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/samsung/SMT/DisplayLicense;->access$1(Lcom/samsung/SMT/DisplayLicense;Ljava/lang/String;)V

    .line 168
    .end local v0           #szText:Ljava/lang/String;
    :goto_10
    return-void

    .line 165
    :cond_11
    const-string v1, "Samsung TTS"

    const-string v2, "The system property for the license file is empty."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method
