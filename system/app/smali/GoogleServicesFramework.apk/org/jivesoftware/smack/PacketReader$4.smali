.class Lorg/jivesoftware/smack/PacketReader$4;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "PacketReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smack/PacketReader;->handleUnsupportedIqPacket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;J)Lorg/jivesoftware/smack/packet/IQ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smack/PacketReader;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smack/PacketReader;)V
    .registers 2
    .parameter

    .prologue
    .line 1332
    iput-object p1, p0, Lorg/jivesoftware/smack/PacketReader$4;->this$0:Lorg/jivesoftware/smack/PacketReader;

    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    return-void
.end method


# virtual methods
.method public getChildElementXML()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1334
    const/4 v0, 0x0

    return-object v0
.end method
