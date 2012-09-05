.class public Ljavax/jmdns/impl/NameRegister$UniqueNameAcrossInterface;
.super Ljava/lang/Object;
.source "NameRegister.java"

# interfaces
.implements Ljavax/jmdns/impl/NameRegister;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/NameRegister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UniqueNameAcrossInterface"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkName(Ljava/net/InetAddress;Ljava/lang/String;Ljavax/jmdns/impl/NameRegister$NameType;)Z
    .registers 5
    .parameter "networkInterface"
    .parameter "name"
    .parameter "type"

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public incrementHostName(Ljava/net/InetAddress;Ljava/lang/String;Ljavax/jmdns/impl/NameRegister$NameType;)Ljava/lang/String;
    .registers 5
    .parameter "networkInterface"
    .parameter "name"
    .parameter "type"

    .prologue
    .line 90
    const/4 v0, 0x0

    return-object v0
.end method

.method public register(Ljava/net/InetAddress;Ljava/lang/String;Ljavax/jmdns/impl/NameRegister$NameType;)V
    .registers 4
    .parameter "networkInterface"
    .parameter "name"
    .parameter "type"

    .prologue
    .line 71
    return-void
.end method
