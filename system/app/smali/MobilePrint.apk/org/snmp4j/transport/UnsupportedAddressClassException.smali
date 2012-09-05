.class public Lorg/snmp4j/transport/UnsupportedAddressClassException;
.super Lorg/snmp4j/MessageException;
.source "UnsupportedAddressClassException.java"


# static fields
.field private static final serialVersionUID:J = -0xc0004a9c5f33d7cL


# instance fields
.field private addressClass:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 3
    .parameter "message"
    .parameter "addressClass"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lorg/snmp4j/MessageException;-><init>(Ljava/lang/String;)V

    .line 42
    iput-object p2, p0, Lorg/snmp4j/transport/UnsupportedAddressClassException;->addressClass:Ljava/lang/Class;

    .line 43
    return-void
.end method


# virtual methods
.method public getAddressClass()Ljava/lang/Class;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lorg/snmp4j/transport/UnsupportedAddressClassException;->addressClass:Ljava/lang/Class;

    return-object v0
.end method
