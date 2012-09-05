.class Lorg/snmp4j/Snmp$SyncResponseListener;
.super Ljava/lang/Object;
.source "Snmp.java"

# interfaces
.implements Lorg/snmp4j/event/ResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/snmp4j/Snmp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SyncResponseListener"
.end annotation


# instance fields
.field private response:Lorg/snmp4j/event/ResponseEvent;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 1744
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1746
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/snmp4j/Snmp$SyncResponseListener;->response:Lorg/snmp4j/event/ResponseEvent;

    return-void
.end method

.method static access$200(Lorg/snmp4j/Snmp$SyncResponseListener;)Lorg/snmp4j/event/ResponseEvent;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1744
    iget-object v0, p0, Lorg/snmp4j/Snmp$SyncResponseListener;->response:Lorg/snmp4j/event/ResponseEvent;

    return-object v0
.end method

.method static access$202(Lorg/snmp4j/Snmp$SyncResponseListener;Lorg/snmp4j/event/ResponseEvent;)Lorg/snmp4j/event/ResponseEvent;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1744
    iput-object p1, p0, Lorg/snmp4j/Snmp$SyncResponseListener;->response:Lorg/snmp4j/event/ResponseEvent;

    return-object p1
.end method


# virtual methods
.method public getResponse()Lorg/snmp4j/event/ResponseEvent;
    .registers 2

    .prologue
    .line 1754
    iget-object v0, p0, Lorg/snmp4j/Snmp$SyncResponseListener;->response:Lorg/snmp4j/event/ResponseEvent;

    return-object v0
.end method

.method public declared-synchronized onResponse(Lorg/snmp4j/event/ResponseEvent;)V
    .registers 3
    .parameter "event"

    .prologue
    .line 1749
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lorg/snmp4j/Snmp$SyncResponseListener;->response:Lorg/snmp4j/event/ResponseEvent;

    .line 1750
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 1751
    monitor-exit p0

    return-void

    .line 1749
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method
