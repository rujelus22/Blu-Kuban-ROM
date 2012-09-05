.class public Lcom/android/internal/telephony/DataConnection$DisconnectParams;
.super Ljava/lang/Object;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DisconnectParams"
.end annotation


# instance fields
.field public onCompletedMsg:Landroid/os/Message;

.field public reason:Ljava/lang/String;

.field public tag:I

.field public userObj:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/os/Message;Ljava/lang/Object;)V
    .registers 3
    .parameter "onCompletedMsg"
    .parameter "userObj"

    .prologue
    .line 137
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnection$DisconnectParams;->onCompletedMsg:Landroid/os/Message;

    .line 139
    iput-object p2, p0, Lcom/android/internal/telephony/DataConnection$DisconnectParams;->userObj:Ljava/lang/Object;

    .line 140
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .parameter "reason"
    .parameter "onCompletedMsg"

    .prologue
    .line 131
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnection$DisconnectParams;->reason:Ljava/lang/String;

    .line 133
    iput-object p2, p0, Lcom/android/internal/telephony/DataConnection$DisconnectParams;->onCompletedMsg:Landroid/os/Message;

    .line 134
    return-void
.end method
