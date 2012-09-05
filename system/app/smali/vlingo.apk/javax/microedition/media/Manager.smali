.class public Ljavax/microedition/media/Manager;
.super Ljava/lang/Object;
.source "Manager.java"


# static fields
.field static m_player:Ljavax/microedition/media/Player;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    new-instance v0, Ljavax/microedition/media/Player;

    invoke-direct {v0}, Ljavax/microedition/media/Player;-><init>()V

    sput-object v0, Ljavax/microedition/media/Manager;->m_player:Ljavax/microedition/media/Player;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createPlayer(Ljava/io/InputStream;Ljava/lang/String;)Ljavax/microedition/media/Player;
    .registers 3
    .parameter "inputStream"
    .parameter "type"

    .prologue
    .line 16
    sget-object v0, Ljavax/microedition/media/Manager;->m_player:Ljavax/microedition/media/Player;

    return-object v0
.end method

.method public static createPlayer(Ljava/lang/String;)Ljavax/microedition/media/Player;
    .registers 2
    .parameter "locator"

    .prologue
    .line 13
    sget-object v0, Ljavax/microedition/media/Manager;->m_player:Ljavax/microedition/media/Player;

    return-object v0
.end method
