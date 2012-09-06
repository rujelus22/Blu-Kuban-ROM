.class public abstract Lcom/google/android/apps/googlevoice/CallConduit$Call;
.super Ljava/lang/Object;
.source "CallConduit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/CallConduit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Call"
.end annotation


# instance fields
.field private destination:Ljava/lang/String;

.field private isPrepared:Z

.field private onAuthenticationFailure:Landroid/os/Message;

.field private onFailure:Landroid/os/Message;

.field private onSuccess:Landroid/os/Message;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Landroid/os/Message;Landroid/os/Message;Landroid/os/Message;)V
    .registers 6
    .parameter "destination"
    .parameter "onSuccess"
    .parameter "onFailure"
    .parameter "onAuthenticationFailure"

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/CallConduit$Call;->destination:Ljava/lang/String;

    .line 92
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/CallConduit$Call;->onSuccess:Landroid/os/Message;

    .line 93
    iput-object p3, p0, Lcom/google/android/apps/googlevoice/CallConduit$Call;->onFailure:Landroid/os/Message;

    .line 94
    iput-object p4, p0, Lcom/google/android/apps/googlevoice/CallConduit$Call;->onAuthenticationFailure:Landroid/os/Message;

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/CallConduit$Call;->isPrepared:Z

    .line 96
    return-void
.end method


# virtual methods
.method public abstract abandon()V
.end method

.method public abstract complete()V
.end method

.method public getDestination()Ljava/lang/String;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallConduit$Call;->destination:Ljava/lang/String;

    return-object v0
.end method

.method public isPrepared()Z
    .registers 2

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/google/android/apps/googlevoice/CallConduit$Call;->isPrepared:Z

    return v0
.end method

.method public onAuthenticationFailure()V
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallConduit$Call;->onAuthenticationFailure:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 113
    return-void
.end method

.method public onFailure()V
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallConduit$Call;->onFailure:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 109
    return-void
.end method

.method public onSuccess()V
    .registers 2

    .prologue
    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/CallConduit$Call;->isPrepared:Z

    .line 104
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallConduit$Call;->onSuccess:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 105
    return-void
.end method
