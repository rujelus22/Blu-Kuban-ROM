.class public Lorg/snmp4j/util/DefaultTimerFactory;
.super Ljava/lang/Object;
.source "DefaultTimerFactory.java"

# interfaces
.implements Lorg/snmp4j/util/TimerFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/snmp4j/util/DefaultTimerFactory$TimerAdapter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method


# virtual methods
.method public createTimer()Lorg/snmp4j/util/CommonTimer;
    .registers 2

    .prologue
    .line 39
    new-instance v0, Lorg/snmp4j/util/DefaultTimerFactory$TimerAdapter;

    invoke-direct {v0, p0}, Lorg/snmp4j/util/DefaultTimerFactory$TimerAdapter;-><init>(Lorg/snmp4j/util/DefaultTimerFactory;)V

    return-object v0
.end method
