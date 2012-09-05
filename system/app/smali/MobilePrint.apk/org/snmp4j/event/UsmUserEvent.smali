.class public Lorg/snmp4j/event/UsmUserEvent;
.super Ljava/util/EventObject;
.source "UsmUserEvent.java"


# static fields
.field public static final USER_ADDED:I = 0x1

.field public static final USER_CHANGED:I = 0x3

.field public static final USER_REMOVED:I = 0x2

.field private static final serialVersionUID:J = -0x24c8c05d605b76ffL


# instance fields
.field private type:I

.field private user:Lorg/snmp4j/security/UsmUserEntry;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lorg/snmp4j/security/UsmUserEntry;I)V
    .registers 4
    .parameter "source"
    .parameter "changedEntry"
    .parameter "type"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 70
    iput-object p2, p0, Lorg/snmp4j/event/UsmUserEvent;->user:Lorg/snmp4j/security/UsmUserEntry;

    .line 71
    iput p3, p0, Lorg/snmp4j/event/UsmUserEvent;->type:I

    .line 72
    return-void
.end method


# virtual methods
.method public getType()I
    .registers 2

    .prologue
    .line 91
    iget v0, p0, Lorg/snmp4j/event/UsmUserEvent;->type:I

    return v0
.end method

.method public getUser()Lorg/snmp4j/security/UsmUserEntry;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lorg/snmp4j/event/UsmUserEvent;->user:Lorg/snmp4j/security/UsmUserEntry;

    return-object v0
.end method
