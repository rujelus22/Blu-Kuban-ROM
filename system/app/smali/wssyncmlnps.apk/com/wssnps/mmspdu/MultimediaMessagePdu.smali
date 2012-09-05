.class public Lcom/wssnps/mmspdu/MultimediaMessagePdu;
.super Lcom/wssnps/mmspdu/GenericPdu;
.source "MultimediaMessagePdu.java"


# instance fields
.field private mMessageBody:Lcom/wssnps/mmspdu/PduBody;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/wssnps/mmspdu/GenericPdu;-><init>()V

    .line 36
    return-void
.end method

.method constructor <init>(Lcom/wssnps/mmspdu/PduHeaders;)V
    .registers 2
    .parameter "headers"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/wssnps/mmspdu/GenericPdu;-><init>(Lcom/wssnps/mmspdu/PduHeaders;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/wssnps/mmspdu/PduHeaders;Lcom/wssnps/mmspdu/PduBody;)V
    .registers 3
    .parameter "header"
    .parameter "body"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/wssnps/mmspdu/GenericPdu;-><init>(Lcom/wssnps/mmspdu/PduHeaders;)V

    .line 46
    iput-object p2, p0, Lcom/wssnps/mmspdu/MultimediaMessagePdu;->mMessageBody:Lcom/wssnps/mmspdu/PduBody;

    .line 47
    return-void
.end method


# virtual methods
.method public getBody()Lcom/wssnps/mmspdu/PduBody;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/wssnps/mmspdu/MultimediaMessagePdu;->mMessageBody:Lcom/wssnps/mmspdu/PduBody;

    return-object v0
.end method
