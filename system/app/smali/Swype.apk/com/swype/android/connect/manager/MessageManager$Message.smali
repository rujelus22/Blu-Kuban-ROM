.class public Lcom/swype/android/connect/manager/MessageManager$Message;
.super Ljava/lang/Object;
.source "MessageManager.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swype/android/connect/manager/MessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Message"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public body:Ljava/lang/String;

.field public language:Ljava/lang/String;

.field public messageId:Ljava/lang/String;

.field public modes:[Ljava/lang/String;

.field public subject:Ljava/lang/String;

.field public target:Ljava/lang/String;

.field public time:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "messageId"
    .parameter "subject"
    .parameter "body"
    .parameter "target"
    .parameter "modes"
    .parameter "time"
    .parameter "language"
    .parameter "url"

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/swype/android/connect/manager/MessageManager$Message;->messageId:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lcom/swype/android/connect/manager/MessageManager$Message;->subject:Ljava/lang/String;

    .line 73
    iput-object p3, p0, Lcom/swype/android/connect/manager/MessageManager$Message;->body:Ljava/lang/String;

    .line 74
    iput-object p4, p0, Lcom/swype/android/connect/manager/MessageManager$Message;->target:Ljava/lang/String;

    .line 75
    iput-object p5, p0, Lcom/swype/android/connect/manager/MessageManager$Message;->modes:[Ljava/lang/String;

    .line 76
    iput-object p7, p0, Lcom/swype/android/connect/manager/MessageManager$Message;->language:Ljava/lang/String;

    .line 77
    iput-object p6, p0, Lcom/swype/android/connect/manager/MessageManager$Message;->time:Ljava/lang/String;

    .line 78
    iput-object p8, p0, Lcom/swype/android/connect/manager/MessageManager$Message;->url:Ljava/lang/String;

    .line 79
    return-void
.end method
